package com.techelevator.controller;

import java.util.Map;

import com.techelevator.model.movie.Movie;
import com.techelevator.model.movie.MovieDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@SessionAttributes("movie")

@Controller
public class MovieController {
	private MovieDAO movieDAO;

	@Autowired
	public MovieController(MovieDAO movieDAO) {
		this.movieDAO = movieDAO;
	}



	@RequestMapping(path = {"/moviePage"}, method = RequestMethod.GET)
	public String displayMoviePage(@RequestParam String id, ModelMap model, HttpServletRequest request) {

		Movie movie = movieDAO.getMovieByID(id);


		request.setAttribute("movie", movie);


		return "/moviePage";
	}





}


