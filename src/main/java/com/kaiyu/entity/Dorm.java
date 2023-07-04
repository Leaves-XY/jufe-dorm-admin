package com.kaiyu.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author 叶倖燚
 */
@Data
public class Dorm implements Serializable {

    private Integer id;
    private String name;
    private Integer buildingId;
    private Integer maxNum;
    private String remark;
    private Building building;
    private Integer remain;
    private Integer sex;

    private String createAt;
    private String updateAt;

    private static final long serialVersionUID = 1L;
}
