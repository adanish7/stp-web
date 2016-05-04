package edu.bnu.fyp.stp.domain.repository;

import edu.bnu.fyp.stp.domain.model.Watchlist;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

/**
 * Created by Rehan on 4/12/16.
 */

public interface WatchListMongoRepository extends MongoRepository<Watchlist, String> {

    public List<Watchlist> getWatchlistByUserId(String userId);

}
