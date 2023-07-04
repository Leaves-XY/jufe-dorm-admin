package com.kaiyu.dao;

import com.kaiyu.entity.Feedback;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/2 14:31
 */
@Repository
public interface FeedbackDao {
    List<Feedback> getAllFeedbacks();

    void deleteFeedback(Integer id);
}
