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

}
