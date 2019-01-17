package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.GuestBookDao;
import com.javaex.vo.GuestBookVo;

@Service
public class GuestBookService {

	@Autowired
	GuestBookDao gbDao;

	public List<GuestBookVo> getList() {
		return gbDao.selectGBList();
	}

	public int add(GuestBookVo guestbookVo) {
		return gbDao.insert(guestbookVo);
	}
}
