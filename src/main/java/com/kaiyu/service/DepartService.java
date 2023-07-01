package com.kaiyu.service;

import com.kaiyu.dao.DepartDao;
import com.kaiyu.entity.Depart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/6/30 22:37
 */
@Service
public class DepartService {

    @Autowired
    private DepartDao departDao;

    public List<Depart> getAllDeparts() {
        return departDao.getAllDeparts();
    }
}

