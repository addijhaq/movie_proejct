package com.addisonulhaq.model.movieList;

import com.addisonulhaq.model.movie.Movie;

import java.util.List;

/**
 * Created by addisonulhaq on 3/14/17.
 */
public interface MovieListDAO {

    public List<Movie> getMovieListBySearch(String query);
}
