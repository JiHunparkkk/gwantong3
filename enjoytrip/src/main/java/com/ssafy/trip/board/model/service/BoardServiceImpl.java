package com.ssafy.trip.board.model.service;

import java.util.List;

import com.ssafy.trip.board.model.dao.BoardDao;
import com.ssafy.trip.board.model.dao.BoardDaoImpl;
import com.ssafy.trip.board.model.dto.BoardDto;

public class BoardServiceImpl implements BoardService{
	private static BoardService boardService = new BoardServiceImpl();
	private BoardDao boardDao;
	
	public static BoardService getBoardService() {
		return boardService;
	}
	
	private BoardServiceImpl() {
		boardDao = BoardDaoImpl.getBoardDao();
	}

	@Override
	public List<BoardDto> list() throws Exception {
		return boardDao.list();
	}
	
	
}
