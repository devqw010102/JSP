package dao;

import java.util.ArrayList;
import dto.Board;

public class BoardRepository {

	private ArrayList<Board> listOfBoards = new ArrayList<Board>();
	private static BoardRepository instance = new BoardRepository();
	
	public static BoardRepository getInstance() {
		return instance;
	}
	
	public BoardRepository() {
		Board board1 = new Board("1", "자바마스터 책 추천합니다.", "홍길동", "2025-11-06", "게시판 첫번째 내용");
		Board board2 = new Board("2", "C# 프로그래밍 책 구성에 대해 건의 드립니다.", "홍길동", "2025-11-06", "게시판 두번째 내용");
		Board board3 = new Board("3", "파이썬 프로그래밍 내용이 알찹니다..", "홍길동", "2025-11-06", "게시판 세번째 내용");
		
		listOfBoards.add(board1);
		listOfBoards.add(board2);
		listOfBoards.add(board3);
	}
	
	public ArrayList<Board> getAllBoard() {
		return listOfBoards;
	}
	
	public Board getBoardById(String boardNo) {
		
		Board boardById = null;
		
		for(int i = 0; i < listOfBoards.size(); i++) {
			Board board = listOfBoards.get(i);
			
			if(board != null && board.getBoardNo() != null && board.getBoardNo().equals(boardNo)) {
				boardById = board;
				break;
			}
		}
		
		return boardById;
	}
	
	public void addBoard(Board board) {
		listOfBoards.add(board);
	}
}
