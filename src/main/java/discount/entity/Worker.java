package discount.entity;

import javax.persistence.*;

@Entity
@Table(name = "worker")
public class Worker {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idworker;

    private String fio;
    private String position;
    private String phone;

    public Worker() {
    }

    public Long getIdworker() {
        return idworker;
    }

    public void setIdworker(Long idworker) {
        this.idworker = idworker;
    }

    public Worker(String fio, String position, String phone) {
        this.fio = fio;
        this.position = position;
        this.phone = phone;
    }

    public void setId(Long idworker) {
        this.idworker = idworker;
    }

    public String getFio() {
        return fio;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
