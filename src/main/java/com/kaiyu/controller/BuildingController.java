package com.kaiyu.controller;

import com.kaiyu.entity.Building;
import com.kaiyu.model.ResponseMsg;
import com.kaiyu.model.ResponsePage;
import com.kaiyu.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author 叶倖燚
 */
@RestController
@RequestMapping("/api/building")
public class BuildingController {

    @Autowired
    private BuildingService buildingService;

    @GetMapping("/all")
    public List<Building> getBuildingAll() {
        return buildingService.getBuildingAll();
    }

    @GetMapping("/list")
    public ResponsePage getBuildingPage(Integer page, Integer size, String name) {
        return buildingService.getBuildingPage(page, size, name);
    }

    @PostMapping("/add")
    public ResponseMsg saveOrEditBuilding(@RequestBody Building building) {
        if (null == building.getId()) {
            if (buildingService.countBuildingByName(building.getName()) > 0) {
                return ResponseMsg.error("楼栋已存在！");
            }
            else if (buildingService.saveBuilding(building) >= 1) {
                return ResponseMsg.ok("添加成功！");
            } else {
                return ResponseMsg.error("添加失败！");
            }
        } else {
            if (buildingService.editBuilding(building) >= 1) {
                return ResponseMsg.ok("修改成功！");
            } else {
                return ResponseMsg.error("修改失败！");
            }
        }
    }

    @PostMapping("/del")
    public ResponseMsg deleteBuildings(@RequestBody List<Building> buildings) {
        if (buildingService.deleteBuildings(buildings) >= 1) {
            return ResponseMsg.ok("删除成功！");
        } else {
            return ResponseMsg.error("删除失败！");
        }
    }
}
