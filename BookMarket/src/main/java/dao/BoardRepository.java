package dao;

import java.util.ArrayList;
import dto.Board;

public class BoardRepository {

	private ArrayList<Board> listOfBoards = new ArrayList<Board>();
	
	public BoardRepository() {
		Board board1 = new Board("자바마스터 책 추천합니다.", "홍길동", "2025-11-06");
		Board board2 = new Board("C# 프로그래밍 책 구성에 대해 건의 드립니다.", "홍길동", "2025-11-06");
		Board board3 = new Board("파이썬 프로그래밍 내용이 알찹니다..", "홍길동", "2025-11-06");
		
		listOfBoards.add(board1);
		listOfBoards.add(board2);
		listOfBoards.add(board3);
	}
	
	public ArrayList<Board> getAllBoard() {
		return listOfBoards;
	}
}
