package sist.bean;

public class ReplyBean {
   private int no;
   private String contents;
   private String id;
   private String regdate;
   private int ref; //그룹번호
   private int pnum; //부모번호
   private int reply; //답글수
   private int infoPk;  //글번호	

   
   public ReplyBean(){
	   super();
   }
   
   
   public ReplyBean(int no, String contents, String id, String regdate, int ref, int pnum, int reply, int infoPk) {
	super();
	this.no = no;
	this.contents = contents;
	this.id = id;
	this.regdate = regdate;
	this.ref = ref;
	this.pnum = pnum;
	this.reply = reply;
	this.infoPk = infoPk;
}



public int getNo() {
	return no;
}



public void setNo(int no) {
	this.no = no;
}



public String getContents() {
	return contents;
}



public void setContents(String contents) {
	this.contents = contents;
}



public String getId() {
	return id;
}



public void setId(String id) {
	this.id = id;
}



public String getRegdate() {
	return regdate;
}



public void setRegdate(String regdate) {
	this.regdate = regdate;
}



public int getRef() {
	return ref;
}



public void setRef(int ref) {
	this.ref = ref;
}



public int getPnum() {
	return pnum;
}



public void setPnum(int pnum) {
	this.pnum = pnum;
}



public int getReply() {
	return reply;
}



public void setReply(int reply) {
	this.reply = reply;
}



public int getInfoPk() {
	return infoPk;
}



public void setInfoPk(int infoPk) {
	this.infoPk = infoPk;
}



@Override
public String toString() {
	return "ReplyBean [no=" + no + ", contents=" + contents + ", id=" + id + ", regdate=" + regdate + ", ref=" + ref
			+ ", pnum=" + pnum + ", reply=" + reply + ", infoPk=" + infoPk + "]";
}
   
   
   
   
	
}
