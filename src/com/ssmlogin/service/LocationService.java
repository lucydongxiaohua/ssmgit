package com.ssmlogin.service;

import com.ssmlogin.bean.Command;
import com.ssmlogin.bean.Location;


public interface LocationService {
	Location findLocation (String areaid, String x,String y,String width,String height  );
    int sendCommand(Command command);
    int sendCommand0( );
}
