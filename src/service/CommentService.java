package service;

import java.util.ArrayList;

import util.SqlHelper;
import domain.*;

public class CommentService {
	
    public ArrayList<Comment> getAllbyGoods(String goodID) {
    	ArrayList<Comment> list = new ArrayList<Comment>();
     // Goods goods=new Goods();
    	String sql="select * from comment where G_id =?";
		String parameters[]= {goodID};
		ArrayList al=new SqlHelper().executeQuery(sql, parameters);
    	for(int i = 0; i < al.size(); i ++) {
    		Object object[]=(Object[]) al.get(i);
    		Comment c=new Comment();
			c.setC_id(Integer.parseInt(object[0].toString()));
			c.setU_id(Integer.parseInt(object[1].toString()));
			c.setG_id(Integer.parseInt(object[2].toString()));
			c.setC_Comment(object[3].toString());
			c.setC_time(object[4].toString());
			list.add(c);
    	}
    	
    	return list;
    }
   public void insertComment(int U_id,int G_id,String C_comment,String C_time) {
	   String sql = "insert into comment values(null,?,?,?,?)";
	   String parameters[]= {U_id+"",G_id+"",C_comment,C_time};
	   SqlHelper.executeUpdate(sql,parameters);
   }
}
