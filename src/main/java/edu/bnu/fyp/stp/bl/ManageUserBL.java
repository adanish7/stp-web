package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.User;
import edu.bnu.fyp.stp.domain.repository.UserMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by Rehan on 3/7/16.
 */
@Service
public class ManageUserBL {

    @Autowired
    private UserMongoRepository userMongoRepository;

    @Autowired
    private MongoTemplate mongoTemplate;

    public User getUserByUserId(String userId) throws Exception {
        return userMongoRepository.findOne(userId);
    }

    public User getUserByUserEmail(String email) throws Exception {
        return userMongoRepository.findOne(email);
    }

    public User getUserByEmailAndPassword(String email , String Password) throws Exception {
        return userMongoRepository.findByEmailAndPassword(email, Password);
    }

    public List<User> getAllUsers() throws Exception
    {
        return userMongoRepository.findAll();
    }

    public void updateUserProfile(User user) throws Exception {
        userMongoRepository.save(user);
    }

    public void registerStudent(User user) throws Exception {
        if (StringUtils.isEmpty(user.getUserId()))
            user.setUserId(null);

        userMongoRepository.save(user);
    }

    /*public List<User> getUsersByRoles(List<String> roles) {
        Criteria criteria = Criteria.where("userRoles").in(roles);
        return mongoTemplate.find(new Query(criteria), User.class);
    }*/

    public List<User> getUsersByRole(String roles) {
        Criteria criteria = Criteria.where("role").in(roles);
        return mongoTemplate.find(new Query(criteria), User.class);
    }

    public List<User> getAllUsersByRole(String x) throws Exception {

        return userMongoRepository.findByRole(x);

    }

    public void deleteSubject(String userId) throws Exception {
        userMongoRepository.delete(userId);
    }
}
