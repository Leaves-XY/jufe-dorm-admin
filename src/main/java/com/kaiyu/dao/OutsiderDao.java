package com.kaiyu.dao;

import com.kaiyu.entity.Outsider;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/2 11:38
 */
@Repository
public interface OutsiderDao {
    List<Outsider> getAllOutsiders();

    void deleteOutsider(Integer id);
}
