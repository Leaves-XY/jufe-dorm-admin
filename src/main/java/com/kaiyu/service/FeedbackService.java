package com.kaiyu.service;

import com.kaiyu.dao.FeedbackDao;
import com.kaiyu.entity.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.DeleteMapping;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/2 14:50
 */
@Service
public class FeedbackService {
    @Autowired
    private FeedbackDao feedbackDao;

    public List<Feedback> getAllFeedbacks(){
        return feedbackDao.getAllFeedbacks();
    }


    public void deleteFeedback(Integer id) {
        feedbackDao.deleteFeedback(id);
    }
}
