package discount.entity;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "tour")
public class Tour {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idtour;

    private String name;
    private String description;
    private int days;
    private int cost;

    @OneToMany(mappedBy = "tour")
    private Set<Transport>  transports;

    public Tour(String name, String description, int days, int cost) {
        this.name = name;
        this.description = description;
        this.days = days;
        this.cost = cost;
    }

    public Set<Transport> getTransports() {
        return transports;
    }

    public void setTransports(Set<Transport> transports) {
        this.transports = transports;
    }

    public Tour() {
    }

    public Long getIdtour() {
        return idtour;
    }

    public void setIdtour(Long idtour) {
        this.idtour = idtour;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }
}
