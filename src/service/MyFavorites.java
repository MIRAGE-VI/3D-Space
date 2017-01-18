package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import domain.Goods;

public class MyFavorites {
	HashMap<String,Goods> hm=new HashMap<String,Goods>();
	//添加到收藏夹
	public void AddGoodsToFavorites(String GoodsId){
		if(hm.containsKey(GoodsId))	{
			Goods goods=hm.get(GoodsId);
			int shoppingNum=goods.getG_shoppingNum();
			goods.setG_shoppingNum(shoppingNum+1);
		}else{
			hm.put(GoodsId, new GoodsService().getGoodsById(GoodsId));
		}
	}
	
	//准备收藏夹商品列表
	public ArrayList ShowMyFavorites(){
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
	
	//从收藏夹删除一个商品
	public void DeleteFromFavorites(String GoodsId){
		hm.remove(GoodsId);
	}
}
