package com.kaiyu.controller;

import com.kaiyu.model.ResponseMsg;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 叶倖燚
 */
@RestController
@RequestMapping("/api")
public class LoginController {

    @GetMapping("/login")
    public ResponseMsg login() {
        return ResponseMsg.error("尚未登录！请登录");
    }
}
