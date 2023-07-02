package com.kaiyu.service;

import com.github.pagehelper.PageInfo;
import com.kaiyu.dao.NoticeDao;
import com.kaiyu.entity.Notice;
import com.kaiyu.entity.Student;
import com.kaiyu.model.ResponsePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

import static com.github.pagehelper.page.PageMethod.startPage;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/7/1 20:45
 */
@Service
public class NoticeService {
    @Autowired
    private NoticeDao noticeDao;

    public int saveNotice(Notice notice) {
        notice.setCreateAt(LocalDate.now().toString());
        return noticeDao.saveNotice(notice);
    }

    public List<Notice> selectNoticeWithBuilding() {
        return noticeDao.selectNoticeWithBuilding();
    }

    public int deleteNotice(Integer id) {
        return noticeDao.deleteNotice(id);
    }

    public int editNotice(Notice notice) {
        return noticeDao.editNotice(notice);
    }

}
