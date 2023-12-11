package com.example;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import org.springframework.ui.Model;

@Controller
public class HomeController {

    @RequestMapping(value="/")
    public String home(Locale locale, Model model)
    {
        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate );

        return "index";
    }
}

