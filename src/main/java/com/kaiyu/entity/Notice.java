package com.kaiyu.entity;

import lombok.Data;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/1 20:05
 */
@Data
public class Notice {

    private Integer id;

    private String type;

    private String content;

    private String publisher;

    private Integer build_id;

    private String build_name;

    private String createAt;

}
