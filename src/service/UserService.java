package service;

import java.sql.ResultSet;
import java.util.ArrayList;

import util.MD5_test;
import util.SqlHelper;



import domain.Goods;
import domain.User;




public class UserService {
	//写一个验证用户是否合法的函数
	public boolean checkUser(User user){
		//到数据库中取验证
		
		//使用SqlHelper来完成查询任务
		String sql="select * from  User where U_name='" + user.getU_name() +"' and U_password=?";
		System.out.print(sql);
		String parameters[]={MD5_test.MD5(user.getU_password())};//将用户输入的密码用MD5算法加密，再和数据库验证
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
	public String findById(int id) {
		String sql="select U_name from  User where U_id=" + id;
		String parameters[]= null;//将用户输入的密码用MD5算法加密，再和数据库验证
		ArrayList al=new SqlHelper().executeQuery(sql, parameters);
		Object [] objects=(Object[]) al.get(0);
		return (String) objects[0];
	}
	public User findByName(String name) {
		User u =new User();
		String sql="select * from user where U_name ='" + name + "'";
		String parameters[]= null;
		ArrayList al=new SqlHelper().executeQuery(sql, parameters);
		if(al.size()==1){
			Object object[]=(Object[]) al.get(0);
			u.setU_id(Integer.parseInt(object[0].toString()));
			u.setU_name(object[1].toString());
			u.setU_email(object[2].toString());
			u.setU_password(object[3].toString());
			u.setU_phoneNumber(object[4].toString());
			u.setU_address(object[5].toString());
			
		}
		return u;
	}
	//添加
	public boolean addUser(User user){
		boolean b=true;//
		//String sql2 = "select * from user where U_name = "
		//String sql2="select * from  User where U_name=";
	//	String parameters2[]= {user.getU_name()};
		String sql2 = "select * from user where U_name = '" +user.getU_name() + "'";
		String parameters2[]= null;
		ArrayList al=new SqlHelper().executeQuery(sql2, parameters2);
		if(al.size()  != 0) {
			return false;
		}
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
