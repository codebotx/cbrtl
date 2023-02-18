---
author: Anubhab Patnaik
title: 'QTree'
date: "2023-02-14"
description: "Inspired by KoalasToTheMax, QTree is a short live demonstration of image compression and decompression using Quadtrees, that partitions a two-dimensional image by recursively subdividing it into four quadrants."
tags: ["project"]
ShowBreadCrumbs: true 
---



{{< rawhtml >}}
	<div class="container" style="text-align: center;">
		<hr />
		<canvas id="canvas-2"></canvas>
		<br>
		<canvas id="canvas-1"> </canvas>
		<br>
		<input type="range" id="slider" min="0" max="100" value="0">
		<br>
	</div>
{{< /rawhtml >}}


{{< rawhtml >}}
<script type="module" src="/js/qtree/index.js" ></script>
<script type="module" src="/js/qtree/qdtree.js" ></script>
{{< /rawhtml >}}