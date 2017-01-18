package service;

import java.sql.ResultSet;
import java.util.ArrayList;

import util.MD5_test;
import util.SqlHelper;



import domain.User;




public class UserService {
	//дһ����֤�û��Ƿ�Ϸ��ĺ���
	public boolean checkUser(User user){
		//�����ݿ���ȡ��֤
		
		//ʹ��SqlHelper����ɲ�ѯ����
		String sql="select * from  User where U_phoneNumber=? and U_password=?";
		String parameters[]={user.getU_phoneNumber(),MD5_test.MD5(user.getU_password())};//���û������������MD5�㷨���ܣ��ٺ����ݿ���֤
		ArrayList al=new SqlHelper().executeQuery(sql, parameters);
		if(al.size()==0){
			return false;
		}else{
			Object [] objects=(Object[]) al.get(0);
			user.setU_name((String) objects[1]);
			
			user.setU_email((String) objects[2]);
			user.setU_phoneNumber((String) objects[4]);
			user.setU_address((String) objects[5]);
			return true;
		}
	}
	
	//���
	public boolean addUser(User user){
		boolean b=true;
		String sql="insert into User values(0,?,?,?,?,?)";
		String parameters[]={user.getU_name(),user.getU_email(),user.getU_password(),user.getU_phoneNumber(),user.getU_address()};
		
		try {
			SqlHelper.executeUpdate(sql, parameters);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			b=false;
		}
		return b;
	}
}
