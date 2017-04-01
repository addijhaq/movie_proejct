
package com.techelevator.model.movie;

import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class ReleasesByCountry {

    @SerializedName("iso_3166_1")
    @Expose
    private String iso31661;
    @SerializedName("release_dates")
    @Expose
    private List<ReleaseObject> releaseDates = null;

    public String getIso31661() {
        return iso31661;
    }

    public void setIso31661(String iso31661) {
        this.iso31661 = iso31661;
    }

    public List<ReleaseObject> getReleaseDates() {
        return releaseDates;
    }

    public void setReleaseDates(List<ReleaseObject> releaseDates) {
        this.releaseDates = releaseDates;
    }

    public ReleaseObject getReleasesByType(int type){

        for(ReleaseObject release: releaseDates){
            if(release.getType()==type){
                return release;
            }
        }return null;
    }
}
