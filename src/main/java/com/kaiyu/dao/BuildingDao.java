package com.kaiyu.dao;

import com.kaiyu.entity.Building;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 叶倖燚
 */
@Repository
public interface BuildingDao {

    List<Building> getBuildingByName(String buildingName);

    int saveBuilding(Building building);

    int editBuilding(Building building);

    int deleteBuildings(@Param("ids") List<Integer> ids);

    List<Building> getBuildingAll();

    @Select("select count(*) from building where name = #{name}")
    int countBuildingByName(String name);
}
