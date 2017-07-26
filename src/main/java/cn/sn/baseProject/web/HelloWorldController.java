package cn.sn.baseProject.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {
	
	@RequestMapping("/helloworld")
	public String hello(HttpServletRequest request,HttpServletResponse response){
		
		return "success";
	}
	@RequestMapping("/hello")
	public String hello1(HttpServletRequest request,HttpServletResponse response){
		
		return "user/hello1";
	}
}
