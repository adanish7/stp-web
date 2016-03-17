package edu.bnu.fyp.stp.domain.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * Created by Rehan on 3/8/16.
 */

@Document(collection = "watchlist")
public class Watchlist {

    @Id
    private String watchlistId;

    private String Status;

    public String getWatchlistId() {
        return watchlistId;
    }

    public void setWatchlistId(String watchlistId) {
        this.watchlistId = watchlistId;
    }

    public Watchlist(String watchlistId) {
        this.watchlistId = watchlistId;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }
}
