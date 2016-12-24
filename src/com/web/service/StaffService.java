package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.DAO.StaffDao;
import com.web.domain.Staff;

@Repository
public class StaffService {

	@Autowired
	private StaffDao staffDao;
	
	public Staff getStaff(String staffId) {
		return staffDao.fetchStaff(staffId);
	}
	
	public List<Staff> getStaffList() {
		return staffDao.fetchStaffList();
	}
}
