package edu.bnu.fyp.stp.domain.repository;

import edu.bnu.fyp.stp.domain.model.User;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * Created by Rehan on 3/7/16.
 */
public interface UserMongoRepository extends MongoRepository<User, String> {

    public User findByEmailAndPassword(String email,String password) throws Exception;
}
