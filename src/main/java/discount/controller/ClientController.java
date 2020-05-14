package discount.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import discount.entity.Client;
import discount.repos.ClientRepo;

import java.util.Map;

@Controller
@RequestMapping("/client")
public class ClientController {
    @Autowired
    private ClientRepo clientRepo;

    @GetMapping
    public String clientList(Map<String, Object> model){
        Iterable<Client> clients = clientRepo.findAll();
        model.put("clients", clients);
        return "clientList";
    }
}
