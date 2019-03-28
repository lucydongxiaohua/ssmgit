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
	/*����ǰ̨����������Ϊjson*/
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
