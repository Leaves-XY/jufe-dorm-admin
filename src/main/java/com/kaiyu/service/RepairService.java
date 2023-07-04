package com.kaiyu.service;

import com.kaiyu.dao.RepairDao;
import com.kaiyu.entity.Repair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/2 9:50
 */
@Service
public class RepairService {
    @Autowired
    private RepairDao repairDao;

    public List<Repair> getAllRepairs(){
        return repairDao.getAllRepairs();
    }

    public void deleteRepair(Integer id) {
        repairDao.deleteRepair(id);
    }
}
