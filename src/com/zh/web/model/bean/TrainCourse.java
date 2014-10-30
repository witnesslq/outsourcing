package com.zh.web.model.bean;

import java.util.Date;

/**
 * 培训课程信息
 * @author taozhaoping 26078
 * @author mail taozhaoping@gmail.com
 */
public class TrainCourse {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRAINCOURSE.ID
     *
     * @mbggenerated Mon Oct 20 16:39:07 CST 2014
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRAINCOURSE.TRAINTYPE
     *
     * @mbggenerated Mon Oct 20 16:39:07 CST 2014
     */
    private String trainType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRAINCOURSE.SCHEDULEDATE
     *
     * @mbggenerated Mon Oct 20 16:39:07 CST 2014
     */
    private Date scheduleDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRAINCOURSE.ADDRESS
     *
     * @mbggenerated Mon Oct 20 16:39:07 CST 2014
     */
    private String address;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRAINCOURSE.COURSEDATE
     *
     * @mbggenerated Mon Oct 20 16:39:07 CST 2014
     */
    private String courseDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRAINCOURSE.DESCRIPTION
     *
     * @mbggenerated Mon Oct 20 16:39:07 CST 2014
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRAINCOURSE.NAME
     *
     * @mbggenerated Mon Oct 20 16:39:07 CST 2014
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRAINCOURSE.USERID
     *
     * @mbggenerated Mon Oct 20 16:39:07 CST 2014
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRAINCOURSE.CREATEDATE
     *
     * @mbggenerated Mon Oct 20 16:39:07 CST 2014
     */
    private String createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRAINCOURSE.UPDATEDATE
     *
     * @mbggenerated Mon Oct 20 16:39:07 CST 2014
     */
    private String updateDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTrainType() {
		return trainType;
	}

	public void setTrainType(String trainType) {
		this.trainType = trainType;
	}

	public Date getScheduleDate() {
		return scheduleDate;
	}

	public void setScheduleDate(Date scheduleDate) {
		this.scheduleDate = scheduleDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCourseDate() {
		return courseDate;
	}

	public void setCourseDate(String courseDate) {
		this.courseDate = courseDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

  
}