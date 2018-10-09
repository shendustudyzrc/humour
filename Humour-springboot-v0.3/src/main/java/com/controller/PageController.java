package com.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController // @Controller+@ResponseBody(json数据格式)
public class PageController {
		@GetMapping("/index")
		public ModelAndView index(){	
			return new ModelAndView("index");
		}
		@GetMapping("/adminIndex")
		public ModelAndView adminIndex(){	
			return new ModelAndView("adminIndex");
		}
		@GetMapping("/login")
		public ModelAndView login(){	
			return new ModelAndView("login");
		}
		@GetMapping("/reg")
		public ModelAndView reg(){	
			return new ModelAndView("reg");
		}
		@GetMapping("/error")
		public ModelAndView error(){	
			return new ModelAndView("error");
		}
}
