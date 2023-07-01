package com.kaiyu.service;

import com.kaiyu.dao.MajorDao;
import com.kaiyu.entity.Major;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/6/30 22:37
 */
@Service
public class MajorService {

    @Autowired
    private MajorDao majorDao;

    public List<Major> getMajorsByDepartId(Integer depId) {
        return majorDao.getMajorsByDepartId(depId);
    }
}