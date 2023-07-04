package com.kaiyu.controller;

import com.kaiyu.entity.Repair;
import com.kaiyu.model.ResponseMsg;
import com.kaiyu.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/2 9:55
 */
@RequestMapping("/api/repair")
@RestController
public class RepairController {
    @Autowired
    private RepairService repairService;

    @GetMapping("/list")
    public List<Repair> getAllRepairs(){
        List<Repair> repairs= repairService.getAllRepairs();
//        System.out.println(repairs);
       return repairs;
    }

    @DeleteMapping("/del")
    public ResponseMsg deleteRepair(Integer id){
        try {
            repairService.deleteRepair(id);
            return ResponseMsg.ok("删除成功！");
        }catch (Exception e){
            return ResponseMsg.error("删除失败！");
        }

    }
}
