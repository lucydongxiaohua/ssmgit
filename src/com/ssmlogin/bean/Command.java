package com.ssmlogin.bean;

public class Command {
	private String user;
	
	private String device;
	private String name;
	private String macip;
	private String command;
	private String state;
	public String getDevice() {
		return device;
	}
	public void setDevice(String device) {
		this.device = device;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMacip() {
		return macip;
	}
	public void setMacip(String macip) {
		this.macip = macip;
	}
	public String getCommand() {
		return command;
	}
	public void setCommand(String command) {
		this.command = command;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Command [user=" + user + ", device=" + device + ", name="
				+ name + ", macip=" + macip + ", command=" + command
				+ ", state=" + state + "]";
	}
	
	
}
