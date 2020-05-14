package discount.entity;

import javax.persistence.*;

@Entity
@Table(name = "transport")
public class Transport {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idtransport;

    private String type;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "tour_id")
    private Tour tour;

    public Transport() {
    }

    public Long getIdtransport() {
        return idtransport;
    }

    public Transport(String type, Tour tour) {
        this.type = type;
        this.tour = tour;
    }

    public void setIdtransport(Long idtransport) {
        this.idtransport = idtransport;
    }
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }
}
