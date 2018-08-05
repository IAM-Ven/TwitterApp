package pl.springproject.twitter_app.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TweetsController {

    @PreAuthorize("hasAnyRole('ADMIN')")
    @RequestMapping(value = "/tweets", method = RequestMethod.GET)
    public String getAllTweets() {
        return "success";
    }
}
