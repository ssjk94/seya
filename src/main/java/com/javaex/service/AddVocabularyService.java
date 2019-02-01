package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.AddVocabularyDao;

@Service
public class AddVocabularyService {

	@Autowired
	AddVocabularyDao addVocabularyDao;
	
}
