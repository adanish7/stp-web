package edu.bnu.fyp.stp.domain.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * Created by Rehan on 3/8/16.
 */
public interface MessageMongoRepository extends MongoRepository <MessageMongoRepository, String> {
}
