
package com.techelevator.model.searchResults;

import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.techelevator.model.movie.Genre;

public class ResultsPageList {

    @SerializedName("page")
    @Expose
    private long page;
    @SerializedName("results")
    @Expose
    private List<ResultClass> results = null;
    @SerializedName("total_results")
    @Expose
    private long totalResults;
    @SerializedName("total_pages")
    @Expose
    private long totalPages;

    @SerializedName("dates")
    @Expose
    private Dates dates;

    private List<Genre> genres;

    public long getPage() {
        return page;
    }

    public void setPage(long page) {
        this.page = page;
    }

    public List<ResultClass> getResults() {
        return results;
    }

    public void setResults(List<ResultClass> results) {
        this.results = results;
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

    public Dates getDates() {
        return dates;
    }

    public void setDates(Dates dates) {
        this.dates = dates;
    }

    public void setGenreList(List<Genre> genres){
        this.genres = genres;
        for(ResultClass result: results){
            result.setGenreList(genres);
        }

    }



}
