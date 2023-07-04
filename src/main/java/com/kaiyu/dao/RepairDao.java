package com.kaiyu.dao;

import com.kaiyu.entity.Repair;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/2 9:46
 */
@Repository
public interface RepairDao {
    List<Repair> getAllRepairs();

    void deleteRepair(Integer id);
}
