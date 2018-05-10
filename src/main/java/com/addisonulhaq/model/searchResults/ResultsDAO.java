package com.addisonulhaq.model.searchResults;

import java.util.List;

/**
 * Created by addisonulhaq on 3/18/17.
 */
public interface ResultsDAO {

    public List<ResultClass> getResultsList(String searchType);
}
