package com.ssmlogin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssmlogin.bean.User;
import com.ssmlogin.service.UserService;

/**
 * ���Ʋ�
 * @author dong
 *
 */
@Controller
@RequestMapping("/user")
public class UserAction {
	
	//ע��Service
	@Autowired
	private UserService userService;
	@RequestMapping("regist")
	public String  regist (User user,Model model){
		    System.out.println("�û�ע�᣺"+user.getName()+user.getPassword());  
         
	       /* user.setId(10);//????????????  */
	        userService.regist(user);  
	          
	        model.addAttribute("msg", "ע��ɹ�,�����µ�½");  
	        
	        
	      // Content("<script> alert('ע��ɹ�'); </script>"); 
	       // return "<script type=text/javascript>alert(' ע��ɹ�');window.location.href='login';</script>";  
	        //("<script language='javascript' type='text/javascript'>alert('��֤������������������룡');history.go(-1);location.reload();</script>");
	        //ע��ɹ�����תsuccess.jspҳ��  
	 return "relogin";
		
	}
	/*private String Content(String string) {
		// TODO Auto-generated method stub
		return null;
	}*/
	@RequestMapping("login")  
    public String login(String name,String password,Model model){  
          
        System.out.println("�û���¼��"+name+password);  
          
       /* Map<String, String> map=new LinkedHashMap<String,String>(); 
         
        map.put("name", user.getName()); 
        map.put("password",user.getPassword());  */
          
        User user = userService.login(name,password); //////����ֵ�ж�
        System.out.println(user);
           if( null==user) 
       /* alert("�û����������������"); */
        	{model.addAttribute("msg", "��¼ʧ��"); 
        	   return "error";    }
        else {
          System.out.println("�û���¼��"+name+password); 
         
           model.addAttribute("msg", "��¼�ɹ�");  
          
        return "xtjc"; } 
    }
	 
}
