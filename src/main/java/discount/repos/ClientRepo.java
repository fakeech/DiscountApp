package discount.repos;

import org.springframework.data.repository.CrudRepository;
import discount.entity.Client;

public interface ClientRepo extends CrudRepository<Client, Long> {

}
