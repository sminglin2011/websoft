package com.web.DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.web.domain.Staff;

@Repository
public class StaffDao {
	
	Logger log = Logger.getLogger(StaffDao.class);

	@Autowired
    private JdbcTemplate jdbcTemplate;
	
	public Staff fetchStaff(String staffId) {
		String sql = "select staffId, name from m03staff where staffId = ?;";
        RowMapper<Staff> rowMapper = new BeanPropertyRowMapper<Staff>(Staff.class);
        Staff staff = jdbcTemplate.queryForObject(sql, rowMapper, staffId);
        return staff;
	}
	
	public List<Staff> fetchStaffList() {
		String sql = "select staffId, name from m03staff order by code desc;";
		List staffList = new ArrayList<>();
		staffList = jdbcTemplate.queryForList(sql);
		return staffList;
	}
}
