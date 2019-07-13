package com.qf.pojo;

public class Role {
    int rid;
    String roleName;

    public Role(int rid, String roleName) {
        this.rid = rid;
        this.roleName = roleName;
    }

    public Role() {
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public String toString() {
        return "Role{" +
                "rid=" + rid +
                ", roleName=" + roleName +
                '}';
    }
}
