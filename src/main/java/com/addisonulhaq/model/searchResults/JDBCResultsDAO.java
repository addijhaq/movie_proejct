package com.addisonulhaq.model.searchResults;

import com.google.gson.Gson;
import com.addisonulhaq.model.movie.Genre;
import com.addisonulhaq.model.movie.GenreList;
import okhttp3.*;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by addisonulhaq on 3/18/17.
 */

@Component
public class JDBCResultsDAO implements ResultsDAO {

    private final String POPULAR_MOVIES= "popular";
    private final String IN_THEATERS = "now_playing";
    private final String UPCOMING = "upcoming";



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


    Gson gson = new Gson();

    public List<ResultClass> getResultsList(String searchType) {
        List<ResultClass> resultsList = new ArrayList<ResultClass>();
        String searchResults = null;
        String genreList = null;
        if(searchType.equals(POPULAR_MOVIES)) {
            searchType = "top_rated";
        }else if(searchType.equals(IN_THEATERS)){
            searchType = "now_playing";
        }else if(searchType.equals(UPCOMING)){
            searchType="upcoming";
        }

        try {
            searchResults = getJSON("https://api.themoviedb.org/3/movie/"+searchType+"?api_key=48bb05f1275fe1c3bb1867043273a684&language=en-US&page=1&region=US");
            genreList = getJSON("https://api.themoviedb.org/3/genre/movie/list?api_key=48bb05f1275fe1c3bb1867043273a684&language=en-US");
        } catch (Exception e) {

            e.printStackTrace();
        }
        Gson gson = new Gson();
        List<Genre> genres = gson.fromJson(genreList, GenreList.class).getGenres();
        ResultsPageList resultsPageList = gson.fromJson(searchResults,ResultsPageList.class);
        resultsPageList.setGenreList(genres);
        resultsList = resultsPageList.getResults();
        return resultsList;

    }

}