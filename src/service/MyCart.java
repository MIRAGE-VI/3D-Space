package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import domain.Goods;



public class MyCart {
	HashMap<String,Goods> hm=new HashMap<String,Goods>();
	//��ӵ����ﳵ,������ﳵ�����Ѿ��У��������+1
	public void AddGoodsToCart(String GoodsId){
		if(hm.containsKey(GoodsId))	{
			Goods goods=hm.get(GoodsId);
			int shoppingNum=goods.getG_shoppingNum();
			goods.setG_shoppingNum(shoppingNum+1);
		}else{
			hm.put(GoodsId, new GoodsService().getGoodsById(GoodsId));
		}
	}
	//׼�����ﳵ��Ʒ�б�
	public ArrayList ShowMyCart(){
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
	//�����ܼ۸�
	public float GetTotalPrice(){
		float totalPrice=0.0f;
		ArrayList<Goods> al=new ArrayList<Goods>();
		//����HashMap
		Iterator iterator=hm.keySet().iterator();
		while(iterator.hasNext()){
			//ȡ��key
			String GoodsId=(String) iterator.next();
			Goods goods=hm.get(GoodsId);
			totalPrice+=Integer.parseInt(goods.getG_price())*goods.getG_shoppingNum();
		}
		return totalPrice;
	}
	//�ӹ��ﳵɾ��һ����Ʒ
	public void DeleteFromCart(String GoodsId){
		hm.remove(GoodsId);
	}
	
	//����
	public void updateBook(String GoodsId,String UpdateShoppingNum){
		Goods goods=hm.get(GoodsId);
		goods.setG_shoppingNum(Integer.parseInt(UpdateShoppingNum));
	}
}
