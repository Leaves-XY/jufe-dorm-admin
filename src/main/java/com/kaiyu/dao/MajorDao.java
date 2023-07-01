package com.kaiyu.dao;

import com.kaiyu.entity.Major;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/6/30 22:36
 */
@Repository
public interface MajorDao {
    List<Major> getMajorsByDepartId(@Param("depId") Integer depId);
}