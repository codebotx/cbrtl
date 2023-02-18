---
author: Anubhab Patnaik
title: 'QTree'
date: "2023-02-14"
description: "Inspired by KoalasToTheMax, QTree is a short live demonstration of image compression and decompression using Quadtrees that partition a two-dimensional image by recursively subdividing it into four quadrants."
tags: ["project"]
ShowBreadCrumbs: true 
---
I was going through a blog post on some of the most exciting web pages built for fun and came across  [KoalasToTheMax](https://koalastothemax.com/), and I was fascinated by it. [Srijan](https://injuly.in/) explained to me how it works, and then we were inspired to build something similar.

Before we get into the demonstration and the details of how it works, let's have a brief look at the basic data structures used in this project.

## Quadtree

A quadtree is a tree-based data structure where each node has exactly four child nodes. Our quadtree represents a partition of space in two dimensions by decomposing the region into four equal quadrants. Each quadrant is then subdivided into four equal quadrants, and so on. Each node in the tree either has exactly four children or has no children (a leaf node). The height of quadtrees is sensitive to and dependent on the amount of interesting data in the space being decomposed.

![quadtree](https://upload.wikimedia.org/wikipedia/commons/a/a0/Quad_tree_bitmap.svg)

The root node is the image. Each node is the average value of all its children's pixel values. The tree is recursively subdivided until each leaf node is a single pixel. The tree is then traversed to compress the image. The tree is traversed again to decompress the image.


### Member Functions

Our quadtree has the following member functions:
- **compressImageData** : compresses the image data. Takes the image data and the compression factor as the input and returns the quadtree.
- **createQTreeOfHeight** : curates the quadtree. Takes the height of the tree and the bounding box as the input and returns the quadtree.
- **populate** : populates the quadtree with the pixel values. Takes the quadtree and the image data as the input and returns the quadtree.
- **getRGBValuesFromCoordinates** : returns the pixel value at the given coordinates. Takes the quadtree and the coordinates as the input and returns the pixel value.


### Node

The QTNODE class represents a node in the quadtree. It has the following properties:
- **x** : x-coordinate of the top-left corner of the bounding box.
- **y** : y-coordinate of the top-left corner of the bounding box.
- **w** : width of the bounding box.
- **h** : height of the bounding box.
- **children** : array of four children.
- **rgb** : pixel value of the node.

Functions:

- **draw** : draws the node. Takes the canvas context as the input and returns nothing.
- **insert**: inserts a node into the quadtree. Takes the quadtree and the node as the input and returns the quadtree.
- **drawAtHeight**: draws the nodes at a given height. Takes the canvas context, the height of the tree, and the current height as the input and returns nothing.
- **draw**: draws the nodes. Takes the canvas context and the height of the tree as the input and returns nothing.
- **reveal**: reveals the nodes. Takes the canvas context and the height of the tree as the input and returns nothing.
- **computeAverageColor**: computes the average color of the node. Takes the quadtree and the image data as the input and returns the pixel value.

## Demonstration

{{< rawhtml >}}
<div class="container" style="text-align: center;">
	<canvas id="canvas-2"  style="border: 1px solid black;"	>
	</canvas>
	<br>
	
Hover over any part of the canvas to recursively divide it into four quadrants.
</div>
{{< /rawhtml >}}


{{< rawhtml >}}
<div class="container" style="text-align: center;">
	<canvas id="canvas-1" style="border: 1px solid black;"> </canvas>
	<br>
	<input type="range" id="slider" min="0" max="100" value="0">
	<br>

The slider controls the depth of the tree.
</div>
 The slider is set to 0 by default, which means the entire image is compressed into a single pixel. The slider when set to 100 means the image is not compressed at all. The slider can be set to any value between 0 and 100.
{{< /rawhtml >}}


{{< rawhtml >}}
<script type="module" src="/blog/js/qtree/index.js" ></script>
<script type="module" src="/blog/js/qtree/qdtree.js" ></script>
{{< /rawhtml >}}

## Working 

The image is loaded into a canvas. We have two canvases, one for you to hover over and the other for you to control the depth of the tree using a slider and render the nodes evenly. Initially, we had multiple ways to taking an image as the input form the user, such as uploading an image, using query parameters, etc., but for the purpose of this demonstration, we decided to keep it simple and use a static image.


```js
const image = new Image();
img.src = "/blog/assets/images/qtree/cryptopunk.jpeg";
img.onload = () => {
    initSliderCanvas(img);
    initMouseCanvas(img);
};
```

I'll go ahead and explain the working of the mouse hover canvas and you can explore the slider canvas. Source codes are available on [Github](https://github.com/cbrtl/qd-compression). 


```js
import { compressImageData } from "./qdtree.js";
function initMouseCanvas(img){
	const canvas = document.getElementById("canvas-2");
    const ctx = canvas.getContext("2d");

    const imageData = readImageDataUsingCanvas(canvas, ctx, image);
    const qTree = compressImageData(imageData, 1);
    qTree.draw(ctx);
	...
}
```

### Image Data Compression


We import the `compressImageData` function from the `qdtree.js` file. This function takes the image data and the compression factor as the input and returns the quadtree. The **height of the tree** is calculated by taking the log of the number of pixels in the image and dividing it by the log of 4. The log of 4 is 2, and the log of the number of pixels is the height of the tree. The height of the tree is then rounded down to the nearest integer. The tree is then created using the `createQTreeOfHeight` function that takes the height of the tree and the **bounding box** as the input and returns the quadtree.

**qdtree.js**
```js
export function compressImageData(imageData, factor) {
  const { width, height } = imageData;
  const newWidth = Math.ceil(width / factor);
  const newHeight = Math.ceil(height / factor);

  const qTreeHeight = Math.floor(Math.log(newWidth * newHeight) / Math.log(4));

  const qTree = createQTreeOfHeight(qTreeHeight, {
    x: 0,
    y: 0,
    w: width,
    h: height,
  });

  populate(qTree, imageData);
  return qTree;
}
```
The `createQTreeOfHeight` function takes in the height of the tree and the bounding box as the input and returns the quadtree. 

#### Bounding Box

The bounding box is the area that the node represents. The bounding box is initially the entire image. The bounding box is then divided into four equal quadrants, and the process is repeated until the height of the tree is 0. The `populate` function takes the quadtree and the image data as the input and populates the tree with the average pixel values of the children's pixel values.

```js
 function createQTreeOfHeight(height, aabb) {
  function recursiveCreate(node, height) {
    if (height === 0) return;

    const { x, y, w, h } = node.aabb;
    const halfW = w / 2;
    const halfH = h / 2;


	//top left
    node.tl = new QTNode({
      x,
      y,
      w: halfW,
      h: halfH,
    });
		//top right
    node.tr = new QTNode({
      x: x + halfW,
      y,
      w: halfW,
      h: halfH,
    });
		//bottom left
    node.bl = new QTNode({
      x,
      y: y + halfH,
      w: halfW,
      h: halfH,
    });
		//bottom right
    node.br = new QTNode({
      x: x + halfW,
      y: y + halfH,
      w: halfW,
      h: halfH,
    });

    recursiveCreate(node.tl, height - 1);
    recursiveCreate(node.tr, height - 1);
    recursiveCreate(node.bl, height - 1);
    recursiveCreate(node.br, height - 1);
  }
 }
```

### Image data to Quadtree

The `reveal` function takes the x and y coordinates of the mouse as the input and reveals the nodes that are under the mouse. The `draw` function draws the nodes on the canvas. The `update` function is called every 30 milliseconds to update the canvas. The `update` function clears the canvas and draws the nodes on the canvas. The `update` function is called every 30 milliseconds to update the canvas. The `update` function clears the canvas and draws the nodes on the canvas.

```js
function initMouseCanvas(img){
	...
 const mousePos = { x: 0, y: 0 };
    let lastUpdateTime = -Infinity;
    const frameTime = 30;

    function update() {
        const currentTime = Date.now();
        const diff = currentTime - lastUpdateTime;
        if (diff < frameTime) return;

        lastUpdateTime = currentTime;
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        qTree.reveal(mousePos.x, mousePos.y);
        qTree.draw(ctx);
    }

    canvas.addEventListener("mousemove", (e) => {
        const rect = canvas.getBoundingClientRect();
        const x = e.clientX - rect.left;
        const y = e.clientY - rect.top;
        mousePos.x = x;
        mousePos.y = y;
        update();
    });
}
```


*Ref: [Wikipedia](https://en.wikipedia.org/wiki/Quadtree)*
