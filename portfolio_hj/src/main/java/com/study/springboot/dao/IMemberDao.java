package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.MemberDto;

@Mapper
public interface IMemberDao {
	public int join( MemberDto member_dto );
	public int login( String hp_ID, String hp_Password );
	public int idCheck( String hp_ID );
	public List<MemberDto> findID( String hp_Name, String hp_Email );
	public List<MemberDto> findPassword( String hp_Name, String hp_ID, String hp_Email );
}
