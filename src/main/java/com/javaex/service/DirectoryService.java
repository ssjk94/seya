package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.DirectoryDao;
import com.javaex.vo.DirectoryVo;

@Service
public class DirectoryService {

	@Autowired
	DirectoryDao directoryDao;

	public List<DirectoryVo> getList() {
		return directoryDao.selectDirectoryList();
	}

	public int add(DirectoryVo directoryVo) {
		return directoryDao.insertDirectory(directoryVo);
	}
}
