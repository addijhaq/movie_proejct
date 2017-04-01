<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="bannercontainer rev_slider_wrapper">

    <!-- the ID here will be used in the JavaScript below to initialize the slider -->
    <div id="rev_slider_1" class="banner rev_slider" style="display:none">

        <!-- BEGIN SLIDES LIST -->
        <ul>
            <!-- SLIDE 1 -->
            <c:forEach items="${upComing}" var="upComing" begin="0" end="5">
            <li data-transition="crossfade" class="slide" data-title='<c:out value="${upComing.title}"/>'>

                <!-- SLIDE'S MAIN BACKGROUND IMAGE -->

                <img class="rev-slidebg" alt='' src="https://image.tmdb.org/t/p/w1280<c:out value="${upComing.backdropPath}" /> ">

                <div class="tp-caption slide__name margin-slider"
                     data-x="right"
                     data-y="80"
                     data-frames='[{
                               "delay":300,
                               "split":"chars",
                               "splitdelay":0.1,
                               "speed":700,
                               "frame":"0",
                               "from":"x:[-100%];opacity:0;",
                               "mask":"x:0px;y:0px;s:inherit;e:inherit;",
                               "to":"o:1;",
                               "ease":"Power4.easeInOut"
                               },{
                               "delay":"wait",
                               "speed":300,
                               "frame":"999",
                               "to":"opacity:0;",
                               "ease":"Power3.easeInOut"
                             }]'>
                    <c:out value="${upComing.originalTitle}" />
                </div>

                <div class="tp-caption n slide__time margin-slider"
                     data-x="right"
                     data-hoffset='250'
                     data-y="185"®
                     data-frames='[{
                               "delay":1200,
                               "speed":300,
                               "frame":"0",
                               "from":"x:[50%];opacity:0;",
                               "to":"o:1;",
                               "ease":"Power3.easeInOut"
                               },{
                               "delay":"wait",
                               "speed":300,
                               "frame":"999",
                               "to":"opacity:0;",
                               "ease":"Power3.easeInOut"
                             }]'
                style="color:#fe505a; z-index:2;">
                    In Theaters Starting <c:out value="${upComing.monthDayOnly}" />
                </div>

                <div class="tp-caption  slide__date margin-slider"
                     data-x="right"
                     data-hoffset='149'
                     data-y="186"
                     data-frames='[{
                               "delay":1700,
                               "speed":500,
                               "frame":"0",
                               "from":"y:100px;opacity:0;",
                               "to":"o:1;",
                               "ease":"Power3.easeInOut"
                               },{
                               "delay":"wait",
                               "speed":300,
                               "frame":"999",
                               "to":"opacity:0;",
                               "ease":"Power3.easeInOut"
                             }]'>

                </div>
                <div class="tp-caption slide__time margin-slider"
                     data-x="right"
                     data-hoffset='120'
                     data-y="186"
                     data-frames='[{
                               "delay":1200,
                               "speed":300,
                               "frame":"0",
                               "from":"x:[50%];opacity:0;",
                               "to":"o:1;",
                               "ease":"Power3.easeInOut"
                               },{
                               "delay":"wait",
                               "speed":300,
                               "frame":"999",
                               "to":"opacity:0;",
                               "ease":"Power3.easeInOut"
                             }]'>

                </div>
                <div class="tp-caption slide__date margin-slider"
                     data-x="right"
                     data-y="186"
                     data-frames='[{
                               "delay":1700,
                               "speed":500,
                               "frame":"0",
                               "from":"y:100px;opacity:0;",
                               "to":"o:1;",
                               "ease":"Power3.easeInOut"
                               },{
                               "delay":"wait",
                               "speed":300,
                               "frame":"999",
                               "to":"opacity:0;",
                               "ease":"Power3.easeInOut"
                             }]'>

                </div>
                <div class="tp-caption slide__text tp-resizeme margin-slider text-right"
                     data-x="center"
                     data-y="250"
                     data-width="['650']"
                     data-frames='[{
                               "delay":2300,
                               "speed":400,
                               "frame":"0",
                               "from":"y:100px;skX:50px;opacity:0;",
                               "to":"o:1;",
                               "ease":"Power3.easeInOut"
                               },{
                               "delay":"wait",
                               "speed":300,
                               "frame":"999",
                               "to":"opacity:0;",
                               "ease":"Power3.easeInOut"
                             }]'
                style="white-space:normal;">
                            <c:out value="${upComing.overview}" />
                </div>
                <div class="tp-caption margin-slider"
                     data-x="right"
                     data-y="360"
                     data-frames='[{
                               "delay":2600,
                               "speed":400,
                               "frame":"0",
                               "from":"y:100px;opacity:0;",
                               "to":"o:1;",
                               "ease":"Power3.easeInOut"
                               },{
                               "delay":"wait",
                               "speed":300,
                               "frame":"999",
                               "to":"opacity:0;",
                               "ease":"Power3.easeInOut"
                             }]'>
                    <c:url var="moviePage" value="/moviePage?id=${upComing.id}" />
                    <a href="<c:out value="${moviePage}" />" class="slide__link">check out cinemas &amp; time</a>
                </div>
            </li>
            </c:forEach>
        </ul>
    </div>
</div>