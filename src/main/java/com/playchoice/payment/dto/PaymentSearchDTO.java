package com.playchoice.payment.dto;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class PaymentSearchDTO {
	Integer member;
	Integer play;
	Integer schedule;
	
	Integer playAdmin;

	Timestamp from = null;
	Timestamp until = null;

	Integer start = 0;

	public Integer getMember() {
		return member;
	}

	public void setMember(Integer member) {
		this.member = member;
	}

	public Integer getPlay() {
		return play;
	}

	public void setPlay(Integer play) {
		this.play = play;
	}

	public Integer getSchedule() {
		return schedule;
	}

	public void setSchedule(Integer schedule) {
		this.schedule = schedule;
	}
	
	public Integer getPlayAdmin() {
		return playAdmin;
	}

	public void setPlayAdmin(Integer playAdmin) {
		this.playAdmin = playAdmin;
	}

	public Timestamp getFrom() {
		return from;
	}

	public void setFrom(String from) {
		if (from.isEmpty())
			return;
		
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		try {
			this.from = new Timestamp(format.parse(from).getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	public Timestamp getUntil() {
		return until;
	}

	public void setUntil(String until) {
		if (until.isEmpty())
			return;
		
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		try {
			this.until = new Timestamp(format.parse(until).getTime()) ;
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}
	
	public void setPage(Integer page) {
		if (page == null || page <= 0)
			return;
		this.start = (page - 1) * 10;
	}


}
