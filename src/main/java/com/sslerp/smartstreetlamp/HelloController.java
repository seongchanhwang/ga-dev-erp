package com.sslerp.smartstreetlamp;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@Slf4j
@RestController
public class HelloController {

    @GetMapping("/")
    public Map<String,String>  Hello(){
        log.info("hello world!!! ");
        Map<String,String> map = new HashMap<>();
        map.put("hello","world");


        return map;
    }
}
