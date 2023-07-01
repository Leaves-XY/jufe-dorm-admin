package com.kaiyu.entity;

import lombok.Data;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/6/30 20:12
 */
@Data
public class Major {
    private Integer id;

    private String name;

    private Integer depId;

    private Depart depart;

    private static final long serialVersionUID = 1L;
}
