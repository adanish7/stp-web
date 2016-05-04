package edu.bnu.fyp.stp.domain.repository;

import edu.bnu.fyp.stp.domain.model.User;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

/**
 * Created by Rehan on 3/7/16.
 */
public interface UserMongoRepository extends MongoRepository<User, String> {

    public User findByEmailAndPassword(String email,String password) throws Exception;

    public List<User> findByRole(String role) throws Exception;
}
