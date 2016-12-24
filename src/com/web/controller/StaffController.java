package com.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.web.domain.Staff;
import com.web.service.StaffService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class StaffController {

	static Logger log = Logger.getLogger(StaffController.class);
	
	@Autowired
	private StaffService staffService;

	@RequestMapping(value = "/staffList.htm", method = RequestMethod.GET)
	public ModelAndView staffList(Map<String, Object> map) {
		log.debug("飞机" + staffService.getStaff("superdew"));
		List<Staff> list = staffService.getStaffList();
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("list", list);
		model.put("data", list);
		return new ModelAndView("staff/staffList", "model", model);
	}
	@ResponseBody
	@RequestMapping(value = "/staffListJson.htm")
	public void staffList (HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		log.debug("come in json hmt");
		List<Staff> list = staffService.getStaffList();
		JSONObject json = new JSONObject();
		json.put("data", JSONArray.fromObject(list));
		
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "/addStaff.htm", method = RequestMethod.GET)
	public String addStaff() {
		return "staff/addStaff";
	}
}
