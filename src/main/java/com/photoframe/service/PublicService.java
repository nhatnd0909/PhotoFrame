package com.photoframe.service;

import java.util.Calendar;

import org.springframework.stereotype.Service;

@Service
public class PublicService {

	public int getCurrentMonth() {
		Calendar calendar = Calendar.getInstance();
		return calendar.get(Calendar.MONTH) + 1; // Months are 0-based, so we add 1
	}
}
