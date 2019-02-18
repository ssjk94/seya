package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.NavigationDao;
import com.javaex.vo.URLPathVo;

@Service
public class NavigationService {
	@Autowired
	NavigationDao navigationDao;
	
	public void addDirectory(URLPathVo urlPathVo) {
		navigationDao.insertDirectory(urlPathVo);
	}
	
	public void setDirectory(URLPathVo urlPathVo) {
		navigationDao.updateDirectory(urlPathVo);
	}

	public void removeDirectory(URLPathVo urlPathVo) {
		navigationDao.deleteDirectory(urlPathVo);
	}
	
}
