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
    private  ResultSet rs = null;//这3句也可以通过继承SqlHelper来实现extends SqlHelper
    
	public void submitOrder(MyCart myCart,User user){
		String sql="insert into Orders values(0,?,?,current_timestamp)";//第一个数订单号是序列号，自增长功能待完善
		try {
			ct=SqlHelper.getConnection();
		
			ps=ct.prepareStatement(sql);
			ps.setInt(1, user.getU_id());
			ps.setFloat(2, myCart.GetTotalPrice());
			ps.executeUpdate();
			//得到刚刚插入的订单号 
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
				sql="insert into OrderItems values(0,?,?,?)";//第一个数是订单详表号，需要自增长，待完善。第二个是订单号，与上面一致
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
