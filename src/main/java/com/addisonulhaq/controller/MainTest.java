package com.addisonulhaq.controller;

import com.addisonulhaq.model.searchResults.JDBCResultsDAO;
import com.addisonulhaq.model.searchResults.ResultClass;

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