package com.ssmlogin.bean;

public class Location {
	private String area;
	private String areaid;
	private String x;
	private String y;
	private String width;
	private String height;
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getAreaid() {
		return areaid;
	}

	public void setAreaid(String areaid) {
		this.areaid = areaid;
	}

	public String getX() {
		return x;
	}

	public void setX(String x) {
		this.x = x;
	}

	public String getY() {
		return y;
	}

	public void setY(String y) {
		this.y = y;
	}

	public String getWidth() {
		return width;
	}

	public void setWidth(String width) {
		this.width = width;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	@Override
	public String toString() {
		return "Location [area=" + area + ", areaid=" + areaid + ", x=" + x
				+ ", y=" + y + ", width=" + width + ", height=" + height + "]";
	}

	/*@Override
	public String toString() {
		return "Location [area=" + area + ", areaid=" + areaid + ", x=" + x
				+ ", y=" + y + ", width=" + width + ", height=" + height + "]";
	}
*/
	 
	

}
