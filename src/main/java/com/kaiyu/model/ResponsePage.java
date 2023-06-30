package com.kaiyu.model;

import lombok.Data;

import java.util.List;

/**
 * @author 叶倖燚
 */
@Data
public class ResponsePage {

    private List<?> data;
    private Long total;
}
