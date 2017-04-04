package domain;

public class Comment {
    private int C_id;
    private int G_id;
    private int U_id;
    private String C_Comment;
    private String C_time;
	public String getC_time() {
		return C_time;
	}
	public void setC_time(String c_time) {
		C_time = c_time;
	}
	public int getC_id() {
		return C_id;
	}
	public void setC_id(int c_id) {
		C_id = c_id;
	}
	public int getG_id() {
		return G_id;
	}
	public void setG_id(int g_id) {
		G_id = g_id;
	}
	public int getU_id() {
		return U_id;
	}
	public void setU_id(int u_id) {
		U_id = u_id;
	}
	public String getC_Comment() {
		return C_Comment;
	}
	public void setC_Comment(String c_Comment) {
		C_Comment = c_Comment;
	}
}
