package com.kaiyu.service;

import com.github.pagehelper.PageInfo;
import com.kaiyu.dao.BuildingDao;
import com.kaiyu.entity.Building;
import com.kaiyu.model.ResponsePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import static com.github.pagehelper.page.PageMethod.startPage;

/**
 * @author 叶倖燚
 */
@Service
public class BuildingService {

    @Autowired
    private BuildingDao buildingDao;

    public List<Building> getBuildingAll() {
        return buildingDao.getBuildingAll();
    }

    public ResponsePage getBuildingPage(Integer page, Integer size, String buildingName) {
        startPage(page, size);
        List<Building> buildings = buildingDao.getBuildingByName(buildingName);
        PageInfo<Building> pageInfo = new PageInfo<>(buildings);
        ResponsePage responsePage = new ResponsePage();
        responsePage.setData(buildings);
        responsePage.setTotal(pageInfo.getTotal());
        return responsePage;
    }

    public int saveBuilding(Building building) {
        building.setUpdateAt(LocalDate.now().toString());
        building.setCreateAt(LocalDate.now().toString());
        return buildingDao.saveBuilding(building);
    }

    public int editBuilding(Building building) {
        building.setUpdateAt(LocalDate.now().toString());
        return buildingDao.editBuilding(building);
    }

    public int deleteBuildings(List<Building> buildings) {
        List<Integer> ids = new ArrayList<>();
        for (Building building : buildings) {
            ids.add(building.getId());
        }
        return buildingDao.deleteBuildings(ids);
    }

    public int countBuildingByName(String name) {
        return buildingDao.countBuildingByName(name);
    }
}
