package com.example.app.hopdong;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HopdongController {
	@Autowired
	HopdongService service;
	@RequestMapping("/hopdong")
	public String viewHomePage(Model model) {
		List<hopdong> listHopdong = service.listAll();
		model.addAttribute("listHopdong",listHopdong);
		return "hopdong/indexhopdong";
	}
	@RequestMapping("/newHopdong")
	public String showNewHopdongPage(Model model) {
		hopdong hopdong = new hopdong();
		model.addAttribute("hopdong" ,hopdong);
		return "hopdong/newHopdong";
	}
	@RequestMapping(value="/saveHopdong",method=RequestMethod.POST)
	public String saveHopdong(@ModelAttribute("hopdong")hopdong hopdong) {
		service.save(hopdong);
		return"redirect:/hopdong";
	}
	@RequestMapping("/editHopdong/{mahopdong}")
	public ModelAndView showEditSinhvienPage(@PathVariable(name="mahopdong")int mahopdong) {
		ModelAndView nav= new ModelAndView("hopdong/editHopdong");
		hopdong hopdong = service.get(mahopdong);
		nav.addObject("hopdong",hopdong);
		return nav;
	}
	@RequestMapping("/deleteHopdong/{mahopdong}")
	public String deleteHopdong(@PathVariable(name="mahopdong")int mahopdong){
		service.delete(mahopdong);
		return "redirect:/hopdong";
	}
}
