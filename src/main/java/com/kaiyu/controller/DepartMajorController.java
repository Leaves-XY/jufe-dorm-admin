package com.kaiyu.controller;

import com.kaiyu.entity.Depart;
import com.kaiyu.entity.Major;
import com.kaiyu.service.DepartService;
import com.kaiyu.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author YeXingyi
 * @version 1.0
 * @date 2023/6/30 22:38
 */
@RestController
@RequestMapping("/api/depart_and_major")
public class DepartMajorController {

    @Autowired
    private DepartService departService;

    @Autowired
    private MajorService majorService;

    @GetMapping("/list")
    public Map<String, List<?>> getAllDepartsAndMajors() {
        Map<String, List<?>> result = new HashMap<>();
        List<Depart> departs = departService.getAllDeparts();
        result.put("departs", departs);

        for (Depart depart : departs) {
            List<Major> majors = majorService.getMajorsByDepartId(depart.getId());
            result.put("major_of_depart_" + depart.getId(), majors);
        }
        System.out.println("返回学院数据: " + result);
        return result;
    }
}
