package com.ssmlogin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssmlogin.bean.Location;
import com.ssmlogin.service.LocationService;


 /**
  * ���Ʋ�
  * @author dong
  *
  */
 
 @Controller
 
 @RequestMapping("/location")//???????????????????????
public class LocationAction {

	 
	 //ע��Service
	  @Autowired
	  private LocationService locationService;	
	  @RequestMapping("findlocation")
	  
	  @ResponseBody
	/*  ���ؽ������Ϊjson*/
	  
	  public Location findLocation ( String areaid, String x,String y,String width,String height) {
		/*  Location locationabc=new Location();
		  locationabc=locationService.findLocation(  areaid,  x,  y,  width,  height);
		  System.out.println(locationabc);
		  return locationabc;*/
		 
	  
		 return  locationService.findLocation(  areaid,  x,  y,  width,  height);
		}
	  
	 /*public  Location findlocation (  ){
		 
		  locationService.findLocation(location);
		 List<Location> locationList = new ArrayList<Location>();
		 System.out.println("��λԪ�أ�"+location .getAreaid()+location.getX()+location.getY()+location.getWidth()+location.getHeight() );
		
		System.out.println("��λԪ�أ�"+locationList.get(0));
	     Location location0 = new Location();
		 location0.setAreaid("areaid");
		 Location location1 = new Location();
		 location1.setHeight("height"); 
		 Location location2 = new Location();
		 location2.setWidth("width");  
		 Location location3 = new Location();
		 location3.setX("x");
		 Location location4 = new Location();
		 location4.setX("y");
		 locationList.add(location0);
         locationList.add(location1);
         locationList.add(location2);
         locationList.add(location3);
         locationList.add(location4);
		 
        //���������
        while(rs.next())
        {
        	Location location0= new Location();
        	
        }
		 
		 return location;
		 
	 }
	 */
	 
	  /*@RequestMapping("/checkUsername")
	        public @ResponseBody List<User> CheckUsername(User user)
	      {
	         System.out.println(user.getUsername());
	        List<User> userList = new ArrayList<User>();
	        User user0 = new User();
	         user0.setUsername("java");
	        User user1 = new User();
	         user1.setUsername("javase");
	           User user2 = new User();
	         user2.setUsername("javaee");
	       //������뼯��
             userList.add(user0);
	           userList.add(user1);
	            userList.add(user2);
	          return userList;
	        }*/

	  
	  
	 
}
 
 
 
