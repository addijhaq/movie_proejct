package com.addisonulhaq.model.movie;

import com.google.gson.Gson;
import okhttp3.*;
import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.io.IOException;

@Component
public class JDBCMovieDAO implements MovieDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JDBCMovieDAO(DataSource dataSource) {
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

    public Movie getMovieByID(String movieID) {


        String movieDetails = null;
        String castAndCrew = null;
        String releaseDates = null;
        try {
            castAndCrew = getJSON("https://api.themoviedb.org/3/movie/" + movieID + "/credits?api_key=48bb05f1275fe1c3bb1867043273a684&language=en-US");
            movieDetails = getJSON("https://api.themoviedb.org/3/movie/" + movieID + "?api_key=48bb05f1275fe1c3bb1867043273a684&language=en-US");
            releaseDates = getJSON("https://api.themoviedb.org/3/movie/" + movieID + "/release_dates?api_key=48bb05f1275fe1c3bb1867043273a684");
        } catch (Exception e) {
            e.printStackTrace();
        }

        Gson gson = new Gson();
        CastCrewCredits castCrew = gson.fromJson(castAndCrew, CastCrewCredits.class);
        Movie movie = gson.fromJson(movieDetails, Movie.class);
        AllReleases allReleases = gson.fromJson(releaseDates, AllReleases.class);
        ReleaseObject theatricalRelease = allReleases.getReleasesByCountry("US").getReleasesByType(3);


        movie.setMpaaRating(theatricalRelease.getCertification());
        movie.setTopBilledCast(castCrew.getTopBilledCast());
        movie.setDirector(castCrew.getDirector());


        return movie;

    }


    public static void main(String args[]) {
        JdbcTemplate jdbcTemplate;

        BasicDataSource movieDataSource = new BasicDataSource();
        movieDataSource.setUrl("jdbc:postgresql://localhost:5432/mov_data");
        movieDataSource.setUsername("postgres");
        movieDataSource.setPassword("postgres1");

        jdbcTemplate = new JdbcTemplate(movieDataSource);
        String sqlInsertJSON = "INSERT INTO movies(imdb_id, movie_data) VALUES(?,?::jsonb)";
        String sqlInsertID = "INSERT INTO movies() VALUES(?)";
        String searchResults;


        for (long i = 380000; i < 449500; i++) {


            try {
                searchResults = getJSON("https://api.themoviedb.org/3/movie/"+i+"?api_key=48bb05f1275fe1c3bb1867043273a684&language=en-US");

                Gson gson = new Gson();
                Movie movie = gson.fromJson(searchResults, Movie.class);
                String imdbId = movie.getImdbId();
                if (movie.getImdbId()!= null) {

                        jdbcTemplate.update(sqlInsertJSON, imdbId, searchResults);
                }
            } catch (Exception e) {

                e.printStackTrace();
            }
            if(i%1000==0) {
                System.out.println("Up To: " + i);
            }

        }

    }
}

