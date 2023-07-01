package com.kaiyu.dao;

import com.kaiyu.entity.Depart;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/6/30 22:26
 */
@Repository
public interface DepartDao {
    List<Depart> getAllDeparts();
}
