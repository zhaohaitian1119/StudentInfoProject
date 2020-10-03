package com.zht.student.service;

import com.zht.student.pojo.Studentinfo;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-03 16:38
 */
public interface StudentService {
    List<Studentinfo> selAll();
    Studentinfo selById(int id);
    int upd(Studentinfo studentinfo);
}
