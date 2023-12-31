package com.kaiyu.controller;

import com.kaiyu.entity.Dorm;
import com.kaiyu.model.ResponseMsg;
import com.kaiyu.model.ResponsePage;
import com.kaiyu.service.DormService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;
import java.util.List;

/**
 * @author 叶倖燚
 */
@RestController
@RequestMapping("/api/dorm")
public class DormController {

    @Autowired
    private DormService dormService;

    @GetMapping("/all")
    public List<Dorm> getDormAll() {
        return dormService.getDormAll();
    }

    @GetMapping("/list")
    public ResponsePage getDormPage(Integer page, Integer size, String name) {
        return dormService.getDormPage(page, size, name);
    }


    @PostMapping("/add")
    public ResponseMsg saveOrEditDorm(@RequestBody Dorm dorm) {
        if (null == dorm.getId()) {
            if(dormService.countByName(dorm.getName())>0){
                return ResponseMsg.error("寝室已存在！");
            }
            else if (dormService.saveDorm(dorm) >= 1) {
                return ResponseMsg.ok("添加成功！");
            } else {
                return ResponseMsg.error("添加失败！");
            }
        } else {
            if (dormService.editDorm(dorm) >= 1) {
                return ResponseMsg.ok("修改成功！");
            } else {
                return ResponseMsg.error("修改失败！");
            }
        }
    }

    @PostMapping("/del")
    public ResponseMsg deleteDorms(@RequestBody List<Dorm> dorms) {
        try {
            if (dormService.deleteDorms(dorms) >= 1) {
                return ResponseMsg.ok("删除成功！");
            } else {
                return ResponseMsg.error("删除失败！");
            }
        } catch (Exception e) {
            return ResponseMsg.error("删除失败！寝室有人住" );
        }
    }
}
