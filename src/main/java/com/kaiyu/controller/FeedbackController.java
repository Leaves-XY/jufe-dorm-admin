package com.kaiyu.controller;

import com.kaiyu.entity.Feedback;
import com.kaiyu.model.ResponseMsg;
import com.kaiyu.service.FeedbackService;
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
 * @date 2023/7/2 14:51
 */
@RestController
@RequestMapping("/api/feedback")
public class FeedbackController {
    @Autowired
    private FeedbackService feedbackService;

    @GetMapping("/list")
    public List<Feedback> getAllFeedbacks(){
        return feedbackService.getAllFeedbacks();
    }

    @DeleteMapping("/del")
    public ResponseMsg deleteFeedback(Integer id) {
        try {
            feedbackService.deleteFeedback(id);
            return ResponseMsg.ok("删除成功！");
        }catch (Exception e){
            return ResponseMsg.error("删除失败！");
        }
    }

}
