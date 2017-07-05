package util;

import java.util.ArrayList;

public class test {

	public static void main(String[] args) {
 
		ArrayList<String> list2 = new ArrayList<String>();
		int pk = 42;
		String pk2 = String.valueOf(pk);
		String basket = "13,42,41,53,1,2,3,";
		String[] m2 = basket.split(",");
		int[] m = new int[m2.length];
		for (int i = 0; i < m2.length; i++) {
			list2.add(m2[i]);
			if (m2[i].equals(pk2)) {
				list2.remove(i);
			}
			 
			
		}
		String temp = "";
		for (int j = 0; j < list2.size(); j++) {
			temp += list2.get(j) + ",";

		}
            System.out.println(temp);
             System.out.println(list2);
	}
}
