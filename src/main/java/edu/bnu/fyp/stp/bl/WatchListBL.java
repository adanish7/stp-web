package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.Watchlist;
import edu.bnu.fyp.stp.domain.repository.WatchListMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Rehan on 4/12/16.
 */

@Service
public class WatchListBL {

    @Autowired
    private WatchListMongoRepository watchListMongoRepository;

    public List<Watchlist> getWatchlist() throws Exception
    {
        return watchListMongoRepository.findAll();
    }

}
