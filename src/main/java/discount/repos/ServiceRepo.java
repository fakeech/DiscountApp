package discount.repos;

import org.springframework.data.repository.CrudRepository;
import discount.entity.Order;
import discount.entity.Service;

public interface ServiceRepo extends CrudRepository<Service, Long> {
    Iterable<Service> findByOrder(Order order);
}
