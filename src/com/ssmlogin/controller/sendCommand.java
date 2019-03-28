package com.ssmlogin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssmlogin.bean.Command;
import com.ssmlogin.service.LocationService;
@Controller
@RequestMapping("/send")
	

public class sendCommand {
	@Autowired
	private LocationService locationService;

	@RequestMapping("command")
	@ResponseBody
	/*返回前台的数据类型为json*/
	public String sendcommand (Command command)	{
		locationService.sendCommand( command);
		
		
		
		return "{\"success\":true}";
	}
		
	@RequestMapping("command0")
	@ResponseBody
	public String sendcommand0( )	{
		locationService.sendCommand0( );
		
		
	
		return "{\"success\":true}";
	}

	 
}
