package com.zh.web.dao;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;

import com.zh.core.base.dao.BaseDao;
import com.zh.web.model.bean.Change;

@Component("changeDao")
public class ChangeDao extends BaseDao<Change> {

	@Override
	@PostConstruct
	public void init() {
		this.setNamespace("M_CHANGE");
	}

}
