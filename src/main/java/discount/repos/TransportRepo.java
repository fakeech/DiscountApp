package discount.repos;

import org.springframework.data.repository.CrudRepository;
import discount.entity.Tour;
import discount.entity.Transport;

public interface TransportRepo extends CrudRepository<Transport, Long> {


    Iterable<Transport> findByTour(Tour tour);
}
