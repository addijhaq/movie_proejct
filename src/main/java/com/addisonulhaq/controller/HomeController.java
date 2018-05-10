package com.addisonulhaq.controller;
import java.util.List;

import com.addisonulhaq.model.searchResults.ResultClass;
import com.addisonulhaq.model.searchResults.ResultsDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@SessionAttributes("movie")

@Controller
public class HomeController {
    private ResultsDAO resultsDAO;

    @Autowired
    public HomeController(ResultsDAO resultsDAO) {
        this.resultsDAO = resultsDAO;
    }

    @RequestMapping({"/","/index"})
    public String displayIndex(HttpServletRequest request) {

        List<ResultClass> upComing = resultsDAO.getResultsList("upcoming");
        List<ResultClass> nowPlaying = resultsDAO.getResultsList("now_playing");

        request.setAttribute("upComing", upComing);
        request.setAttribute("nowPlaying", nowPlaying);



        return "index";
    }

    @RequestMapping(path = {"/login"}, method= RequestMethod.GET)
    public String displayLogin(){

        return "login";
    }


}