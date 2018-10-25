package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.domain.City;
import com.domain.Province;
import com.service.ICityService;
@RestController
@RequestMapping(value="/City")
public class CityController{
	@Autowired
	private ICityService ics;
	@RequestMapping(value="/CityList",method=RequestMethod.POST)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        response.setContentType("text/xml");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String provinceId = request.getParameter("provinceId")+"";
        Province province = new Province();
        province.setId(Long.parseLong(provinceId));
        List<City> citys = new ArrayList<City>();
        citys=ics.selectZProvinceCitys(province);
        Iterator<City> i = citys.iterator();
        while (i.hasNext()) {
            City city = i.next();
            out.println("<option value=\""+city.getName()+"\">"+city.getName()+"</option>");
        } 		 
	}

}
