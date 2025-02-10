package com.example.controller;

import com.example.model.Event;
import com.example.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class EventController {
    @Autowired
    private EventService eventService;

    @RequestMapping("/save")
    public ModelAndView save(@ModelAttribute Event event) {
        Event  e=eventService.addEvent(event);
        ModelAndView mv = new ModelAndView("addevent.jsp");
        if(e!=null){
            mv.addObject("status","Event added successfully");
        }
        else {
            mv.addObject("status","Error adding event");
        }

        return mv;
    }

    @RequestMapping("/findById")
    public ModelAndView findById(@RequestParam int id) {
        ModelAndView mv;
        Event event=eventService.getEventById(id);
        if(event.getId()!=0){
            mv = new ModelAndView("searchevent.jsp");
            mv.addObject("event",event);
        }
        else {
            mv = new ModelAndView("searcheventresult.jsp");
            mv.addObject("status","Error searching event");
        }
        return mv;
    }
    @RequestMapping("/findAll")
    public ModelAndView findAll() {
        List<Event> event=eventService.getAllEvents();
        ModelAndView mv = new ModelAndView("viewevent.jsp");
        mv.addObject("event",event);
        return mv;
    }
    @RequestMapping("/update")
    public ModelAndView update(@ModelAttribute Event event) {
        ModelAndView mv = new ModelAndView("findAll");
        eventService.addEvent(event);
        return mv;
    }

    @RequestMapping("/deleteById")
    public ModelAndView deleteById(@RequestParam int id) {

        ModelAndView mv = new ModelAndView("findAll");
        eventService.deleteEventById(id);
        return mv;
    }

}