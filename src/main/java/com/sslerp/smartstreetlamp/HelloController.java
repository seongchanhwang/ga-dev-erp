package com.sslerp.smartstreetlamp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class HelloController {

    @GetMapping("/")
    public Map<String,String>  Hello(){
        Map<String,String> map = new HashMap<>();
        map.put("hello","world");
        return map;
    }
}
