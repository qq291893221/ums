package com.github.simple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.simple.entity.BaseEntity;
import com.github.simple.mapper.BaseMapper;

public class BaseService<T extends BaseEntity> {

	@Autowired
	private BaseMapper<T> mapper;

	public int deleteByPrimaryKey(Long id) {
		return mapper.deleteByPrimaryKey(id);
	}

	public int insert(T t) {
		return mapper.insert(t);
	}

	public int insertSelective(T t) {
		return mapper.insertSelective(t);
	}

	public T selectByPrimaryKey(Long id) {
		return mapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(T t) {
		return mapper.updateByPrimaryKeySelective(t);
	}

	public int updateByPrimaryKey(T t) {
		return mapper.updateByPrimaryKey(t);
	}

	public PageInfo<T> selectPage(T t) {
		PageHelper.startPage(t.getPageNum(), t.getPageSize());
		List<T> list = mapper.selectBySelective(t);
		return new PageInfo(list);
	}

	public List<T> selectBySelective(T record) {
		return mapper.selectBySelective(record);
	}

}