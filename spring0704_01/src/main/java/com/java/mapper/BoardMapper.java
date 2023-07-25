package com.java.mapper;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java.dto.Board;

public interface BoardMapper extends JpaRepository<Board, String> {

}
