---
author: Anubhab Patnaik
title: 'QTree'
date: "2023-02-14"
description: "Inspired by KoalasToTheMax, QTree is a short live demonstration of image compression and decompression using Quadtrees, that partitions a two-dimensional image by recursively subdividing it into four quadrants."
tags: ["project"]
ShowBreadCrumbs: true 
---
I was going through a blogpost on some of the most exciting webpages built for fun and came across  [KoalasToTheMax](https://koalastothemax.com/), and I was fascinated by it. [Srijan](https://injuly.in/) explained me how it works, and then we were inspired to build something similar.

Before we get into the details of how it works, let's have a brief look at the basic data structures used in this project.

## Quadtree

A quadtree is a tree-based data structure where each node as exactly four leaf nodes. All forms of quadtrees share some common features:

- They decompose space into adaptable cells
- Each cell (or bucket) has a maximum capacity. When maximum capacity is reached, the bucket splits
- The tree directory follows the spatial decomposition of the quadtree.

The region quadtree represents a partition of space in two dimensions by decomposing the region into four equal quadrants, subquadrants, and so on with each leaf node containing data corresponding to a specific subregion. Each node in the tree either has exactly four children, or has no children (a leaf node). The height of quadtrees that follow this decomposition strategy (i.e. subdividing subquadrants as long as there is interesting data in the subquadrant for which more refinement is desired) is sensitive to and dependent on the spatial distribution of interesting areas in the space being decomposed. 

![quadtree](https://upload.wikimedia.org/wikipedia/commons/a/a0/Quad_tree_bitmap.svg)


### Bounding Box (aabb box)

Each node has a bounding box associated with it, which subdivides the root's bounding box into four quadrants. The root node has the entire image as its bounding box. The leaf nodes are the pixels of the image. The tree is built by recursively subdividing the parent's bounding box into four quadrants. The tree is traversed in a depth-first manner, and the pixels are colored according to the leaf node's bounding box.

### Image Compression

The root node is the entire image, and each leaf node is a single pixel. The tree is recursively subdivided until each leaf node is a single pixel. The tree is then traversed to compress the image. The tree is traversed again to decompress the image.

Try to hover over a node to divide it into four quadrants. 


{{< rawhtml >}}
<div class="container" style="text-align: center;">
	<canvas id="canvas-2"  style="border: 1px solid black;"	></canvas>
</div>
{{< /rawhtml >}}

The slider controls the depth of the tree. The slider is set to 0 by default, which means the entire image is compressed into a single pixel. The slider is set to 100 by default, which means the image is decompressed to its original size.

{{< rawhtml >}}
<div class="container" style="text-align: center;">
	<canvas id="canvas-1" style="border: 1px solid black;"> </canvas>
	<br>
	<input type="range" id="slider" min="0" max="100" value="0">
	<br>
</div>
{{< /rawhtml >}}


{{< rawhtml >}}
<script type="module" src="/blog/js/qtree/index.js" ></script>
<script type="module" src="/blog/js/qtree/qdtree.js" ></script>
{{< /rawhtml >}}

*Ref: [Wikipedia](https://en.wikipedia.org/wiki/Quadtree)*
