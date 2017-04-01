package com.techelevator.controller;

import java.util.List;
import java.util.Map;

import com.techelevator.model.movie.Movie;
import com.techelevator.model.movie.MovieDAO;

import com.techelevator.model.movieList.MovieList;
import com.techelevator.model.movieList.MovieListDAO;
import com.techelevator.model.searchResults.ResultClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;



@Controller
public class MovieListController {
    private MovieListDAO movieListDAO;

    @Autowired
    public MovieListController(MovieListDAO movieListDAO) {
        this.movieListDAO = movieListDAO;
    }


    @RequestMapping(path = {"/searchResults"}, method = RequestMethod.GET)
    public String displayMoviePage(@RequestParam String query, ModelMap model, HttpServletRequest request) {

        List<Movie> searchResults = movieListDAO.getMovieListBySearch(query);


        request.setAttribute("searchResults", searchResults);


        return "/searchResults";
    }

}