public class Test_DTO {
	private String text;
	private int num;
	
	public Test_DTO(String text,int num) {
		this.text = text;
		this.num = num;
	}
	
	public void setText(String text) {
		this.text = text;
	}
	
	public String getText() {
		return text;
	}
	
	public void setNum(int num) {
		this.num = num;
	}
	
	public int getNum() {
		return num;
	}
}
