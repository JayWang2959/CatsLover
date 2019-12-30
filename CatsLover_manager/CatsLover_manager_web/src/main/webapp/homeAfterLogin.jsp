<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" pageEncoding ="UTF-8" language="java" %>
<html lang="en">

<head>
    <title>CatsLover</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--// bootstrap-css -->
    <!-- css -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!--// css -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- font -->
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
    <!-- //font -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <script src="https://kit.fontawesome.com/941d293b27.js" crossorigin="anonymous"></script>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
</head>
<body>

<%-- 登录后的悬浮窗 --%>
<div class="contact-info">
    <div class="option">
        <a href="/userCenter">
            <i class="fas fa-user"></i>
            <div class="text">
                <%out.println(session.getAttribute("USERID"));%>
            </div>
        </a>
    </div>

    <div class="option">
        <i class="fas fa-address-book"></i>
        <div class="text">我的关注</div>
    </div>

    <div class="option">
        <a href="/logout">
            <i class="fas fa-sign-out-alt"></i>
            <div class="text">注销</div>
        </a>
    </div>
</div>


<!-- banner -->
<div class="banner">
    <div class="header">
        <div class="container">
            <div class="header-left">
                <div class="w3layouts-logo">
                    <h1>
                        <a href="index.html">Cats<span>Lover</span></a>
                    </h1>
                </div>
            </div>
            <div class="header-right">
                <div class="top-nav">
                    <nav class="navbar navbar-default">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li>&nbsp;&nbsp;&nbsp;</li>
                                <li><a class="active" href="homeAfterLogin.jsp">主页</a></li>
                                <li><a href="about.html">关于</a></li>
                                <!--									<li class=""><a href="#" class="dropdown-toggle hvr-bounce-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Codes<span class="caret"></span></a>-->
                                <!--										<ul class="dropdown-menu">-->
                                <!--											<li><a class="hvr-bounce-to-bottom" href="../../../Downloads/moban1900/icons.html">Icons</a></li>-->
                                <!--											<li><a class="hvr-bounce-to-bottom" href="../../../Downloads/moban1900/typography.html">Typography</a></li>-->
                                <!--										</ul>-->
                                <!--									</li>-->
                                <li ><a href="gallery.html">图片</a></li>
                                <li><a href="../../../Downloads/moban1900/contact.html">Contact</a></li>
                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                            </ul>
                            <div class="clearfix"> </div>
                        </div>
                    </nav>
                </div>

                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="w3layouts-banner-slider">
        <div class="container">
            <div class="slider">
                <div class="callbacks_container">
                    <ul class="rslides callbacks callbacks1" id="slider4">
                        <li>
                            <div class="agileits-banner-info">
                                <h3>给最好的你 <span>你最爱的猫猫</span></h3>
                            </div>
                        </li>
                        <li>
                            <div class="agileits-banner-info">
                                <h3>给最好的你<span>推荐志同道合的爱猫人</span></h3>
                                <div class="w3-button">
                                    <a href="votepage.jsp">More</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <script src="js/responsiveslides.min.js"></script>
                <script>
                    // You can also use "$(window).load(function() {"
                    $(function () {
                        // Slideshow 4
                        $("#slider4").responsiveSlides({
                            auto: true,
                            pager:true,
                            nav:true,
                            speed: 500,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                            },
                            after: function () {
                                $('.events').append("<li>after event fired.</li>");
                            }
                        });

                    });
                </script>
                <!--banner Slider starts Here-->
            </div>
        </div>
    </div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div class="welcome">
    <div class="container">
        <div class="w3ls-heading">
            <h2>Welcome To Our Cat club</h2>
        </div>
        <div class="welcome-grids">
            <div class="col-md-6 agile-welcome-grid">
                <div class="grid">
                    <div class="col-md-6 agileits-left">
                        <figure class="effect-chico">
                            <img src="images/2.jpg" alt="" />
                            <figcaption>
                                <h4>Proin nulla</h4>
                                <p>Chico's main fear was missing the morning bus.</p>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="col-md-6 agileits-left">
                        <figure class="effect-chico">
                            <img src="images/3.jpg" alt=" " />
                            <figcaption>
                                <h4>Nam ornare</h4>
                                <p>Chico's main fear was missing the morning bus.</p>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="col-md-6 agileinfo-welcome-right">
                <h4>Donec posuere cursus nibh. Mauris a sollicitudin metus. Mauris porttitor, dui maximus viverra bibendum</h4>
                <p>Nulla massa magna, luctus at justo et, euismod convallis mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris rutrum fringilla fermentum.<span>Donec tincidunt, eros quis consectetur maximus, nibh justo pretium diam, id vehicula lacus nunc eu orci. Aliquam molestie, nibh vitae pharetra semper, nunc nisi laoreet diam, et placerat nulla quam non leo. </span></p>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- banner-bottom -->
<!-- services -->
<div class="services">
    <div class="container">
        <div class="w3ls-heading">
            <h3>Services</h3>
        </div>
        <div class="wthree-services-grids">
            <div class="col-md-6 w3ls-about-left">
                <div class="agileits-icon-grid">
                    <div class="icon-left hvr-radial-out">
                        <i class="fa fa-cog" aria-hidden="true"></i>
                    </div>
                    <div class="icon-right">
                        <h5>Suspendisse consectetur dapibus volutpat.</h5>
                        <p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="agileits-icon-grid">
                    <div class="icon-left hvr-radial-out">
                        <i class="fa fa-heart" aria-hidden="true"></i>
                    </div>
                    <div class="icon-right">
                        <h5>Lorem ipsum dolor sit amet</h5>
                        <p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="agileits-icon-grid">
                    <div class="icon-left hvr-radial-out">
                        <i class="fa fa-paper-plane" aria-hidden="true"></i>
                    </div>
                    <div class="icon-right">
                        <h5>Suspendisse consectetur dapibus volutpat.</h5>
                        <p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="col-md-6 w3ls-about-left">
                <div class="agileits-icon-grid">
                    <div class="icon-left hvr-radial-out">
                        <i class="fa fa-user" aria-hidden="true"></i>
                    </div>
                    <div class="icon-right">
                        <h5>Suspendisse consectetur dapibus volutpat.</h5>
                        <p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="agileits-icon-grid">
                    <div class="icon-left hvr-radial-out">
                        <i class="fa fa-thumbs-up" aria-hidden="true"></i>
                    </div>
                    <div class="icon-right">
                        <h5>Lorem ipsum dolor sit amet</h5>
                        <p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="agileits-icon-grid">
                    <div class="icon-left hvr-radial-out">
                        <i class="fa fa-bell" aria-hidden="true"></i>
                    </div>
                    <div class="icon-right">
                        <h5>Suspendisse consectetur dapibus volutpat.</h5>
                        <p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //services -->
<!-- news -->
<div class="news">
    <div class="container">
        <div class="w3ls-heading">
            <h3>News & Events</h3>
        </div>
        <div class="w3-agileits-news-grids">
            <div class="col-md-6 news-left">
                <div class="w3-agile-news-date">
                    <div class="agile-news-icon">
                        <i class="fa fa-calendar" aria-hidden="true"></i>
                        <p>Nov 24</p>
                    </div>
                    <div class="agileits-line"> </div>
                    <div class="agile-news-icon">
                        <a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i></a>
                        <p>2 comments</p>
                    </div>
                    <div class="agileits-line"> </div>
                    <div class="agile-news-icon">
                        <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>
                        <p>3482</p>
                    </div>
                </div>
                <div class="w3-agile-news-img">
                    <a href="../../../Downloads/moban1900/single.html"><img src="images/4.jpg" alt="" /></a>
                    <h4><a href="../../../Downloads/moban1900/single.html">Pellentesque habitant morbi tristique senectus et netus et malesuada fames</a></h4>
                    <p>Donec justo ante, maximus et aliquam et, elementum ac purus. Nam eget ante ac velit laoreet sodales ut vel nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed quam nibh. In sed nisi enim. Duis eget nunc vitae elit dignissim feugiat. Morbi molestie fringilla ipsum, id molestie dolor sodales vel.</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-6 news-right">
                <div class="news-right-grid">
                    <a href="../../../Downloads/moban1900/single.html">Nunc non neque ex. Aliquam neque massa</a>
                    <h5>06th Nov,2016</h5>
                    <p>Ut rutrum convallis erat at malesuada. Donec facilisis sem nisl, ut rhoncus ex ullamcorper ornare. Ut ac interdum velit. Cras nulla nibh, rutrum non venenatis sit amet, ullamcorper venenatis felis.</p>
                </div>
                <div class="news-right-grid">
                    <a href="../../../Downloads/moban1900/single.html">Phasellus sapien eros, condimentum quis</a>
                    <h5>17th Nov,2016</h5>
                    <p>Ut rutrum convallis erat at malesuada. Donec facilisis sem nisl, ut rhoncus ex ullamcorper ornare. Ut ac interdum velit. Cras nulla nibh, rutrum non venenatis sit amet, ullamcorper venenatis felis.</p>
                </div>
                <div class="news-right-grid">
                    <a href="../../../Downloads/moban1900/single.html">Donec justo ante, maximus et aliquam et</a>
                    <h5>29th Nov,2016</h5>
                    <p>Ut rutrum convallis erat at malesuada. <wbr>Donec facilisis sem nisl, ut rhoncus ex ullamcorper ornare. Ut ac interdum velit. Cras nulla nibh, rutrum non venenatis sit amet, ullamcorper venenatis felis.</p>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //news -->
<!-- footer -->
<footer>
    <div class="container">
        <div class="agileits-w3layouts-footer-grids">
            <div class="col-md-4 footer-left">
                <h3>
                    <a href="index.html">Cats <span>Lover</span></a>
                </h3>
                <div class="footer-social-grids">
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-rss"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 footer-left">
                <h4>Navigation</h4>
                <div class="col-md-6 footer-grid-left">
                    <ul>
                        <li><a class="active" href="index.html">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="gallery.html">Gallery</a></li>
                        <li><a href="../../../Downloads/moban1900/icons.html">Icons</a></li>
                    </ul>
                </div>
                <div class="col-md-6 footer-grid-left">
                    <ul>
                        <li><a href="../../../Downloads/moban1900/typography.html">Typography</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="../../../Downloads/moban1900/contact.html">Contact</a></li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</footer>
<script src="js/responsiveslides.min.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
</body>
</html>

