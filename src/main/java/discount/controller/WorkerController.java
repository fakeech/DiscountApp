package discount.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import discount.entity.Worker;
import discount.repos.WorkerRepo;

import java.util.Map;

@Controller
@RequestMapping("/worker")
public class WorkerController {
    @Autowired
    private WorkerRepo workerRepo;

    @GetMapping
    public String workerList(Map<String, Object> model){
        Iterable<Worker> workers = workerRepo.findAll();
        model.put("workers", workers);
        return "workerList";
    }

    @PostMapping("workerDelete")
    public String workerDelete(@RequestParam("id") Worker worker, Map<String, Object> model){
        workerRepo.delete(worker);
        Iterable<Worker> workers = workerRepo.findAll();
        model.put("workers", workers);
        return "workerList";
    }

    @GetMapping("/workerAdd")
    public String worker(){ return "workerAdd";}

    @PostMapping("addWorker")
    public String workerAdd(@RequestParam String fio, @RequestParam String position,
                          @RequestParam String phone, Map<String,Object> model){
        Worker worker = new Worker(fio, position, phone);
        workerRepo.save(worker);
        return "redirect:/worker";
    }
}
