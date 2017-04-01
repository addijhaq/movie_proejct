<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/WEB-INF/jsp/common/fullPageHeader.jsp" />
<c:url value="/searchResults" var="formAction" />

<!-- Search bar -->
<div class="search-wrapper">
    <div class="container container--add">
        <form id='search-form' method='get' action='<c:out value="${formAction}" />' class="search">
            <input type="text" class="search__field" name="query" id="query" placeholder="Search">
            <select name="sorting_item" id="search-sort" class="search__sort" tabindex="0">
                <option value="1" selected='selected'>By title</option>
                <option value="2">By year</option>
                <option value="3">By producer</option>
                <option value="4">By title</option>
                <option value="5">By year</option>
            </select>
            <button type='submit' class="btn btn-md btn--danger search__button">search a movie</button>
        </form>
    </div>
</div>


<section class="container">
    <div class="col-sm-12">
        <h2 class="page-heading">Movies</h2>


        <c:forEach var="movie" items="${searchResults}">
        <div class="movie movie--preview movie--full release">
            <div class="col-sm-3 col-md-2 col-lg-2">
                <div class="movie__images">
                    <img alt='' src="https://image.tmdb.org/t/p/w780<c:out value="${movie.posterPath}" />" >
                </div>
                <%--<div class="movie__feature">--%>
                    <%--<a href="#" class="movie__feature-item movie__feature--comment">123</a>--%>
                    <%--<a href="#" class="movie__feature-item movie__feature--video">7</a>--%>
                    <%--<a href="#" class="movie__feature-item movie__feature--photo">352</a>--%>
                <%--</div>--%>
            </div>
                    <c:url var="moviePage" value="/moviePage?id=${movie.id}" />
            <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                <a href="<c:out value="${moviePage}" />" class="movie__title link--huge"><c:out value="${movie.title}" /></a>

                <%--<p class="movie__time">105 min</p>--%>

                <%--<p class="movie__option"><strong>Country: </strong><a href="#">USA</a></p>--%>

                <p class="movie__option"><strong>Category: </strong>
                    <c:forEach var="genre" items="${movie.genres}" >
                        <c:out value="${genre.name}" />

                    </c:forEach>
                </p>

                <fmt:parseDate value="${movie.releaseDate}" var="parsedDate" pattern="yyyy-MM-dd" />
                <p class="movie__option"><strong>Release date: </strong> <fmt:formatDate value="${parsedDate}" pattern="MMM dd, yyyy"/>  </p>
                <%--<p class="movie__option"><strong>Director: </strong>--%>
                <%--</p>--%>
                <%--<p class="movie__option"><strong>Actors: </strong>--%>
                <%--</p>--%>
                <%--<p class="movie__option"><strong>Rating: </strong><a href="#"><c:out value="${movie.mpaaRating}"/></a></p>--%>

                <div class="preview-footer">
                    <div class="movie__rate"><div class="score"></div><span class="movie__rate-number"><c:out value="${movie.voteCount}" /></span> <span class="movie__rating"><c:out value="${movie.voteAverage}" /></span> Votes</div>

                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</section>

<c:import url="/WEB-INF/jsp/common/fullPageFooter.jsp" />