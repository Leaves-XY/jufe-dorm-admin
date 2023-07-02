package com.kaiyu.entity;

import lombok.Data;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/2 11:37
 */
@Data
public class Feedback {
    private Integer id;
    private  Integer stuId;
    private String createAt;
    private String reason;
    private String stuName;
}
