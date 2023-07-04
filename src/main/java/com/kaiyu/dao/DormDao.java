package com.kaiyu.dao;

import com.kaiyu.entity.Dorm;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 叶倖燚
 */
@Repository
public interface DormDao {

    List<Dorm> getDormAll();

    List<Dorm> getDormByName(String dormName);

    int saveDorm(Dorm dorm);

    int editDorm(Dorm dorm);

    int deleteDorms(@Param("ids") List<Integer> ids);

    @Select("select count(*) from dorm where name = #{name}")
    int countByName(String dormName);
}
