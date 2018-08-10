package pl.springproject.twitter_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.springproject.twitter_app.domain.Tweet;

public interface TweetRepository extends JpaRepository<Tweet, Long> {


}
