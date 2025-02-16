package com.kosta.vo;

public class DeptVO {
    private int dno;
    private String dname;
    private String dloc;

    public DeptVO(int dno, String dname, String dloc) {
        this.dno = dno;
        this.dname = dname;
        this.dloc = dloc;
    }

    public DeptVO() {
    }

    public int getDno() {
        return dno;
    }

    public void setDno(int dno) {
        this.dno = dno;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getDloc() {
        return dloc;
    }

    public void setDloc(String dloc) {
        this.dloc = dloc;
    }
}
