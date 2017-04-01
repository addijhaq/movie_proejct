
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/WEB-INF/jsp/common/fullPageHeader.jsp" />

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



<section class="container">
    <div class="col-sm-12">
        <div class="movie">
            <h2 class="page-heading">${movie.title}</h2>

            <div class="movie__info">
                <div class="col-sm-4 col-md-3 movie-mobile">
                    <div class="movie__images">
                        <span class="movie__rating">${movie.voteAverage}</span>
                        <img alt='' src="https://image.tmdb.org/t/p/w780<c:out value="${movie.posterPath}"/>" >
                    </div>

                </div>

                    <div class="col-sm-8 col-md-9">
                        <p class="movie__time"><c:out value="${movie.runtime}"/> </p>
                        <p class="movie__option"><strong>Category: </strong>

                            <c:forEach var="genre" items="${movie.genres}">
                                <a href="#"><c:out value="${genre.name}"/></a>
                            </c:forEach>

                        </p>
                        <fmt:parseDate value="${movie.releaseDate}" var="parsedDate" pattern="yyyy-MM-dd" />
                        <p class="movie__option"><strong>Release date: </strong> <fmt:formatDate value="${parsedDate}" pattern="MMM dd, yyyy"/>  </p>
                        <p class="movie__option"><strong>Director: </strong>

                            <c:forEach var="director" items="${movie.director}">
                                <a href="#"><c:out value="${director.name}" /></a>
                            </c:forEach>

                         </p>
                        <p class="movie__option"><strong>Actors: </strong>
                            <c:forEach var="actor" items="${movie.topBilledCast}">
                                <a href="#"><c:out value="${actor.name}" /></a>
                            </c:forEach>
                           </p>
                        <p class="movie__option"><strong>Rated: </strong><c:out value="${movie.mpaaRating}" /></p>
                        <%--<p class="movie__option"><strong>Box office: </strong><a href="#"><c:out value="${movie.revenue}" /></a></p>--%>
                    </div>
            </div>


            <div class="clearfix"></div>
            <h2 class="page-heading">The plot</h2>

            <p class="movie__describe">${movie.overview} </p>





        </div>

    </div>
</section>


<c:import url="/WEB-INF/jsp/common/fullPageFooter.jsp" />