package com.example.controller;

import com.example.model.Event;
import com.example.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class EventController {

    @Autowired
    private EventService eventService;

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @PostMapping("/save")
    public ModelAndView save(@ModelAttribute Event event) {
        Event e = eventService.addEvent(event);
        ModelAndView mv = new ModelAndView("addevent");
        mv.addObject("status", e != null ? "Event added successfully" : "Error adding event");
        return mv;
    }

    @PostMapping("/findById")
    public ModelAndView findById(@RequestParam int id) {
        Event event = eventService.getEventById(id);
        ModelAndView mv;
        if (event != null && event.getId() != 0) {
            mv = new ModelAndView("searchevent");
            mv.addObject("event", event);
        } else {
            mv = new ModelAndView("searcheventresult");
            mv.addObject("status", "No event found");
        }
        return mv;
    }

    @GetMapping("/findAll")
    public ModelAndView findAll() {
        List<Event> event = eventService.getAllEvents();
        ModelAndView mv = new ModelAndView("viewevent");
        mv.addObject("event", event);
        return mv;
    }

    @PostMapping("/update")
    public String update(@ModelAttribute Event event) {
        eventService.addEvent(event);
        return "redirect:/findAll";
    }

    @GetMapping("/deleteById")
    public String deleteById(@RequestParam int id) {
        eventService.deleteEventById(id);
        return "redirect:/findAll";
    }
}
