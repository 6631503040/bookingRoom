package Folder.into.Domain;
import jakarta.persistence.*;
import lombok.*;
import java.time.LocalTime;
import java.time.LocalDate;

@Getter
@Setter

@Entity
public class BookingData {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long refId;

    @ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @JoinColumn(name = "usersId",referencedColumnName = "usersId")
    private Users userId;

    @ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @JoinColumn(name = "roomId",referencedColumnName = "roomId")
    private Room roomId;

    private LocalDate DateReq;
    private LocalDate DateStart;
    private LocalDate DateEnd;

    private LocalTime timeStart;
    private LocalTime timeEnd;

    private String topic;

    private int approveTeacherId;
    private int approveDepartmentId;
    private int approveDirectorId;

    private LocalDate approveTeacherDate;
    private LocalDate approveDepartmentDate;
    private LocalDate approveDirectorDate;

    private String reason;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false)
    private Status status;
    private enum Status{
        inprocess, approved, denied
    }
}
