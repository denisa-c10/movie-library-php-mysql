<?php require_once('includes/header.php'); ?>

<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Verdana, sans-serif;
        }

        .mySlides {
            opacity: 0;
            position: absolute;
            width: 100%;
            transition: opacity 1s ease-in-out;
        }

        .mySlides.active-slide {
            opacity: 1;
        }

        img {
            vertical-align: middle;
        }


        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }


        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        .dot {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

        .active {
            background-color: #ffffffff;
        }

        .fade {
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        @media only screen and (max-width: 300px) {
            .text {
                font-size: 11px
            }
        }

        .gallery-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 15px;
        }

        .gallery-item {
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .gallery-item img {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.3s ease;
        }

        .gallery-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.2);
        }

        .gallery-item:hover img {
            transform: scale(1.05);
        }
    </style>
</head>

<body>

    <div class="slideshow-container">

        <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
            <img src="img/banner1.png" style="width:100%">
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2 / 3</div>
            <img src="img/banner2.png" style="width:100%">
        </div>

        <div class="mySlides fade">
            <div class="numbertext">3 / 3</div>
            <img src="img/banner3.png" style="width:100%">
        </div>

    </div>
    <br>

    <div style="text-align:center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>

    <script>
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");

            for (let i = 0; i < slides.length; i++) {
                slides[i].classList.remove("active-slide");
            }

            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1;
            }

            for (let i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }

            slides[slideIndex - 1].classList.add("active-slide");
            dots[slideIndex - 1].className += " active";

            setTimeout(showSlides, 1000);
        }
    </script>
    <br><br><br><br><br><br><br><br><br><br><br>
    <div class="gallery-container">
        <div class="gallery-item">
            <img src="img/gallery1.jpg" alt="Gallery Image 1">
        </div>
        <div class="gallery-item">
            <img src="img/gallery2.jpg" alt="Gallery Image 2">
        </div>
        <div class="gallery-item">
            <img src="img/gallery3.jpg" alt="Gallery Image 3">
        </div>
        <div class="gallery-item">
            <img src="img/gallery4.jpg" alt="Gallery Image 4">
        </div>
        <div class="gallery-item">
            <img src="img/gallery5.jpg" alt="Gallery Image 5">
        </div>
        <div class="gallery-item">
            <img src="img/gallery6.jpg" alt="Gallery Image 6">
        </div>
        <div class="gallery-item">
            <img src="img/gallery7.jpg" alt="Gallery Image 5">
        </div>
        <div class="gallery-item">
            <img src="img/gallery8.jpg" alt="Gallery Image 6">
        </div>
    </div>
</body>
<?php require_once('includes/footer.php'); ?>