package com.hnqj.model;

public class Distribution {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_distribution.uid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String uid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_distribution.parentid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String parentid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_distribution.userseltid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String userseltid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_distribution.distprod
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String distprod;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_distribution.uid
     *
     * @return the value of tb_distribution.uid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getUid() {
        return uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_distribution.uid
     *
     * @param uid the value for tb_distribution.uid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_distribution.parentid
     *
     * @return the value of tb_distribution.parentid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getParentid() {
        return parentid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_distribution.parentid
     *
     * @param parentid the value for tb_distribution.parentid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setParentid(String parentid) {
        this.parentid = parentid == null ? null : parentid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_distribution.userseltid
     *
     * @return the value of tb_distribution.userseltid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getUserseltid() {
        return userseltid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_distribution.userseltid
     *
     * @param userseltid the value for tb_distribution.userseltid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setUserseltid(String userseltid) {
        this.userseltid = userseltid == null ? null : userseltid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_distribution.distprod
     *
     * @return the value of tb_distribution.distprod
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getDistprod() {
        return distprod;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_distribution.distprod
     *
     * @param distprod the value for tb_distribution.distprod
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setDistprod(String distprod) {
        this.distprod = distprod;
    }
}