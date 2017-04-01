package com.techelevator.model.movieList;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.techelevator.model.movie.Movie;

import java.util.List;

/**
 * Created by addisonulhaq on 3/14/17.
 */
public class MovieList {

    @SerializedName("page")
    @Expose
    private long page;
    @SerializedName("results")
    @Expose
    private List<Movie> movieList = null;
    @SerializedName("total_results")
    @Expose
    private long totalResults;
    @SerializedName("total_pages")
    @Expose
    private long totalPages;

    public long getPage() {
        return page;
    }

    public void setPage(long page) {
        this.page = page;
    }

    public List<Movie> getMovieList() {
        return movieList;
    }

    public void setResults(List<Movie> movieList) {
        this.movieList = movieList;
    }

    public long getTotalResults() {
        return totalResults;
    }

    public void setTotalResults(long totalResults) {
        this.totalResults = totalResults;
    }

    public long getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(long totalPages) {
        this.totalPages = totalPages;
    }

}

