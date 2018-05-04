package Bean;

import entity.studentInfo;

public class studentManagementBean {
	studentInfo[] c = new studentInfo[100];
	int count = 0;
	public studentInfo[] getC() {
		return c;
	}
	public void setC(studentInfo s) {
		if(count == 0) {
			c[0] = s;
			count++;
		}
		for (int i = 0; i < count; i++) {
			if (c[i].getSname().equals(s.getSname())) {
				if (s.getSub().equals("yuwen")) {
					c[i].setYuwen(s.getYuwen());
				}
				if (s.getSub().equals("shuxue")) {
					c[i].setShuxue(s.getShuxue());
				}
				if (s.getSub().equals("yingyu")) {
					c[i].setYingyu(s.getYingyu());
				}
			}
			else {
				c[i] = s;
				count++;
			}
		
		}
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
}
