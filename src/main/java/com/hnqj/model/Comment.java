package com.hnqj.model;

import java.util.Date;

public class Comment {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_comment.uid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String uid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_comment.worksid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String worksid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_comment.commentuserid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String commentuserid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_comment.commenttime
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private Date commenttime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_comment.commentinfo
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String commentinfo;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_comment.parentid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String parentid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_comment.oknums
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private Integer oknums;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_comment.delflg
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String delflg;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_comment.uid
     *
     * @return the value of tb_comment.uid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getUid() {
        return uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_comment.uid
     *
     * @param uid the value for tb_comment.uid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_comment.worksid
     *
     * @return the value of tb_comment.worksid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getWorksid() {
        return worksid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_comment.worksid
     *
     * @param worksid the value for tb_comment.worksid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setWorksid(String worksid) {
        this.worksid = worksid == null ? null : worksid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_comment.commentuserid
     *
     * @return the value of tb_comment.commentuserid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getCommentuserid() {
        return commentuserid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_comment.commentuserid
     *
     * @param commentuserid the value for tb_comment.commentuserid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setCommentuserid(String commentuserid) {
        this.commentuserid = commentuserid == null ? null : commentuserid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_comment.commenttime
     *
     * @return the value of tb_comment.commenttime
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public Date getCommenttime() {
        return commenttime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_comment.commenttime
     *
     * @param commenttime the value for tb_comment.commenttime
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setCommenttime(Date commenttime) {
        this.commenttime = commenttime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_comment.commentinfo
     *
     * @return the value of tb_comment.commentinfo
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getCommentinfo() {
        return commentinfo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_comment.commentinfo
     *
     * @param commentinfo the value for tb_comment.commentinfo
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setCommentinfo(String commentinfo) {
        this.commentinfo = commentinfo == null ? null : commentinfo.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_comment.parentid
     *
     * @return the value of tb_comment.parentid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getParentid() {
        return parentid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_comment.parentid
     *
     * @param parentid the value for tb_comment.parentid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setParentid(String parentid) {
        this.parentid = parentid == null ? null : parentid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_comment.oknums
     *
     * @return the value of tb_comment.oknums
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public Integer getOknums() {
        return oknums;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_comment.oknums
     *
     * @param oknums the value for tb_comment.oknums
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setOknums(Integer oknums) {
        this.oknums = oknums;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_comment.delflg
     *
     * @return the value of tb_comment.delflg
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getDelflg() {
        return delflg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_comment.delflg
     *
     * @param delflg the value for tb_comment.delflg
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setDelflg(String delflg) {
        this.delflg = delflg == null ? null : delflg.trim();
    }
}