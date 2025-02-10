package com.example.service;

import com.example.model.Event;
import com.example.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventService {
    @Autowired
    private EventRepository eventRepository;
    public List<Event> getAllEvents() {
        return eventRepository.findAll();
    }
    public Event getEventById(int id) {
        return eventRepository.findById(id).orElse(new Event());
    }
    public Event addEvent(Event event) {
        return eventRepository.save(event);
    }
    public void deleteEventById(int id) {
        eventRepository.deleteById(id);
    }
}
