package com.ssmlogin.dao;
import org.apache.ibatis.annotations.Param; 

import com.ssmlogin.bean.User;
/*�־ò�ӳ��ӿ�
 * 
 * */
public interface UserDao {

	//����û�
	public void addUser(User user);
	
	//�����û����������ѯ�û�
	//ע��������������Զ���װ��map���ϣ������ڼ�Ϊ��
	public User findUserByNameAndPwd(@Param("name") String name,@Param("password") String password);
	
}
