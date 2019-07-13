package com.qf.controller;

import com.qf.pojo.User;
import com.qf.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;

@RequestMapping("/user")
@SessionAttributes(names = {"user"})
@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private SecurityManager securityManager;
    @RequestMapping(value = "log")
    public String tmp1(HttpSession session){
        session.invalidate();
        return "login";
    }
    @RequestMapping(value = "reg")
    public String tmp2(){
        return "register";
    }
    @RequestMapping(value = "login")
    public String login(String username, String password, Model model){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        User u = userService.login(user);
        System.out.println("u = " + u);
        if(u!= null){
            model.addAttribute("user",u);
            return "redirect:/profile/home";
        }else{
            return "login";
        }
    }
    @RequestMapping(value = "registerR")
    public String register(String username,String password){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        userService.register(user);
        return "login";
    }
    @RequestMapping("unauthorize")
    public String unauthorize(){
        return "unauthorize";
    }

    @RequestMapping(value="loginR")
    public String login(User user, Model model){
        SecurityUtils.setSecurityManager(securityManager);
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(user.getUsername(), user.getPassword());
        try{
            subject.login(usernamePasswordToken);

            if(subject.isAuthenticated()){
                User u = userService.login(user);
                user.setUid(u.getUid());
                model.addAttribute("user",user);
                return "redirect:/profile/home";
            }
        }catch (AuthenticationException e){
            System.out.println("登录失败");
        }
        return "login";


    }
}
