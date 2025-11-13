package dto;

import java.io.Serializable;

public class Board implements Serializable {
	
	private static final long serialVersionUID = -4374700572038677000L;
	
	private String title;
	private String name;
	private String date;
	private String detail;
	private String boardNo;
	
	private String filename;
	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Board(String boardNo, String title, String name, String date, String detail) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.name = name;
		this.date = date;
		this.detail = detail;
	}
	
	public String getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(String boardNo) {
		this.boardNo = boardNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
}

