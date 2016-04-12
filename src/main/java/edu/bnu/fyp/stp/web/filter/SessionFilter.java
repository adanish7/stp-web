package edu.bnu.fyp.stp.web.filter;

import edu.bnu.fyp.stp.domain.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Abdul Basit on 4/11/2016.
 */
public class SessionFilter implements Filter {
    private Logger logger = LoggerFactory.getLogger(SessionFilter.class);

    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        List<String> pathsToBypass = Arrays.asList("index", "Index.jsp", "login", "Login.jsp", "css","js", "jpg", "png", "ico","jpeg","svg","otf","eot","ttf","wotf");

        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String path = httpServletRequest.getServletPath();
        logger.info("Filtering: {}", path);

        boolean checkUserSession = true;
        boolean isAuthorized = false;

        for (String pathToBypass : pathsToBypass) {
            if (path.endsWith(pathToBypass)) {
                checkUserSession = false;
            }
        }

        if (checkUserSession) {
            HttpSession session = httpServletRequest.getSession(false);

            /* if user is not logged in */
            if (session != null && session.getAttribute("user") != null) {
                User user = (User) session.getAttribute("user");
                isAuthorized = checkUserAccessRights(user, path);

                if (!isAuthorized)
                    session.invalidate();
            }
        } else {
            isAuthorized = true;
        }

        if (isAuthorized) {
            chain.doFilter(request, response);
        } else {
            logger.info("User is UnAuthorized");
            ((HttpServletResponse) response).sendRedirect(httpServletRequest.getContextPath() + "/login");
        }
    }

    public void destroy() {

    }

    private boolean checkUserAccessRights(User user, String path) {
        return true;
    }
}
