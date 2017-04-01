<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html>
<head>

    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>AMovie</title>
    <meta name="description" content="School Project By Addison Ulhaq">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="author" content="TechElevator.com / Content qeuried by TMDB.com api">

    <!-- Mobile Specific Metas-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="telephone=no" name="format-detection">

    <!-- Fonts -->
    <!-- Font awesome - icon font -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- Roboto -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,700' rel='stylesheet' type='text/css'>
    <!-- Open Sans -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>

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

    <!-- Slider Revolution CSS Files -->
    <link rel="stylesheet" type="text/css" href="revolution/css/settings.css">
    <link rel="stylesheet" type="text/css" href="revolution/css/layers.css">
    <link rel="stylesheet" type="text/css" href="revolution/css/navigation.css">



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
    <header class="header-wrapper header-wrapper--home">
        <sec:authorize access="authenticated" var="authenticated" />

        <div class="container">
            <!-- Logo link-->
            <a href='index.html' class="logo">
                <img alt='logo' src="images/logo.png">
            </a>

            <!-- Main website navigation-->
            <nav id="navigation-box" class="navbar navbar-fixed-top">
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
                        <a href="#">Home</a>
                    </li>
                    <%--<li>--%>
                        <%--<a href="page-elements.html">Movie Search</a>--%>
                        <%--<ul>--%>
                            <%--<li class="menu__nav-item"><a href="typography.html">Typography</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="page-elements.html">Shortcodes</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="column.html">Columns</a></li>--%>
                            <%--<li class="menu__nav-item"><a href="icon-font.html">Icons</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <li>
                        <a href="#">About the Project</a>
                    </li>
                    <li>
                        <a href="#">GitHub</a>
                    </li>
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
                                    <form id="logout-form" action ="<c:url value="/"/>" method="POST">
                                        <sec:csrfInput/>
                                    </form></li>
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

                    <%--<form action="logout" method="POST">--%>
                        <%--<input type="submit" value="LogOut" />--%>
                        <%--<input type="hidden" name="<c:out value="${_csfr.parameterName}"/>" value="<c:out value="${_csrf.token}"/>--%>
                    <%--</form>--%>


        </div>


    </header>