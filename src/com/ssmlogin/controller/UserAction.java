package com.ssmlogin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssmlogin.bean.User;
import com.ssmlogin.service.UserService;

/**
 * 控制层
 * @author dong
 *
 */
@Controller
@RequestMapping("/user")
public class UserAction {
	
	//注入Service
	@Autowired
	private UserService userService;
	@RequestMapping("regist")
	public String  regist (User user,Model model){
		    System.out.println("用户注册："+user.getName()+user.getPassword());  
         
	       /* user.setId(10);//????????????  */
	        userService.regist(user);  
	          
	        model.addAttribute("msg", "注册成功,请重新登陆");  
	        
	        
	      // Content("<script> alert('注册成功'); </script>"); 
	       // return "<script type=text/javascript>alert(' 注册成功');window.location.href='login';</script>";  
	        //("<script language='javascript' type='text/javascript'>alert('验证码输入错误！请重新输入！');history.go(-1);location.reload();</script>");
	        //注册成功后跳转success.jsp页面  
	 return "relogin";
		
	}
	/*private String Content(String string) {
		// TODO Auto-generated method stub
		return null;
	}*/
	@RequestMapping("login")  
    public String login(String name,String password,Model model){  
          
        System.out.println("用户登录："+name+password);  
          
       /* Map<String, String> map=new LinkedHashMap<String,String>(); 
         
        map.put("name", user.getName()); 
        map.put("password",user.getPassword());  */
          
        User user = userService.login(name,password); //////返回值判断
        System.out.println(user);
           if( null==user) 
       /* alert("用户名或密码输入错误"); */
        	{model.addAttribute("msg", "登录失败"); 
        	   return "error";    }
        else {
          System.out.println("用户登录："+name+password); 
         
           model.addAttribute("msg", "登录成功");  
          
        return "xtjc"; } 
    }
	 
}
