package com.telusuko.quizapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.telusuko.quizapp.Question;
import com.telusuko.quizapp.service.QuestionService;

@RestController
@RequestMapping("/question")
public class questionController {
	
	@Autowired
	QuestionService questionservice;
	
	@GetMapping("/allquestions")
	public List<Question> getAllQuestions() {
	return questionservice.allQuestions();
	}
	
	@GetMapping("/category/{cat}")
	public List<Question> getQuestionByCategory(@PathVariable String cat){
		return questionservice.getQuestionByCategory(cat);
	}
	
	@GetMapping("/difficultylevel/{level}")
	public List<Question> getQuestionByDifficlutyLevel(@PathVariable String level){
		return questionservice.getQuestionByDifficultyLevel(level);
	}
	
	@PostMapping("/add")
	public Question addQuestion(@RequestBody Question question) {
		questionservice.addQuestion(question);
		return question;
	}
}
