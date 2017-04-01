package com.techelevator.model.movieList;

import com.techelevator.model.movie.Movie;
import com.techelevator.model.searchResults.ResultClass;

import java.util.List;

/**
 * Created by addisonulhaq on 3/14/17.
 */
public interface MovieListDAO {

    public List<Movie> getMovieListBySearch(String query);
}
