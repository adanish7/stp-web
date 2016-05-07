package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.User;
import edu.bnu.fyp.stp.domain.model.Watchlist;
import edu.bnu.fyp.stp.domain.repository.WatchListMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Rehan on 4/12/16.
 */

@Service
public class WatchListBL {

    @Autowired
    private WatchListMongoRepository watchListMongoRepository;

    public List<Watchlist> getStudentWatchlist(String x) throws Exception
    {
        return watchListMongoRepository.getWatchlistByUserId(x);
    }

    public void saveWatchlist(Watchlist watchList) throws Exception {
        /*if (StringUtils.isEmpty(watchList.getUserId()))
            watchList.setUserId(null);*/

        try {
            watchListMongoRepository.save(watchList);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Watchlist> getWatchlistByTutor(User tutor) throws Exception {

        List<Watchlist> watchlist = new ArrayList<Watchlist>();

        try {
           watchlist = watchListMongoRepository.getWatchlistByTutor(tutor);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return watchlist;
    }

    public void deleteWatchlist(String id) {

        watchListMongoRepository.delete(id);
    }
}
