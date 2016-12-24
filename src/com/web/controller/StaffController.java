package com.web.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StaffController {

	static Logger log = Logger.getLogger(StaffController.class);
	

	@RequestMapping(value = "/staffList.htm", method = RequestMethod.GET)
	public String staffList(Map<String, Object> map) {
		log.debug("飞机");
		
		return "staffList";
	}
}
