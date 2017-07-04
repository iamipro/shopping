package sist.bean;

public class ShoppingBasket {
  
  private int pk;

  
  
public ShoppingBasket() {
	super();
}

public ShoppingBasket(int pk) {
	super();
	this.pk = pk;
}

public int getPk() {
	return pk;
}

public void setPk(int pk) {
	this.pk = pk;
}

@Override
public String toString() {
	return "ShoppingBasket [pk=" + pk + "]";
}
	
	
}
