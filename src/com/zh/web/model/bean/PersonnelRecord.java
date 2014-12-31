package com.zh.web.model.bean;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 洽谈记录
 * @author taozhaoping 26078
 * @author mail taozhaoping@gmail.com
 */
public class PersonnelRecord {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_PERSONNEL_RECORD.ID
     *
     * @mbggenerated Fri Dec 26 16:58:16 CST 2014
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_PERSONNEL_RECORD.PERSONNELTYPE
     *
     * @mbggenerated Fri Dec 26 16:58:16 CST 2014
     */
    private String personnelType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_PERSONNEL_RECORD.APPOINTMENTDATE
     *
     * @mbggenerated Fri Dec 26 16:58:16 CST 2014
     */
    private Date appointmentDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_PERSONNEL_RECORD.CONTENT
     *
     * @mbggenerated Fri Dec 26 16:58:16 CST 2014
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_PERSONNEL_RECORD.CREATEDATE
     *
     * @mbggenerated Fri Dec 26 16:58:16 CST 2014
     */
    private String createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_PERSONNEL_RECORD.PERSONNELID
     *
     * @mbggenerated Fri Dec 26 16:58:16 CST 2014
     */
    private Integer personnelId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPersonnelType() {
		return personnelType;
	}

	public void setPersonnelType(String personnelType) {
		this.personnelType = personnelType;
	}

	public Date getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(Date appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public Integer getPersonnelId() {
		return personnelId;
	}

	public void setPersonnelId(Integer personnelId) {
		this.personnelId = personnelId;
	}

}