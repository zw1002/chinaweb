package com.hnqj.model;

public class Worklabel {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_worklabel.uid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String uid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_worklabel.labelname
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String labelname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_worklabel.labelnum
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private Integer labelnum;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_worklabel.codeid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String codeid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_worklabel.uid
     *
     * @return the value of tb_worklabel.uid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getUid() {
        return uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_worklabel.uid
     *
     * @param uid the value for tb_worklabel.uid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_worklabel.labelname
     *
     * @return the value of tb_worklabel.labelname
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getLabelname() {
        return labelname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_worklabel.labelname
     *
     * @param labelname the value for tb_worklabel.labelname
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setLabelname(String labelname) {
        this.labelname = labelname == null ? null : labelname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_worklabel.labelnum
     *
     * @return the value of tb_worklabel.labelnum
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public Integer getLabelnum() {
        return labelnum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_worklabel.labelnum
     *
     * @param labelnum the value for tb_worklabel.labelnum
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setLabelnum(Integer labelnum) {
        this.labelnum = labelnum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_worklabel.codeid
     *
     * @return the value of tb_worklabel.codeid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getCodeid() {
        return codeid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_worklabel.codeid
     *
     * @param codeid the value for tb_worklabel.codeid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setCodeid(String codeid) {
        this.codeid = codeid == null ? null : codeid.trim();
    }
}