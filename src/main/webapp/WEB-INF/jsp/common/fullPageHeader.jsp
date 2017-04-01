<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html>
<head>

    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>AMovie - Movie page</title>
    <meta name="description" content="">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="author" content="">
    <meta name="description" content="This is the description for this page" />
    <sec:csrfMetaTags />

    <!-- Mobile Specific Metas-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="telephone=no" name="format-detection">

    <!-- Fonts -->
    <!-- Font awesome - icon font -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- Roboto -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>

    <!-- Stylesheets -->
    <!-- jQuery UI -->
    <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="stylesheet">

    <!-- Mobile menu -->
    <link href="css/gozha-nav.css" rel="stylesheet" />
    <!-- Select -->
    <link href="css/external/jquery.selectbox.css" rel="stylesheet" />
    <!-- Swiper slider -->
    <link href="css/external/idangerous.swiper.css" rel="stylesheet" />
    <!-- Magnific-popup -->
    <link href="css/external/magnific-popup.css" rel="stylesheet" />


    <!-- Custom -->
    <link href="css/style.css?v=1" rel="stylesheet" />

    <!-- Modernizr -->
    <script src="js/external/modernizr.custom.js"></script>


</head>

<body>
<%--<div class="wrapper">--%>
    <%--<!-- Banner -->--%>
    <%--<div class="banner-top">--%>
        <%--<img alt='top banner' src="images/banners/bra.jpg">--%>
    <%--</div>--%>

    <!-- Header section -->
    <header class="header-wrapper">
        <div class="container">
            <!-- Logo link-->
            <a href='index.html' class="logo">
                <img alt='logo' src="images/logo.png">
            </a>

            <!-- Main website navigation-->
            <nav id="navigation-box">
                <!-- Toggle for mobile menu mode -->
                <a href="#" id="navigation-toggle">
                        <span class="menu-icon">
                            <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                              <span class="lines"></span>
                            </span>
                        </span>
                </a>

                <!-- Link navigation -->
                <ul id="navigation">
                    <li>
                        <%--<span class="sub-nav-toggle plus"></span>--%>
                        <a href="/">Home</a>
                        <%--<ul>--%>
                            <%--<li class="menu__nav-item"><a href="movie-page-left.html">Single movie (rigth sidebar)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="movie-page-right.html">Single movie (left sidebar)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="movie-page-full.html">Single movie (full widht)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="movie-list-left.html">Movies list (rigth sidebar)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="movie-list-right.html">Movies list (left sidebar)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="movie-list-full.html">Movies list (full widht)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="single-cinema.html">Single cinema</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="cinema-list.html">Cinemas list</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="trailer.html">Trailers</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="rates-left.html">Rates (rigth sidebar)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="rates-right.html">Rates (left sidebar)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="rates-full.html">Rates (full widht)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="offers.html">Offers</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="contact.html">Contact us</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="404.html">404 error</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="coming-soon.html">Coming soon</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="login.html">Login/Registration</a></li>--%>
                        <%--</ul>--%>
                    </li>
                    <%--<li>--%>
                        <%--<span class="sub-nav-toggle plus"></span>--%>
                        <%--<a href="page-elements.html">Features</a>--%>
                        <%--<ul>--%>
                            <%--<li class="menu__nav-item"><a href="typography.html">Typography</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="page-elements.html">Shortcodes</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="column.html">Columns</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="icon-font.html">Icons</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<span class="sub-nav-toggle plus"></span>--%>
                        <%--<a href="page-elements.html">Booking steps</a>--%>
                        <%--<ul>--%>
                            <%--<li class="menu__nav-item"><a href="book1.html">Booking step 1</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="book2.html">Booking step 2</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="book3-buy.html">Booking step 3 (buy)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="book3-reserve.html">Booking step 3 (reserve)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="book-final.html">Final ticket view</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<span class="sub-nav-toggle plus"></span>--%>
                        <%--<a href="gallery-four.html">Gallery</a>--%>
                        <%--<ul>--%>
                            <%--<li class="menu__nav-item"><a href="gallery-four.html">4 col gallery</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="gallery-three.html">3 col gallery</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="gallery-two.html">2 col gallery</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<span class="sub-nav-toggle plus"></span>--%>
                        <%--<a href="news-left.html">News</a>--%>
                        <%--<ul>--%>
                            <%--<li class="menu__nav-item"><a href="news-left.html">News (rigth sidebar)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="news-right.html">News (left sidebar)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="news-full.html">News (full widht)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="single-page-left.html">Single post (rigth sidebar)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="single-page-right.html">Single post (left sidebar)</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="single-page-full.html">Single post (full widht)</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>

                </ul>
            </nav>

            <%--Additional header buttons / Auth and direct link to booking--%>
            <c:choose>
            <c:when test="${authenticated}">
            <div class="control-panel">
                <div class="auth auth--home">
                    <div class="auth__show">
                        <span class="auth__image">
                          <img alt="" src="images/client-photo/auth.png">
                        </span>
                    </div>
                    <a href="#" class="btn btn--sign btn--singin">
                        <sec:authentication property="name" />
                    </a>
                    <ul class="auth__function">
                        <li><a href="#" class="auth__function-item">Watchlist</a></li>
                        <li><a href="#" class="auth__function-item">Booked tickets</a></li>
                        <li><a href="#" class="auth__function-item">Discussion</a></li>
                        <li><a href="#" class="auth__function-item">Settings</a></li>
                        <li><a href="#" id="logout" class="auth_function-item">Logout</a>
                            <form id="logout-form" action ="<c:url value="/"/>" method="POST"></form></li>
                    </ul>

                </div>

            </div>
            </c:when>
        <c:otherwise>
            <c:url value="/login" var="login"/>
            <div class="control-panel">
                <a href="<c:out value="${login}"/>" class="btn btn--sign">Sign in</a>
            </div>
        </c:otherwise>
        </c:choose>

        </div>
    </header>
        