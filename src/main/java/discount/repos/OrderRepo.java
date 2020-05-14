package discount.repos;

import org.springframework.data.repository.CrudRepository;
import discount.entity.Order;


public interface OrderRepo extends CrudRepository<Order,Long> {

}

