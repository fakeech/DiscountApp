package discount.repos;

import org.springframework.data.repository.CrudRepository;
import discount.entity.Worker;

public interface WorkerRepo extends CrudRepository<Worker, Long> {
}
