package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.domain.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import edu.bnu.fyp.stp.bl.ManageUserBL;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class LoginController {

    @Autowired
    private ManageUserBL manageUserBL;

    @RequestMapping("/login")
    public String showLogin(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return "Login";
    }

    @RequestMapping(value = "/user/login" , method = RequestMethod.POST)
    public String userLogin(@Valid @ModelAttribute User user, BindingResult bindingResult, ModelMap modelMap, HttpServletRequest request) {

        String email = user.getEmail();
        String password = user.getPassword();

        User user1 = new User();

        try {
            if (bindingResult.hasErrors()) {
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());
            }
            user1 = manageUserBL.getUserByEmailAndPassword(email, password);
            if ((!user1.getEmail().equals("")) && (!user1.getPassword().equals(""))) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user1);

                if (user1.getRole().equals("student")) {

                    return "StudentDashboard";
                }
                else if (user1.getRole().equals("tutor")) {

                    return "TutorDashboard";
                }
                else if (user1.getRole().equals("admin")) {

                    return "AdminDashboard";
                }
            }
        } catch (Exception e) {

        }
        modelMap.put("error", "Invalid username/password");
        return "Login";
    }

    @RequestMapping("/logout")
    public String logoutUser(HttpServletRequest request) {
        HttpSession session = request.getSession(false);

        if (session != null) {
            /* clear everything inside this session memory */
            session.invalidate();
        }

        return "/login";
    }
}
