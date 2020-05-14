package discount.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import discount.entity.Service;
import discount.repos.ServiceRepo;

import java.util.Map;

@Controller
@RequestMapping("/service")
public class ServiceController {
    @Autowired
    private ServiceRepo serviceRepo;

    @GetMapping
    public String serviceList(Map<String, Object> model){
        Iterable<Service> services = serviceRepo.findAll();
        model.put("services", services);
        return "serviceList";
    }

   /* @PostMapping("serviceInfo")
    public String serviceInfo(@RequestParam("id")Order order, Map<String, Object> model){
        Iterable<Service> services = serviceRepo.findByOrder(order);
        model.put("servicesInfo", services);
        return "";
    }*/
}
