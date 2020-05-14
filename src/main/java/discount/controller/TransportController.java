package discount.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import discount.entity.Tour;
import discount.entity.Transport;
import discount.repos.TourRepo;
import discount.repos.TransportRepo;

import java.util.Map;

@Controller
@RequestMapping("/transport")
public class TransportController {
    @Autowired
    private TransportRepo transportRepo;
    @Autowired
    private TourRepo tourRepo;

    @GetMapping
    public String transportList(Map<String, Object> model){
        Iterable<Transport> transports = transportRepo.findAll();
        model.put("transports", transports);
        return "transportList";
    }

    @PostMapping("transportDelete")
    public String tourDelete(@RequestParam("id") Transport transport, Map<String, Object> model){
        transportRepo.delete(transport);
        Iterable<Transport> transports = transportRepo.findAll();
        model.put("transports", transports);
        return "transportList";
    }

    @GetMapping("/transportAdd")
    public String transport(Model model){
        Iterable<Tour> tours = tourRepo.findAll();
        model.addAttribute("tours",tours);
        return "transportAdd";
    }

    @PostMapping("addTransport")
    public String tourAdd(@RequestParam String type, @RequestParam("idtour") Tour tour){
        Transport transport = new Transport(type, tour);
        transportRepo.save(transport);
        return "redirect:/transport";
    }
}
