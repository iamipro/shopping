package sist.bean;

public class Basket {
  private String basket;

  
  
public Basket() {
	super();
}



public Basket(String basket) {
	super();
	this.basket = basket;
}



public String getBasket() {
	return basket;
}



public void setBasket(String basket) {
	this.basket = basket;
}



@Override
public String toString() {
	return "Basket [basket=" + basket + "]";
}
  
  
	
}
