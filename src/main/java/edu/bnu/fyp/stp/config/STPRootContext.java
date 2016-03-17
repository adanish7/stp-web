package edu.bnu.fyp.stp.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * Created by Rehan on 3/7/16.
 */
@Configuration
@ComponentScan("edu.bnu.fyp.stp")
@Import({ WebMvcConfig.class, MongoConfig.class})
public class STPRootContext {
}
