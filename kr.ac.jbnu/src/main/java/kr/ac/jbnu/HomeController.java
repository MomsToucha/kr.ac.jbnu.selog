package kr.ac.jbnu;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "homeView";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		logger.info("you just step into the Login Window");
		
		// add code.
		
		return "loginView";
	}
	
	@RequestMapping(value = "/home/login", method = RequestMethod.POST)
	public String login_try(Model model) {
		logger.info("trying to insert value to DB");
		
		// add code.
		
//		return "logined"
		return "login"; // switching is needed by value condition.
	}
	
	@RequestMapping(value = "/logined", method = RequestMethod.GET)
	public String logined(Model model) {
		logger.info("you just step into the Logined Window");
		
		// add code. Member session validation is needed.
		
		return "loginedView";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(HttpServletRequest request, HttpServletResponse response) {
		logger.info("you just step into the register Window");
		
		//add code.
		
		return "registerView";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model) {
		logger.info("you just step into the about Window");
		
		// add code.
		
		return "aboutView";
	}
	
	@RequestMapping(value = "/element", method = RequestMethod.GET)
	public String element(Model model) {
		logger.info("you just step into the postDetail Window");
		
		// add code.
		
		return "elementView";
	}
	
}
