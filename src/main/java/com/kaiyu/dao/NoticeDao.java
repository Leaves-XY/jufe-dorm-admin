package com.kaiyu.dao;

import com.kaiyu.entity.Notice;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/1 20:03
 */
@Repository
public interface NoticeDao {
    int saveNotice(Notice notice);

    List<Notice> selectNoticeWithBuilding();

    int deleteNotice(Integer id);

    int editNotice(Notice notice);
}
