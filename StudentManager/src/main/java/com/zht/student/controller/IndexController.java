package com.zht.student.controller;

import com.zht.student.pojo.Studentinfo;
import com.zht.student.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-03 16:37
 */
@Controller
public class IndexController {

    @Resource
    StudentService studentService;

    @RequestMapping("/")
    public String info(Model model){
        List<Studentinfo> studentinfos = studentService.selAll();
        model.addAttribute("student",studentinfos);
        return "index";
    }

    @RequestMapping("/upd/{id}")
    public String upd(@PathVariable int id,Model model){
        Studentinfo studentinfo = studentService.selById(id);
        model.addAttribute("studentinfo",studentinfo);
        return "upd";
    }

    @RequestMapping("/upds")
    public String  upds(Studentinfo studentinfo, HttpSession session){
        int upd = studentService.upd(studentinfo);
        if (upd > 0){
            session.setAttribute("msg","更新成功");
        }else{
            session.setAttribute("msg","更新失败");
        }
        return "redirect:/";
    }
}
