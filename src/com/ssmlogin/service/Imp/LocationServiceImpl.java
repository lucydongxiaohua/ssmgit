package com.ssmlogin.service.Imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssmlogin.bean.Command;
import com.ssmlogin.bean.Location;
import com.ssmlogin.dao.LocationDao;
import com.ssmlogin.service.LocationService;
@Service
@Transactional
/*进行事务管理*/
public class LocationServiceImpl implements LocationService {

	 
	@Autowired
	private LocationDao locationDao;
	 
	/*public Location findLocation (Location location) {
		// TODO Auto-generated method stub
		 
		  return locationDao.findArea( location );
	}*/
	
	public Location findLocation ( String areaid, String x,String y,String width,String height) {
		// TODO Auto-generated method stub
	   
		 
		  return  locationDao.findArea (  areaid,  x,  y,  width,  height);
	}

	@Override
	public int sendCommand(Command command) {
		// TODO Auto-generated method stub
		//System.out.println(command);
		return locationDao.sendCommand(command);
	}
	public int sendCommand0() {
		// TODO Auto-generated method stub
		//System.out.println(command);
		return locationDao.sendCommand0();
	}
	
}
