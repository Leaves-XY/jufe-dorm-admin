package com.kaiyu.dao;

import com.kaiyu.entity.Student;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 叶倖燚
 */
@Repository
public interface StudentDao {

    List<Student> getStudentByName(@Param("studentName") String studentName);

    int saveStudent(Student student);

    int editStudent(Student student);

    int deleteStudents(@Param("ids") List<Integer> ids);

    @Select("select count(*) from student where student_no = #{studentNo}")
    int countStudentByNumber(String studentNo);
}
