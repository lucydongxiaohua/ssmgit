package com.ssmlogin.bean;

public class Group {
	int id;// 分组编号
	String name;
	int state;
	int family;// 父类编号

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getFamily() {
		return family;
	}

	public void setFamily(int family) {
		this.family = family;
	}

	public Group(int id, String name, int state, int family) {

		this.id = id;
		this.name = name;
		this.state = state;
		this.family = family;
	}

	public Group() {

	}

	@Override
	public String toString() {
		return "Group [id=" + id + ", name=" + name + ", state=" + state
				+ ", family=" + family + "]";
	}

}
