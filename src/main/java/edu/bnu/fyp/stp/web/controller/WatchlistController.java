package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.WatchListBL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Rehan on 4/12/16.
 */

@Controller
public class WatchlistController {

    @Autowired
    private WatchListBL watchListBL;

    @RequestMapping (value = "/watchlist")
    private String showWatchList()
    {




        return "Watchlist";
    }

}
