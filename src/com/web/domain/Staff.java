package com.web.domain;

import lombok.Data;

@Data
public class Staff {

	private String staffId;
	private String name;
	
	 public String toString() {
	        StringBuffer buffer = new StringBuffer();
	        buffer.append("staffId: " + staffId + ";");
	        buffer.append("name: " + name);
	        return buffer.toString();
	    }
}
