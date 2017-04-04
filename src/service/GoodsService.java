package service;

import java.util.ArrayList;

import util.SqlHelper;
import domain.Goods;

public class GoodsService {
	public Goods getGoodsById(String GoodsId){
		Goods goods=new Goods();
		String sql="select * from Goods where G_id=?";
		String parameters[]={GoodsId};
		ArrayList al=new SqlHelper().executeQuery(sql, parameters);
		if(al.size()==1){
			Object object[]=(Object[]) al.get(0);
			goods.setG_id(Integer.parseInt(object[0].toString()));
			goods.setG_name(object[1].toString());
			goods.setG_price(object[2].toString());
			goods.setG_material(object[3].toString());
			goods.setG_color(object[4].toString());
			goods.setG_num(Integer.parseInt(object[5].toString()));
			goods.setG_shoppingNum(Integer.parseInt(object[6].toString()));
		}
		return goods;
	}
<<<<<<< HEAD
    public ArrayList<Goods> getAll() {
    	ArrayList<Goods> list = new ArrayList<Goods>();
     // Goods goods=new Goods();
    	String sql="select * from Goods";
		String parameters[]= null;
		ArrayList al=new SqlHelper().executeQuery(sql, parameters);
    	for(int i = 0; i < al.size(); i ++) {
    		Object object[]=(Object[]) al.get(i);
    		Goods goods=new Goods();
			goods.setG_id(Integer.parseInt(object[0].toString()));
			goods.setG_name(object[1].toString());
			goods.setG_price(object[2].toString());
			goods.setG_material(object[3].toString());
			goods.setG_color(object[4].toString());
			goods.setG_num(Integer.parseInt(object[5].toString()));
			goods.setG_shoppingNum(Integer.parseInt(object[6].toString()));
			list.add(goods);
    	}
    	
    	return list;
    }
    public ArrayList<Goods> getByNameLike(String partOfName) {
    	ArrayList<Goods> list = new ArrayList<Goods>();
     // Goods goods=new Goods();
    	String sql="select * from Goods where G_name like '%" + partOfName + "%'";
		//String parameters[]= {partOfName};
    	String parameters[] = null;
		ArrayList al=new SqlHelper().executeQuery(sql, parameters);
    	for(int i = 0; i < al.size(); i ++) {
    		Object object[]=(Object[]) al.get(i);
    		Goods goods=new Goods();
			goods.setG_id(Integer.parseInt(object[0].toString()));
			goods.setG_name(object[1].toString());
			goods.setG_price(object[2].toString());
			goods.setG_material(object[3].toString());
			goods.setG_color(object[4].toString());
			goods.setG_num(Integer.parseInt(object[5].toString()));
			goods.setG_shoppingNum(Integer.parseInt(object[6].toString()));
			list.add(goods);
    	}
    	
    	return list;
    }
    
=======

>>>>>>> 03f86a12ee4e81a41c4c70c02f0595697cb7bf3d
}
