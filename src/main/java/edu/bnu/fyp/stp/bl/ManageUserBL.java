package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.User;
import edu.bnu.fyp.stp.domain.repository.UserMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Rehan on 3/7/16.
 */
@Service
public class ManageUserBL {

    @Autowired
    private UserMongoRepository userMongoRepository;

    public User getUserByUserId(String userId) throws Exception {
        return userMongoRepository.findOne(userId);
    }

    public void updateUserProfile(User user) throws Exception {
        userMongoRepository.save(user);
    }
}
