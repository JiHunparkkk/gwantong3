package com.ssafy.trip.board.model.dao;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.trip.board.model.dto.BoardDto;

public interface BoardDao {
	List<BoardDto> list() throws SQLException;

}
