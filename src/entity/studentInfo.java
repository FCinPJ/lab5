package entity;

public class studentInfo {
	String sname;		//学生姓名
	int cname;		//班级名称
	String sub;			//学科名
	double yuwen;		//语文成绩
	double shuxue;		//数学成绩
	double yingyu;		//英语成绩
	
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	
	public studentInfo(String sname, int cname, String sub,double chengji) {
		super();
		this.sname = sname;
		this.cname = cname;
		this.sub = sub;
		if (sub.equals("yuwen")) {
			yuwen = chengji;
		}
		if (sub.equals("shuxue")) {
			shuxue = chengji;
		}
		if (sub.equals("yingyu")) {
			yingyu = chengji;
		}
	}
	public double getYuwen() {
		return yuwen;
	}
	public void setYuwen(double yuwen) {
		this.yuwen = yuwen;
	}
	public double getShuxue() {
		return shuxue;
	}
	public void setShuxue(double shuxue) {
		this.shuxue = shuxue;
	}
	public double getYingyu() {
		return yingyu;
	}
	public void setYingyu(double yingyu) {
		this.yingyu = yingyu;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getCname() {
		return cname;
	}
	public void setCname(int cname) {
		this.cname = cname;
	}
	
	
}
