package com.codingdojo.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	
	@GetMapping("/")
	public String index() {
		return "redirect:/omikuji";
	}
	
//	route to render the home page that shows the Omikuji form	
	@GetMapping("/omikuji")
	public String omikuji() {
		return "index.jsp";
	}
	
//	POST route to process the form when the user hits "send"
	@PostMapping("/submit")
	public String submit(
			@RequestParam(value="number") int number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="profession") String profession,
			@RequestParam(value="thing") String sign,
			@RequestParam(value="nicety") String compliment,
			HttpSession session
			) {
		
//		Include a request mapping to handle processing the information from the form, store the form input into session...
		String fortune = String.format(
				"In %s years you will live in %s with %s as your roommate, %s. The next time you see a %s, you will have good luck. Also, %s.",
				number, city, person, profession, sign, compliment);
		
		session.setAttribute("fortune", fortune);
		
//		... and redirect to the /omikuji/show route.
		return "redirect:omikuji/show";
	}
	
//	route to render their fortune
	@GetMapping("/omikuji/show")
	public String show(HttpSession session, Model model) {
		
//		Dynamically render the template for the /omikuji/show route using the information saved in session.
		String fortune = (String) session.getAttribute("fortune");
		model.addAttribute("fortune", fortune);
		
		return "fortune.jsp";
	}

}
