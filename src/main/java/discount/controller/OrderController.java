package discount.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import discount.entity.*;
import discount.repos.*;

import java.util.Map;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderRepo orderRepo;
    @Autowired
    private ServiceRepo serviceRepo;
    @Autowired
    private WorkerRepo workerRepo;
    @Autowired
    private ClientRepo clientRepo;
    @Autowired
    private TransportRepo transportRepo;

    @GetMapping
    public String orderList(Map<String, Object> model1, Map<String, Object> model2){
        Iterable<Order> orders = orderRepo.findAll();
        model1.put("orders", orders);
        Iterable<Service> services = serviceRepo.findAll();
        model2.put("services", services);
        return "orderList";
    }

    @GetMapping("{tour}")
    public String goToOrder(@PathVariable Tour tour, Model model) {
        model.addAttribute("tours", tour);
        Iterable<Worker> workers = workerRepo.findAll();
        model.addAttribute("workers", workers);
        Iterable<Transport> transports = transportRepo.findByTour(tour);
        model.addAttribute("transports", transports);
        return "orderAdd";
    }

    @PostMapping("addOrder")
    public String addOrder(@RequestParam("idtour") Tour tour, @RequestParam String date, @RequestParam int people,
                           @RequestParam String fioClient, @RequestParam String phoneClient, @RequestParam String emailClient,
                           @RequestParam("idworker") Worker worker, @RequestParam("idtransport") Transport transport){
        Client newClient = new Client(fioClient, phoneClient, emailClient);
        clientRepo.save(newClient);
        Order newOrder = new Order(date, people, tour, newClient, worker, transport);
        orderRepo.save(newOrder);
        return  "redirect:/";
    }

    @PostMapping("orderDelete")
    public String deleteOrder(@RequestParam("id") Order order,
                              @RequestParam("idclient") Client client, Map<String, Object> model){
        orderRepo.delete(order);
        clientRepo.delete(client);
        Iterable<Order> orders = orderRepo.findAll();
        model.put("orders", orders);
        return "orderList";
    }

    @PostMapping("serviceInfo")
    public String serviceInfo(@RequestParam("id")Order order, Map<String, Object> model){
        Iterable<Service> services = serviceRepo.findByOrder(order);
        model.put("servicesInfo", services);
        return "orderList";
    }

}
