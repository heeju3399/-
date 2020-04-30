package bean;

public class notice_Board {
	
	private int num;
	private int nbId;
	private String userId;
	private String nbTitle;
	private String nbContent;
	private String nbDate;
	private int nbAvailable; 
	
	
	
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getNbId() {
		return nbId;
	}
	public void setNbId(int nbId) {
		this.nbId = nbId;
	}
	public int getNbAvailable() {
		return nbAvailable;
	}
	public void setNbAvailable(int nbAvailable) {
		this.nbAvailable = nbAvailable;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getNbTitle() {
		return nbTitle;
	}
	public void setNbTitle(String nbTitle) {
		this.nbTitle = nbTitle;
	}
	public String getNbContent() {
		return nbContent;
	}
	public void setNbContent(String nbContent) {
		this.nbContent = nbContent;
	}
	public String getNbDate() {
		return nbDate;
	}
	public void setNbDate(String nbDate) {
		this.nbDate = nbDate;
	}
	
}
