package com.hnqj.model;

import java.util.Date;

public class Client {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_client.clintuid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String clintuid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_client.clientname
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String clientname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_client.phone
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String phone;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_client.address
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String address;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_client.email
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String email;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_client.creator
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private String creator;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_client.createtime
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    private Date createtime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_client.clintuid
     *
     * @return the value of tb_client.clintuid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getClintuid() {
        return clintuid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_client.clintuid
     *
     * @param clintuid the value for tb_client.clintuid
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setClintuid(String clintuid) {
        this.clintuid = clintuid == null ? null : clintuid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_client.clientname
     *
     * @return the value of tb_client.clientname
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getClientname() {
        return clientname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_client.clientname
     *
     * @param clientname the value for tb_client.clientname
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setClientname(String clientname) {
        this.clientname = clientname == null ? null : clientname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_client.phone
     *
     * @return the value of tb_client.phone
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getPhone() {
        return phone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_client.phone
     *
     * @param phone the value for tb_client.phone
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_client.address
     *
     * @return the value of tb_client.address
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getAddress() {
        return address;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_client.address
     *
     * @param address the value for tb_client.address
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_client.email
     *
     * @return the value of tb_client.email
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_client.email
     *
     * @param email the value for tb_client.email
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_client.creator
     *
     * @return the value of tb_client.creator
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public String getCreator() {
        return creator;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_client.creator
     *
     * @param creator the value for tb_client.creator
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_client.createtime
     *
     * @return the value of tb_client.createtime
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_client.createtime
     *
     * @param createtime the value for tb_client.createtime
     *
     * @mbg.generated Tue Jan 09 11:34:57 CST 2018
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}