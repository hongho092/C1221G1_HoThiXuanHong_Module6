package final_be.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "loai_tour")
@JsonIgnoreProperties({"tours"})
public class LoaiTour {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String tenLoaiTour;

    @JsonManagedReference
    @JsonBackReference(value = "")
    @OneToMany(mappedBy = "loaiTour")
    private List<Tour> tours;
}
