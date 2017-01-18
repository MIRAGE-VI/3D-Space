package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import domain.Goods;

public class MyOrder {
	HashMap<String,Goods> hm=new HashMap<String,Goods>();
	//添加到订单
	public void AddGoodsToMyOrder(String GoodsId){
		if(hm.containsKey(GoodsId))	{
			Goods goods=hm.get(GoodsId);
			int shoppingNum=goods.getG_shoppingNum();
			goods.setG_shoppingNum(shoppingNum+1);
		}else{
			hm.put(GoodsId, new GoodsService().getGoodsById(GoodsId));
		}
	}
	
	//准备订单商品列表
	public ArrayList ShowMyOrder(){
		ArrayList<Goods> al=new ArrayList<Goods>();
		//遍历HashMap
		Iterator iterator=hm.keySet().iterator();
		while(iterator.hasNext()){
			//取出key
			String GoodsId=(String) iterator.next();
			Goods goods=hm.get(GoodsId);
			al.add(goods);
		}
		return al;
	}
	//计算总价格
	public float GetTotalPrice(){
		float totalPrice=0.0f;
		ArrayList<Goods> al=new ArrayList<Goods>();
		//遍历HashMap
		Iterator iterator=hm.keySet().iterator();
		while(iterator.hasNext()){
			//取出key
			String GoodsId=(String) iterator.next();
			Goods goods=hm.get(GoodsId);
			totalPrice+=Integer.parseInt(goods.getG_price())*goods.getG_shoppingNum();
		}
		return totalPrice;
	}
	//从订单删除一个商品
	public void DeleteFromMyOrder(String GoodsId){
		hm.remove(GoodsId);
	}
}
