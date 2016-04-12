package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.Requirement;
import edu.bnu.fyp.stp.domain.repository.RequirementsMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by Rehan on 4/8/16.
 */

@Service
public class RequirementBL {

    @Autowired
    private RequirementsMongoRepository requirementsMongoRepository;

    @Autowired
    private MongoTemplate mongoTemplate;

    public void saveRequirement(Requirement requirement) throws Exception {
        if (StringUtils.isEmpty(requirement.getId()))
            requirement.setId(null);

        requirementsMongoRepository.save(requirement);
    }

    public List<Requirement> getRequirementlist() throws Exception
    {
        return requirementsMongoRepository.findAll();
    }

}
