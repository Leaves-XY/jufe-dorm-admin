package com.kaiyu.entity;

import lombok.Data;

/**
 * @author 叶倖燚
 */
@Data
public class Building {

    private Integer id;
    private String name;
    private Integer buildingType;
    private String remark;

    private String createAt;
    private String updateAt;

    private static final long serialVersionUID = 1L;
}
