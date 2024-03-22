package com.ssafy.trip.board.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.ssafy.trip.board.model.dto.BoardDto;
import com.ssafy.trip.board.model.service.BoardService;
import com.ssafy.trip.board.model.service.BoardServiceImpl;

@WebServlet("/board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BoardService boardService;
    
    public BoardController() {
        super();
        boardService = BoardServiceImpl.getBoardService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String path = "";
		
		if("list".equals(action)) {
			path = list(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		} else if("mvWrite".equals(action)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/board/write.jsp");
			dispatcher.forward(request, response);
		} else if("write".equals(action)) {
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	private String list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<BoardDto> list = boardService.list();
			request.setAttribute("board", list);
			return "/board/list.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
//	private String write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}
}
