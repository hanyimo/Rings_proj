package com.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.DesignMapper;
import com.ssm.pojo.Design;
import com.ssm.service.Clientservice;

@Service("clientService")
public class ClientserviceImpl implements Clientservice {
	@Resource
	private DesignMapper designMapper;
	@Override
	public List<Design> findDesignByUid(Integer uid) {
	return designMapper.findDesignByUid(uid);
	}
	@Override
	public int addNewDesign(Design design) {
		return designMapper.addNewDesign(design);
	}

}
