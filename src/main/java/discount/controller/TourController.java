package discount.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import discount.entity.Tour;
import discount.repos.TourRepo;

import java.util.Map;

@Controller
@RequestMapping("/tour")
public class TourController {
    @Autowired
    private TourRepo tourRepo;

    @GetMapping
    public String tourList(Map<String, Object> model){
        Iterable<Tour> tours = tourRepo.findAll();
        model.put("tours", tours);
        return "tourList";
    }

    @GetMapping("/tourAdd")
    public String tour(){
        return "tourAdd";
    }

    @PostMapping("addTour")
    public String tourAdd(@RequestParam String name, @RequestParam String description,
                          @RequestParam int cost, @RequestParam int days,
                          Map<String,Object> model){
        Tour tour = new Tour(name, description,days,cost);
        tourRepo.save(tour);
        return "redirect:/tour";
    }

    @PostMapping("tourDelete")
    public String tourDelete(@RequestParam("id") Tour tour, Map<String, Object> model){
        tourRepo.delete(tour);
        Iterable<Tour> tours = tourRepo.findAll();
        model.put("tours", tours);
        return "tourList";
    }

}
