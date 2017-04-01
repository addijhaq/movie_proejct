
package com.techelevator.model.movie;

import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class AllReleases {

    @SerializedName("id")
    @Expose
    private long id;
    
	@SerializedName("results")
    @Expose
    private List<ReleasesByCountry> results = null;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<ReleasesByCountry> getResults() {
        return results;
    }

    public void setResults(List<ReleasesByCountry> results) {
        this.results = results;
    }

    public ReleasesByCountry getReleasesByCountry(String ISO){

        for(ReleasesByCountry releases: results){
            if(releases.getIso31661().equals(ISO)){
                return releases;
            }
        }return null;
    }

}
