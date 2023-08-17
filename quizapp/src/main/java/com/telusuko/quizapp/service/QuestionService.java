package com.telusuko.quizapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.telusuko.quizapp.Question;
import com.telusuko.quizapp.dao.QuestionDao;

@Service
public class QuestionService {
	
	@Autowired
	QuestionDao questionDao;

	public List<Question> allQuestions() {
		return questionDao.findAll();
	}

	public List<Question> getQuestionByCategory(String cat) {
		return questionDao.findByCategory(cat);
	}
	
	public List<Question> getQuestionByDifficultyLevel(String level) {
		return questionDao.findByDifficultyLevel(level);
	}

	public void addQuestion(Question question) {
		questionDao.save(question);
		
	}

}
