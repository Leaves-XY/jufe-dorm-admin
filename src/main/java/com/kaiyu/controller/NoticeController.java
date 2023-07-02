package com.kaiyu.controller;

import com.kaiyu.entity.Notice;
import com.kaiyu.model.ResponseMsg;
import com.kaiyu.model.ResponsePage;
import com.kaiyu.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/1 20:55
 */
@RestController
@RequestMapping("/api/notice")
public class NoticeController {
    @Autowired
    private NoticeService noticeService;

    @PostMapping("/add")
    public ResponseMsg saveNotice(@RequestBody Notice notice) {
        if (noticeService.saveNotice(notice) >= 1) {
            return ResponseMsg.ok("添加成功！");
        } else {
            return ResponseMsg.error("添加失败！");
        }
    }
    @DeleteMapping("/del")
    public ResponseMsg deleteNotice(Integer id) {
        if (noticeService.deleteNotice(id) >= 1) {
            return ResponseMsg.ok("删除成功！");
        } else {
            return ResponseMsg.error("删除失败！");
        }
    }
    @PutMapping("/edit")
    public ResponseMsg editNotice(@RequestBody Notice notice) {
        if (noticeService.editNotice(notice) >= 1) {
            return ResponseMsg.ok("修改成功！");
        } else {
            return ResponseMsg.error("修改失败！");
        }
    }
    @GetMapping("/list")
    public List<Notice> selectNoticeWithBuilding() {
        return noticeService.selectNoticeWithBuilding();
    }

}
