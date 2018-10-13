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
		@GetMapping("/admin")
		public ModelAndView adminIndex(){	
			return new ModelAndView("admin/adminIndex");
		}
		@GetMapping("/error")
		public ModelAndView error(){	
			return new ModelAndView("error");
		}
		@GetMapping("/admin_login")
		public ModelAndView admin_login(){	
			return new ModelAndView("admin_login");
		}
}
