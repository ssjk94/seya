package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.MeanKorDao;
import com.javaex.vo.MeanKorVo;

@Service
public class MeanKorService {

	@Autowired
	MeanKorDao meankorDao;

	public List<MeanKorVo> getList() {
		return meankorDao.selectMeanKorList();
	}

	public int add(MeanKorVo meankorVo) {
		return meankorDao.insertMeanKor(meankorVo);
	}
}
