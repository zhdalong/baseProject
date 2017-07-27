package cn.sn.baseProject.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@ResponseBody  
	@RequestMapping("/list")  
	public Map<String,Object> list(ModelMap modelMap) {  
	    List<Map<String,Object>> list = new ArrayList<Map<String,Object>>(); 
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("name", "hanmeimei");
	    map.put("age", "15");
	    list.add(map);
	    
	    Map<String, Object> result = new HashMap<String, Object>();
	    result.put("total", 1);
	    result.put("rows", list);
	    
	    return result;  
	}  
}
