package UpdateTrains;

public class Current_trains {
	int tId;
	
	//getters and setters for set and get values
	public int gettId() {              
		return tId;
	}                                            //encapsulation using
	public void settId(int tId) {
		this.tId = tId;
	}
	public String getT_from() {
		return t_from;
	}
	public void setT_from(String t_from) {
		this.t_from = t_from;
	}
	public String getT_to() {
		return t_to;
	}
	public void setT_to(String t_to) {
		this.t_to = t_to;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	String t_from; 
	String t_to;
	String price;
	String tname;
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
}
