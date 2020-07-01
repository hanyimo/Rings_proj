package com.ssm.service;


import java.util.List;

import com.ssm.pojo.Design;

public interface Clientservice {
	List<Design> findDesignByUid(Integer uid);
	
	int addNewDesign(Design design);
	
}
