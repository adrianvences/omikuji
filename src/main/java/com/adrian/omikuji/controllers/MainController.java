package com.adrian.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
  // create
  @RequestMapping("/omikuji")
  public String index() {
    return "index.jsp";
  }
  
  @PostMapping("/omikuji/show")
  public String createBook(
      @RequestParam("city") String city,
      @RequestParam("name") String name,
      @RequestParam("hobby") String hobby,
      @RequestParam("thing") String thing,
      @RequestParam("compliment") String compliment, HttpSession session
  )
  {
    System.out.println(city);
    session.setAttribute("city",city);
    session.setAttribute("name",name);
    session.setAttribute("hobby",hobby);
    session.setAttribute("thing",thing);
    session.setAttribute("compliment",compliment);
    return "redirect:/omikuji/show";
  }

  //read one
  @RequestMapping("/omikuji/show")
  public String show(){
    return "show.jsp";
  }

}
