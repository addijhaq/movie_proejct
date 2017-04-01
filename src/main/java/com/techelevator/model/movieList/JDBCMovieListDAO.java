package com.techelevator.model.movieList;

import com.google.gson.Gson;
import com.sun.org.apache.bcel.internal.generic.MONITORENTER;
import com.sun.org.apache.bcel.internal.generic.Select;
import com.techelevator.model.movie.*;
import com.techelevator.model.searchResults.ResultClass;
import com.techelevator.model.searchResults.ResultsPageList;
import okhttp3.*;
import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.commons.digester3.annotations.FromAnnotationsRuleModule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


import javax.sql.DataSource;
import javax.xml.transform.Result;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Component
public class JDBCMovieListDAO implements MovieListDAO {

    private JdbcTemplate jdbcTemplate;


    @Autowired
    public JDBCMovieListDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }


    private static String getJSON(String url) throws IOException {
        OkHttpClient client = new OkHttpClient();

        MediaType mediaType = MediaType.parse("application/octet-stream");
        RequestBody body = RequestBody.create(mediaType, "{}");
        Request request = new Request.Builder()
                .url(url)
                .build();

        Response response = client.newCall(request).execute();

        return response.body().string();

    }



    public List<Movie> getMovieListBySearch(String query){
        query = "%"+query+"%";
        List<Movie> resultsList = new ArrayList<>();
        List<Genre>  genreList = new ArrayList<>();
        String searchResults = null;
        String releaseDates = null;
        Gson gson = new Gson();


//        try {
//            Gson gson = new Gson();
//            genreList = getJSON("https://api.themoviedb.org/3/genre/movie/list?api_key=48bb05f1275fe1c3bb1867043273a684&language=en-US");
//         }catch (Exception e) {
//
//            e.printStackTrace();
//         }


//        //**** GETTING GENRELIST ****//
//            String sqlGenreString = "Select * FROM genres";
//            SqlRowSet genres = jdbcTemplate.queryForRowSet(sqlGenreString);
//            while(genres.next()){
//                Genre genre = new Genre();
//                genre.setId(genres.getLong("id"));
//                genre.setName(genres.getString("name"));
//                genreList.add(genre);
//            }
        //**** GETTING QUERY RESULTS ****//
         String sqlQueryString = "SELECT * FROM movies WHERE movie_data->>'title' ILIKE ? ";
         SqlRowSet queryResults = jdbcTemplate.queryForRowSet(sqlQueryString, query);
            while(queryResults.next()){
                String jsonbString = queryResults.getString("movie_data");
                Movie result = gson.fromJson(jsonbString, Movie.class);
                resultsList.add(result);
            }


//        ResultsPageList resultsPageList = gson.fromJson(searchResults,ResultsPageList.class);
//        resultsPageList.setGenreList(genres);
//        resultsList = resultsPageList.getResults();

//        for(ResultClass result: resultsList){
//            try {
//                releaseDates = getJSON("https://api.themoviedb.org/3/movie/"+result.getId()+"/release_dates?api_key=48bb05f1275fe1c3bb1867043273a684");
//
//            }catch (Exception e) {
//
//                e.printStackTrace();
//            }
//            AllReleases allReleases = gson.fromJson(releaseDates,AllReleases.class);
//            ReleaseObject theatricalRelease = allReleases.getReleasesByCountry("US").getReleasesByType(3);
//            result.setMpaaRating(theatricalRelease.getCertification());
//        }
        return resultsList;


    }

    public static void main(String args[]){
        JdbcTemplate jdbcTemplate;
        List<Genre> genreList = new ArrayList<>();
        List<Movie> resultsList = new ArrayList<>();
        Gson gson = new Gson();
        String query = "batman";



        BasicDataSource movieDataSource = new BasicDataSource();
        movieDataSource.setUrl("jdbc:postgresql://localhost:5432/mov_data");
        movieDataSource.setUsername("postgres");
        movieDataSource.setPassword("postgres1");
        jdbcTemplate = new JdbcTemplate(movieDataSource);

        String sqlGenreString = "Select * FROM genres";
        SqlRowSet genres = jdbcTemplate.queryForRowSet(sqlGenreString);
        while(genres.next()) {
            Genre genre = new Genre();
            genre.setId(genres.getLong("id"));
            genre.setName(genres.getString("name"));
            genreList.add(genre);
        }
        for (Genre genre: genreList){
            System.out.println(genre.getName());
        }

        String sqlQueryString = "SELECT * FROM movies WHERE movie_data->>'title' ILIKE ? ";
        SqlRowSet queryResults = jdbcTemplate.queryForRowSet(sqlQueryString, query);
        while(queryResults.next()){
            String jsonbString = queryResults.getString("movie_data");
            Movie result = gson.fromJson(jsonbString, Movie.class);
            resultsList.add(result);
        }

        for(Movie result: resultsList){
            for(Genre genre: result.getGenres()){
                System.out.println(genre.getName());
            }

        }
    }


}






