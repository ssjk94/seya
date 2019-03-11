package com.javaex.vo;

import java.util.Arrays;

public class QuizVo {

	private int wordNo;
	private String question;
	private String answer;
	private String badAnswer;
	private String[] answerArray;
	private int ansNo;

	private String ans01;
	private String ans02;
	private String ans03;
	private String ans04;
	private String choiceAnswer;

	public QuizVo() {
	}

	public int getWordNo() {
		return wordNo;
	}

	public void setWordNo(int wordNo) {
		this.wordNo = wordNo;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getBadAnswer() {
		return badAnswer;
	}

	public void setBadAnswer(String badAnswer) {
		this.badAnswer = badAnswer;
	}

	public String[] getAnswerArray() {
		return answerArray;
	}

	public void setAnswerArray(String[] answerArray) {
		this.answerArray = answerArray;
	}

	public int getAnsNo() {
		return ansNo;
	}

	public void setAnsNo(int ansNo) {
		this.ansNo = ansNo;
	}

	public String getAns01() {
		return ans01;
	}

	public void setAns01(String ans01) {
		this.ans01 = ans01;
	}

	public String getAns02() {
		return ans02;
	}

	public void setAns02(String ans02) {
		this.ans02 = ans02;
	}

	public String getAns03() {
		return ans03;
	}

	public void setAns03(String ans03) {
		this.ans03 = ans03;
	}

	public String getAns04() {
		return ans04;
	}

	public void setAns04(String ans04) {
		this.ans04 = ans04;
	}

	public String getChoiceAnswer() {
		return choiceAnswer;
	}

	public void setChoiceAnswer(String choiceAnswer) {
		this.choiceAnswer = choiceAnswer;
	}

	@Override
	public String toString() {
		return "QuizVo [wordNo=" + wordNo + ", question=" + question + ", answer=" + answer + ", badAnswer=" + badAnswer
				+ ", answerArray=" + Arrays.toString(answerArray) + ", ansNo=" + ansNo + ", ans01=" + ans01 + ", ans02="
				+ ans02 + ", ans03=" + ans03 + ", ans04=" + ans04 + ", choiceAnswer=" + choiceAnswer + "]";
	}

	public QuizVo(int wordNo, String question, String answer, String badAnswer, String[] answerArray, int ansNo,
			String ans01, String ans02, String ans03, String ans04, String choiceAnswer) {
		super();
		this.wordNo = wordNo;
		this.question = question;
		this.answer = answer;
		this.badAnswer = badAnswer;
		this.answerArray = answerArray;
		this.ansNo = ansNo;
		this.ans01 = ans01;
		this.ans02 = ans02;
		this.ans03 = ans03;
		this.ans04 = ans04;
		this.choiceAnswer = choiceAnswer;
	}
	
	
}
