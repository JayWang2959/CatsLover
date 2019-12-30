<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>JS Bin</title>

    <link type="text/css" rel="stylesheet" href="css/CatsImages.css">
</head>
<body>
<div class="container">
    <!--缩略图列表-->
    <ul class="gallery-wrapper">
        <li>
            <a href="#image-1">
                <img src="images/1.jpg">
            </a>
        </li>
        <li>
            <a href="#image-2">
                <img src="images/2.jpg">
            </a>
        </li>
        <li>
            <a href="#image-3">
                <img src="images/3.jpg">
            </a>
        </li>
        <li>
            <a href="#image-4">
                <img src="images/4.jpg">
            </a>
        </li>
        <li>
            <a href="#image-5">
                <img src="images/g5.jpg">
            </a>
        </li>
        <li>
            <a href="#image-6">
                <img src="images/g6.jpg">
            </a>
        </li>
        <li>
            <a href="#image-7">
                <img src="images/a1.jpg">
            </a>
        </li>
        <li>
            <a href="#image-8">
                <img src="images/a2.jpg">
            </a>
        </li>
    </ul>
    <!--大图容器-->
    <div class="hidden-images-wrapper">
        <div id="image-1">
            <img src="images/1.jpg">
            <a class="img-prev" href="#image-8">PREV</a>
            <a class="img-next" href="#image-2">NEXT</a>
            <a class="img-close" href="#"></a>
        </div>
        <div id="image-2">
            <img src="images/2.jpg">
            <a class="img-prev" href="#image-1">PREV</a>
            <a class="img-next" href="#image-3">NEXT</a>
            <a class="img-close" href="#"></a>
        </div>
        <div id="image-3">
            <img src="images/3.jpg">
            <a class="img-prev" href="#image-2">PREV</a>
            <a class="img-next" href="#image-4">NEXT</a>
            <a class="img-close" href="#"></a>
        </div>
        <div id="image-4">
            <img src="images/4.jpg">
            <a class="img-prev" href="#image-3">PREV</a>
            <a class="img-next" href="#image-5">NEXT</a>
            <a class="img-close" href="#"></a>
        </div>
        <div id="image-5">
            <img src="images/g5.jpg">
            <a class="img-prev" href="#image-4">PREV</a>
            <a class="img-next" href="#image-6">NEXT</a>
            <a class="img-close" href="#"></a>
        </div>
        <div id="image-6">
            <img src="images/g6.jpg">
            <a class="img-prev" href="#image-5">PREV</a>
            <a class="img-next" href="#image-7">NEXT</a>
            <a class="img-close" href="#"></a>
        </div>
        <div id="image-7">
            <img src="images/a1.jpg">
            <a class="img-prev" href="#image-6">PREV</a>
            <a class="img-next" href="#image-8">NEXT</a>
            <a class="img-close" href="#"></a>
        </div>
        <div id="image-8">
            <img src="images/a2.jpg">
            <a class="img-prev" href="#image-7">PREV</a>
            <a class="img-next" href="#image-1">NEXT</a>
            <a class="img-close" href="#"></a>
        </div>
    </div>
</div>
</body>
</html>