<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/homeHeader.jsp"/>
<c:import url="/WEB-INF/jsp/frontPageSlider.jsp"/>




<section class="container">
    <div class="movie-best">
        <div class="col-sm-10 col-sm-offset-1 movie-best__rating">In Theaters Now</div>
        <div class="col-sm-12 change--col" style="display:flex;">
            <div class="movie-beta__item">
                <img alt='' src="https://image.tmdb.org/t/p/w780/<c:out value="${nowPlaying[0].posterPath}" />" >
                <span class="best-rate"><c:out value="${nowPlaying[0].voteAverage}"/></span>

                <ul class="movie-beta__info">
                    <li><span class="best-voted"><c:out value="${nowPlaying[0].voteCount}" /> Votes</span></li>
                    <li>

                        <p>
                            <c:forEach items="${nowPlaying[0].genres}" var="genre">
                                <c:out value="${genre}" />,
                            </c:forEach>
                        </p>
                    </li>
                    <li class="last-block">
                        <c:url var="moviePage" value="/moviePage?id=${nowPlaying[0].id}" />
                        <a href="<c:out value="${moviePage}" />" class="slide__link">more</a>
                    </li>
                </ul>
            </div>
            <div class="movie-beta__item second--item">
                <img alt='' src="https://image.tmdb.org/t/p/w780/<c:out value="${nowPlaying[1].posterPath}" />" >
                <span class="best-rate"><c:out value="${nowPlaying[1].voteAverage}"/></span>

                <ul class="movie-beta__info">
                    <li><span class="best-voted"><c:out value="${nowPlaying[1].voteCount}" /> Votes</span></li>
                    <li>

                        <p>
                            <c:forEach items="${nowPlaying[1].genres}" var="genre">
                                <c:out value="${genre}" />,
                            </c:forEach>
                        </p>

                        <%--<p><c:out value="${nowPlaying[1].originalLanguage}" /> </p>--%>
                    </li>
                    <li class="last-block">
                        <c:url var="moviePage" value="/moviePage?id=${nowPlaying[1].id}" />
                        <a href="<c:out value="${moviePage}" />" class="slide__link">more</a>
                    </li>
                </ul>
            </div>
            <div class="movie-beta__item third--item">
                <img alt='' src="https://image.tmdb.org/t/p/w780/<c:out value="${nowPlaying[2].posterPath}" />" >
                <span class="best-rate"><c:out value="${nowPlaying[2].voteAverage}"/></span>

                <ul class="movie-beta__info">
                    <li><span class="best-voted"><c:out value="${nowPlaying[2].voteCount}" /> Votes</span></li>
                    <li>

                        <p>
                            <c:forEach items="${nowPlaying[2].genres}" var="genre">
                                <c:out value="${genre}" />,
                            </c:forEach>
                        </p>

                        <%--<p><c:out value="${nowPlaying[2].originalLanguage}" /> </p>--%>
                    </li>
                    <li class="last-block">
                        <c:url var="moviePage" value="/moviePage?id=${nowPlaying[2].id}" />
                        <a href="<c:out value="${moviePage}" />" class="slide__link">more</a>
                    </li>
                </ul>
            </div>
            <div class="movie-beta__item hidden-xs">
                <img alt='' src="https://image.tmdb.org/t/p/w780/<c:out value="${nowPlaying[3].posterPath}" />" >
                <span class="best-rate"><c:out value="${nowPlaying[3].voteAverage}"/></span>

                <ul class="movie-beta__info">
                    <li><span class="best-voted"><c:out value="${nowPlaying[3].voteCount}" /> Votes</span></li>
                    <li>

                        <p>
                            <c:forEach items="${nowPlaying[3].genres}" var="genre">
                                <c:out value="${genre}" />,
                            </c:forEach>
                        </p>

                        <%--<p><c:out value="${nowPlaying[3].originalLanguage}" /> </p>--%>
                    </li>
                    <li class="last-block">
                        <c:url var="moviePage" value="/moviePage?id=${nowPlaying[3].id}" />
                        <a href="<c:out value="${moviePage}" />" class="slide__link">more</a>
                    </li>
                </ul>
            </div>
            <div class="movie-beta__item hidden-xs hidden-sm">
                <img alt='' src="https://image.tmdb.org/t/p/w780/<c:out value="${nowPlaying[4].posterPath}" />" >
                <span class="best-rate"><c:out value="${nowPlaying[4].voteAverage}"/></span>

                <ul class="movie-beta__info">
                    <li><span class="best-voted"><c:out value="${nowPlaying[4].voteCount}" /> Votes</span></li>
                    <li>

                        <p>
                            <c:forEach items="${nowPlaying[4].genres}" var="genre">
                                <c:out value="${genre}" />,
                            </c:forEach>
                        </p>

                        <%--<p><c:out value="${nowPlaying[4].originalLanguage}" /> </p>--%>
                    </li>
                    <li class="last-block">
                        <c:url var="moviePage" value="/moviePage?id=${nowPlaying[4].id}" />
                        <a href="<c:out value="${moviePage}" />" class="slide__link">more</a>
                    </li>
                </ul>
            </div>
            <div class="movie-beta__item hidden-xs hidden-sm">
                <img alt='' src="https://image.tmdb.org/t/p/w780/<c:out value="${nowPlaying[5].posterPath}" />" >
                <span class="best-rate"><c:out value="${nowPlaying[5].voteAverage}"/></span>

                <ul class="movie-beta__info">
                    <li><span class="best-voted"><c:out value="${nowPlaying[5].voteCount}" /> Votes</span></li>
                    <li>

                        <p>
                            <c:forEach items="${nowPlaying[5].genres}" var="genre">
                                <c:out value="${genre}" />,
                            </c:forEach>
                        </p>

                        <%--<p><c:out value="${nowPlaying[5].originalLanguage}" /> </p>--%>
                    </li>
                    <li class="last-block">
                        <c:url var="moviePage" value="/moviePage?id=${nowPlaying[5].id}" />
                        <a href="<c:out value="${moviePage}" />" class="slide__link">more</a>
                    </li>
                </ul>
            </div>
        </div>
        <div></div>
        <div class="col-sm-10 col-sm-offset-1 movie-best__check">check all movies now playing</div>
    </div>

</section>

<div class="clearfix"></div>
<c:url value="/searchResults" var="formAction" />
<!-- Search bar -->
<div class="search-wrapper">
    <div class="container container--add">
        <form id='search-form' method='get' action='<c:out value="${formAction}" />' class="search">
            <input type="text" class="search__field" name="query" id="query" placeholder="Search">
            <%--<select name="sorting_item" id="search-sort" class="search__sort" tabindex="0">--%>
                <%--<option value="1" selected='selected'>By title</option>--%>
                <%--<option value="2">By year</option>--%>
                <%--<option value="3">By producer</option>--%>
                <%--<option value="4">By title</option>--%>
                <%--<option value="5">By year</option>--%>
            <%--</select>--%>
            <button type='submit' class="btn btn-md btn--danger search__button">search a movie</button>
        </form>
    </div>
</div>
<c:import url="/WEB-INF/jsp/common/homeFooter.jsp"/>