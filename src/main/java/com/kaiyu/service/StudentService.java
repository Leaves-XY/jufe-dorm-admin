package com.kaiyu.service;

import com.github.pagehelper.PageInfo;
import com.kaiyu.dao.StudentDao;
import com.kaiyu.entity.Student;
import com.kaiyu.model.ResponsePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import static com.github.pagehelper.page.PageMethod.startPage;

/**
 * @author 叶倖燚
 */
@Transactional(rollbackFor = Exception.class)
@Service
public class StudentService {

    @Autowired
    private StudentDao studentDao;

    public ResponsePage getStudentByName(Integer page, Integer size, String studentName) {
        startPage(page, size);
        List<Student> students = studentDao.getStudentByName(studentName);
        PageInfo<Student> pageInfo = new PageInfo<>(students);
        ResponsePage responsePage = new ResponsePage();
        responsePage.setData(students);
        responsePage.setTotal(pageInfo.getTotal());
        return responsePage;
    }

    public int saveStudent(Student student) {
        student.setCreateAt(LocalDate.now().toString());
        student.setUpdateAt(LocalDate.now().toString());
        return studentDao.saveStudent(student);
    }

    public int editStudent(Student student) {
        student.setUpdateAt(LocalDate.now().toString());
        return studentDao.editStudent(student);
    }

    public int deleteStudents(List<Student> students) {
        List<Integer> ids = new ArrayList<>();
        for (Student student : students) {
            ids.add(student.getId());
        }
        return studentDao.deleteStudents(ids);
    }

    public int countStudentByNumber(String studentNo) {
        return studentDao.countStudentByNumber(studentNo);
    }
}
