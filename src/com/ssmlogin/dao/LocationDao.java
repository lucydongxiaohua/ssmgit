package com.ssmlogin.dao;

 

import com.ssmlogin.bean.Command;
import com.ssmlogin.bean.Location;
 
 

public interface LocationDao {
	public Location findArea(  String areaid, String x,String y,String width,String height );  
	 ////??????
	public int sendCommand(Command command) ;
	public int sendCommand0() ;
}
 
