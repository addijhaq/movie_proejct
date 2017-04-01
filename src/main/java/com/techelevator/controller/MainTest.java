package com.techelevator.controller;

import com.techelevator.model.searchResults.JDBCResultsDAO;
import com.techelevator.model.searchResults.ResultClass;
import com.techelevator.model.searchResults.ResultsDAO;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by addisonulhaq on 3/19/17.
 */
public class MainTest {


    public static void main(String[] args) {

        JDBCResultsDAO results = new JDBCResultsDAO();

        List<ResultClass> resultList = results.getResultsList("top_rated");
        System.out.println(resultList.get(1).getGenres());

    }
}