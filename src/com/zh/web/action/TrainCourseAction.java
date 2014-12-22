package com.zh.web.action;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.zh.core.base.action.Action;
import com.zh.core.base.action.BaseAction;
import com.zh.core.model.Pager;
import com.zh.web.model.TrainCourseModel;
import com.zh.web.model.bean.Activities;
import com.zh.web.model.bean.ContactRecord;
import com.zh.web.model.bean.EntryProcess;
import com.zh.web.model.bean.TrainCourse;
import com.zh.web.service.TrainCourseService;

/**
 * 培训管理
 * 
 * @author taozhaoping 26078
 * @author mail taozhaoping@gmail.com
 */
public class TrainCourseAction extends BaseAction {

	private static Logger LOGGER = LoggerFactory
			.getLogger(TrainCourseAction.class);

	private TrainCourseModel trainCourseModel = new TrainCourseModel();

	@Autowired
	private TrainCourseService trainCourseService;

	public String execute() {
		TrainCourse trainCourse = trainCourseModel.getTrainCourse();
		Pager pager = this.trainCourseModel.getPageInfo();
		Integer count = trainCourseService.count(trainCourse);
		pager.setTotalRow(count);
		List<TrainCourse> trainCourseList = trainCourseService.queryList(
				trainCourse, pager);

		trainCourseModel.setTrainCourseList(trainCourseList);
		return Action.SUCCESS;
	}

	public String editor() {
		LOGGER.debug("editor()");
		Integer id = this.trainCourseModel.getId();
		if (null != id && !"".equals(id)) {
			TrainCourse trainCourse = trainCourseModel.getTrainCourse();
			trainCourse.setId(id);
			TrainCourse trainCourseReult = trainCourseService
					.query(trainCourse);
			this.trainCourseModel.setTrainCourse(trainCourseReult);
		}
		return Action.EDITOR;
	}

	public String save() {
		LOGGER.debug("save()");
		TrainCourse trainCourse = trainCourseModel.getTrainCourse();

		// 判断是新增还是修改
		Integer id = trainCourse.getId();
		if (null == id || 0 == id) {
			trainCourseService.insert(trainCourse);
		} else {
			trainCourseService.update(trainCourse);
		}
		return Action.EDITOR_SUCCESS;
	}

	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return trainCourseModel;
	}

	public TrainCourseModel getTrainCourseModel() {
		return trainCourseModel;
	}

	public void setTrainCourseModel(TrainCourseModel trainCourseModel) {
		this.trainCourseModel = trainCourseModel;
	}

}
