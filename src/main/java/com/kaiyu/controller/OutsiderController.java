package com.kaiyu.controller;

import com.kaiyu.entity.Outsider;
import com.kaiyu.model.ResponseMsg;
import com.kaiyu.service.OutsiderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/2 11:46
 */
@RestController
@RequestMapping("/api/outsiders")
public class OutsiderController {
    @Autowired
    private OutsiderService outsiderService;

    @GetMapping("/list")
    public List<Outsider> getAllOutsiders(){
       return outsiderService.getAllOutsiders();
    }

    @DeleteMapping("/del")
    public ResponseMsg deleteOutsider(Integer id){
        try {
            outsiderService.deleteOutsider(id);
            return ResponseMsg.ok("删除成功！");
        }catch (Exception e){
            return ResponseMsg.error("删除失败！");
        }
    }
}
