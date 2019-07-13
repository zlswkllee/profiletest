package com.qf.pojo;

public class Profile {
    private int id;
    private String name;
    private String birthday;
    private String gender;
    private String career;
    private String address;
    private String mobile;
    private String picture;

    private User user;

    public Profile(int id, String name, String birthday, String gender, String career, String address, String mobile, String picture) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.gender = gender;
        this.career = career;
        this.address = address;
        this.mobile = mobile;
        this.picture = picture;
    }

    public Profile(int id, String name, String birthday, String gender, String career, String address, String mobile) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.gender = gender;
        this.career = career;
        this.address = address;
        this.mobile = mobile;
    }

    public Profile() {
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCareer() {
        return career;
    }

    public void setCareer(String career) {
        this.career = career;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Profile{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", birthday='" + birthday + '\'' +
                ", gender='" + gender + '\'' +
                ", career='" + career + '\'' +
                ", address='" + address + '\'' +
                ", mobile='" + mobile + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}
