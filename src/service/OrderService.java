package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import domain.Goods;
import domain.User;
import util.SqlHelper;



public class OrderService extends SqlHelper{
    private  Connection ct = null;
    private  PreparedStatement ps = null;
    private  ResultSet rs = null;//��3��Ҳ����ͨ���̳�SqlHelper��ʵ��extends SqlHelper
    
	public void submitOrder(MyCart myCart,User user){
		String sql="insert into Orders values(0,?,?,current_timestamp)";//��һ���������������кţ����������ܴ�����
		try {
			ct=SqlHelper.getConnection();
		
			ps=ct.prepareStatement(sql);
			ps.setInt(1, user.getU_id());
			ps.setFloat(2, myCart.GetTotalPrice());
			ps.executeUpdate();
			//�õ��ող���Ķ����� 
			sql="select last_insert_id() from Orders";
			ps=ct.prepareStatement(sql);
			rs=ps.executeQuery();
			int OrderId=0;
			if(rs.next()){
				OrderId=rs.getInt(1);
			}
			ArrayList al=myCart.ShowMyCart();
			for(int i=0;i<al.size();i++){
				Goods goods=(Goods) al.get(i);
				sql="insert into OrderItems values(0,?,?,?)";//��һ�����Ƕ������ţ���Ҫ�������������ơ��ڶ����Ƕ����ţ�������һ��
				ps=ct.prepareStatement(sql);
				ps.setInt(1, OrderId);
				ps.setInt(2, goods.getG_id());
				ps.setInt(3, goods.getG_shoppingNum());
				ps.executeUpdate();
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			try {
				ct.rollback();
			} catch (Exception e2) {
				// TODO: handle exception
			}
			throw new RuntimeException(e.getMessage());
		}finally{
			SqlHelper.close(rs, ps, ct);
		}
	}
}
