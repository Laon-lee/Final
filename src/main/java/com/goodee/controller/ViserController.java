package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViserController {

	@GetMapping("viser/proc-add")
	public String addPage() {
		return"superviser/proc-add";
	}
}
