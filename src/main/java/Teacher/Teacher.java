package Teacher;

public class Teacher {
	private String teacherID;
	private String teacherName;
	private float salary;
	public Teacher() {};
	public Teacher(String teacherID,String teacherName,float salary) {
		super();
		this.teacherID=teacherID;
		this.teacherName=teacherName;
		this.salary=salary;
	}
	public String getteacherID() {
		return teacherID;
	}
	public void setteacherID(String teacherID) {
		this.teacherID=teacherID;
	}
	public String getteacherName() {
		return teacherName;
	}
	public void setteacherName(String teacherName) {
		this.teacherName=teacherName;
	}
	public float getsalary() {
		return salary;
	}
	public void setsalary(float salary) {
		this.salary=salary;
	}
}
