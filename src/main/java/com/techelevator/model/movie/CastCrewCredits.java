
package com.techelevator.model.movie;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class CastCrewCredits {

    @SerializedName("id")
    @Expose
    private long id;
    @SerializedName("cast")
    @Expose
    private List<CastClass> cast = null;
    @SerializedName("crew")
    @Expose
    private List<CrewClass> crew = null;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<CastClass> getCast() {
        return cast;
    }

    public void setCast(List<CastClass> cast) {
        this.cast = cast;
    }

    public List<CrewClass> getCrew() {
        return crew;
    }

    public void setCrew(List<CrewClass> crew) {
        this.crew = crew;
    }

    public List<CrewClass> getDirector(){
        List<CrewClass> directorList = new ArrayList<CrewClass>();
        for(CrewClass crew : crew){
            if(crew.getJob().toLowerCase().equals("director")){
                directorList.add(crew);
            }
        }
        return directorList;
    }

    public List<CastClass> getTopBilledCast(){
        List<CastClass> topBilledCast = new ArrayList<CastClass>();
        for(int i=0; i<5; i++){
            topBilledCast.add(cast.get(i));
        }
        return topBilledCast;
    }


}
