package com.kaiyu.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author 叶倖燚
 */
@Data
public class Student implements Serializable {

    private Integer id;
    private String studentNo;
    private String studentName;
    private Integer sex;
    private Integer dormId;
    private Dorm dorm;
    private String createAt;
    private String updateAt;
    private Integer majorId;
    private Major major;


    private static final long serialVersionUID = 1L;
}
