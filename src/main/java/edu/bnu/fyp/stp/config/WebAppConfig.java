package edu.bnu.fyp.stp.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

/**
 * Created by Abdul Basit on 3/2/2016.
 */
public class WebAppConfig implements WebApplicationInitializer {

    public void onStartup(javax.servlet.ServletContext servletContext) throws ServletException {
        // Spring Core
        AnnotationConfigWebApplicationContext rootContext = new AnnotationConfigWebApplicationContext();
        rootContext.register(STPRootContext.class);

        /* Spring MVC Dispatcher Servlet */
        ServletRegistration.Dynamic dispatcher = servletContext.addServlet("stp", new DispatcherServlet(rootContext));
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/");
    }
}
