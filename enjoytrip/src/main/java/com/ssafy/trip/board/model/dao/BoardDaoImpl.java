package com.ssafy.trip.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssafy.trip.board.model.dto.BoardDto;
import com.ssafy.util.DBUtil;

public class BoardDaoImpl implements BoardDao{
	private static BoardDao boardDao = new BoardDaoImpl();
	
	public static BoardDao getBoardDao() {
		return boardDao;
	}
	
	private BoardDaoImpl() {}

	@Override
	public List<BoardDto> list() throws SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BoardDto> list = new ArrayList<>();
		
		try {
			conn = DBUtil.getConnection();
			
			StringBuilder sql = new StringBuilder();
			sql.append("select * from board");
			
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardDto boardDto = new BoardDto();
				boardDto.setBoard_id(rs.getString("board_id"));
				boardDto.setTitle(rs.getString("title"));
				boardDto.setContents(rs.getString("contents"));
				boardDto.setUser_id(rs.getString("user_id"));
				boardDto.setRegister_time(rs.getString("register_time"));
				list.add(boardDto);
			}
			
		} finally {
			DBUtil.close(rs, pstmt, conn);
		}
		
		return list;
	}
}
