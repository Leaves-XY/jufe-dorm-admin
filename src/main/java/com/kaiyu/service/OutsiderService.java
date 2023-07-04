package com.kaiyu.service;

import com.kaiyu.dao.OutsiderDao;
import com.kaiyu.entity.Outsider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/2 11:46
 */
@Service
public class OutsiderService {
    @Autowired
    private OutsiderDao outsiderDao;

    public List<Outsider> getAllOutsiders(){
        return outsiderDao.getAllOutsiders();
    }

    public void deleteOutsider(Integer id) {
        outsiderDao.deleteOutsider(id);
    }
}
