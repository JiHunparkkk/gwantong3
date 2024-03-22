package com.ssafy.trip.board.model.service;

import java.util.List;

import com.ssafy.trip.board.model.dto.BoardDto;

public interface BoardService {
	List<BoardDto> list() throws Exception;
	
}
