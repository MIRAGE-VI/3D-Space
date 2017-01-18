package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import domain.Goods;

public class MyFavorites {
	HashMap<String,Goods> hm=new HashMap<String,Goods>();
	//��ӵ��ղؼ�
	public void AddGoodsToFavorites(String GoodsId){
		if(hm.containsKey(GoodsId))	{
			Goods goods=hm.get(GoodsId);
			int shoppingNum=goods.getG_shoppingNum();
			goods.setG_shoppingNum(shoppingNum+1);
		}else{
			hm.put(GoodsId, new GoodsService().getGoodsById(GoodsId));
		}
	}
	
	//׼���ղؼ���Ʒ�б�
	public ArrayList ShowMyFavorites(){
		ArrayList<Goods> al=new ArrayList<Goods>();
		//����HashMap
		Iterator iterator=hm.keySet().iterator();
		while(iterator.hasNext()){
			//ȡ��key
			String GoodsId=(String) iterator.next();
			Goods goods=hm.get(GoodsId);
			al.add(goods);
		}
		return al;
	}
	
	//���ղؼ�ɾ��һ����Ʒ
	public void DeleteFromFavorites(String GoodsId){
		hm.remove(GoodsId);
	}
}
