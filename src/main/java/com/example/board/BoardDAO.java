package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    private SqlSession sqlSession;

    public List<BoardVO> getBoardList()
    {
        return sqlSession.selectList("Board.getBoardList");
    }

    public BoardVO getBoard(int seq) {
        return sqlSession.selectOne("Board.getBoard", seq);
    }

    public int insertBoard(BoardVO vo) {
        return sqlSession.insert("Board.insertBoard", vo);
    }

    public int updateBoard(BoardVO vo) {
        return sqlSession.update("Board.updateBoard", vo);
    }

    public int deleteBoard(int seq) {
        return sqlSession.delete("Board.deleteBoard", seq);
    }
}
