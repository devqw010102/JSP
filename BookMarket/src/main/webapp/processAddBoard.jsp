<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "dto.Board" %>
<%@ page import = "dao.BoardRepository" %>
<%@ page import = "com.oreilly.servlet.*" %>
<%@ page import = "com.oreilly.servlet.multipart.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.*" %>

<%
	request.setCharacterEncoding("utf-8");

	String filename = "";
	String realFolder = "E:\\KBK\\jsp\\BookMarket\\src\\main\\webapp\\resources\\boardImages";
	int maxSize = 5 * 1024 * 1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String boardId = multi.getParameter("boardId");
	String title = multi.getParameter("title");
	String detail = multi.getParameter("detail");
	String name = multi.getParameter("name");
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date now = new Date();
	
	
	BoardRepository dao = BoardRepository.getInstance();
	
	Board newBoard = new Board();
	newBoard.setBoardNo(boardId);
	newBoard.setTitle(title);
	newBoard.setDetail(detail);
	newBoard.setDate(sdf.format(now));
	newBoard.setName(name);
	newBoard.setFilename(fileName);
	
	dao.addBoard(newBoard);
	
	response.sendRedirect("board.jsp");
%>