package com.zht.student.service.impl;

import com.zht.student.mapper.StudentinfoMapper;
import com.zht.student.pojo.Studentinfo;
import com.zht.student.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-03 16:38
 */
@Service("studentService")
public class StudentServiceImpl implements StudentService {

    @Resource
    StudentinfoMapper studentinfoMapper;

    @Override
    public List<Studentinfo> selAll() {
        List<Studentinfo> studentinfos = studentinfoMapper.selectByExample(null);
        return studentinfos;
    }

    @Override
    public Studentinfo selById(int id) {
        Studentinfo studentinfo = studentinfoMapper.selectByPrimaryKey(id);
        return studentinfo;
    }

    @Override
    public int upd(Studentinfo studentinfo) {
        int i = studentinfoMapper.updateByPrimaryKeySelective(studentinfo);
        return i;
    }
}
