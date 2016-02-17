/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.base.controller;

import com.base.DAO.CourseDAO;
import com.base.models.Courses;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Ohjelmistokehitys
 */
@Controller
public class AllController {

    @RequestMapping(value="/admin/all", method=RequestMethod.GET)
    public String renderCourse(ModelMap map){
          map.addAttribute("course", new Courses());
        try{
            map.addAttribute("courses", CourseDAO.getCourses());
        }catch(Exception e){
            e.printStackTrace();
        }
        return "course";
    }    
}
