package com.qf.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.pojo.Profile;
import com.qf.pojo.User;
import com.qf.service.ProfileService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
@Controller
@RequestMapping("profile")
public class ProfileController {
    @Autowired
    private ProfileService profileService;


    @RequestMapping("home")
    public String home(Model model, @RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn, HttpSession session){
        int uid = ((User)session.getAttribute("user")).getUid();
        System.out.println(uid+"&&&&&&&&&&&&&&&&&&");
        PageHelper.startPage(pn,5);
        List<Profile> allProfile = profileService.getAllProfile(uid);
        PageInfo pageInfo = new PageInfo(allProfile,5);//将查询出来的结果装入pageInfo对象中
        model.addAttribute("pageInfo",pageInfo);
        return "profileHome";
    }
    @RequestMapping("updatePre")
    public String updatePre(int id,Model model){
        Profile profile = profileService.getProfileById(id);
        model.addAttribute("profile",profile);
        return "update";
    }

    @RequestMapping("update")
    public String update(HttpServletRequest request,int id, String name, String birthday, String gender, String career,
                         String address, String mobile, MultipartFile picture ){
        if(picture.getSize()==0){
            System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&");
            System.out.println("图片为空"+picture.getSize());
            System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&");
            Profile profile = new Profile(id,name,birthday,gender,career,address,mobile);
            profileService.updateProfile(profile);
        }else{
            System.out.println("%%%%%%%%%%%%%%%%%"+picture.getSize());
            String originalFilename = picture.getOriginalFilename();
            String path = request.getServletContext().getRealPath("/img");
            File file = new File(path);
            if(!file.exists()){
                file.mkdir();
            }
            File itemFile = new File(file, originalFilename);
            try {
                picture.transferTo(itemFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
            Profile profile = new Profile(id,name,birthday,gender,career,address,mobile,originalFilename);
            profileService.updateProfile(profile);
        }

        return "forward:/profile/home";
    }
    @RequestMapping("detail")
    public String detail(int id,Model model){
        Profile profile = profileService.getProfileById(id);
        model.addAttribute("profile",profile);
        return "detail";
    }
    @RequestMapping(value = "delete/{id}",method = RequestMethod.DELETE,produces = "application/json;charset=utf-8")
    @ResponseBody
    public Profile delete(@PathVariable(name="id")int id){
        String name = profileService.getProfileById(id).getName();
        profileService.deleteProfile(id);
        Profile profile = new Profile();
        profile.setName(name);
        /*JSONObject jsonObject = new JSONObject();
        jsonObject.element("resp","success");
        return jsonObject.toString();*/
        return profile;
    }

}
