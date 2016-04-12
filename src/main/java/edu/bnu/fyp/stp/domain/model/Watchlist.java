package edu.bnu.fyp.stp.domain.model;

import org.springframework.data.mongodb.core.mapping.Document;

/**
 * Created by Rehan on 4/12/16.
 */

@Document (collection = "watchlist")
public class Watchlist {

    private User user;

    public Watchlist() {
        super();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
