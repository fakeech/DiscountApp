package discount.repos;

import org.springframework.data.repository.CrudRepository;
import discount.entity.Tour;

public interface TourRepo extends CrudRepository<Tour, Long> {

    Iterable<Tour> findByNameContains(String filter);

}
