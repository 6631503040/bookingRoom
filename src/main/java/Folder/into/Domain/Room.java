package Folder.into.Domain;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter

@Entity
@Table(name = "ROOM")
public class Room {
    @Id
    private String roomId;
    private int capacity;
    private String roomNameENG;
    private String roomNameTH;

    @Enumerated(EnumType.STRING)
    @JoinColumn(name = "roomStatus")
    private RoomStatus roomStatus;
    private enum RoomStatus{
        available,not_available
    }


    @ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @JoinColumn(name = "buildId",referencedColumnName = "buildId")
    private Build build;

    @ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @JoinColumn(name = "departmentId",referencedColumnName = "departmentId")
    private Department department;
}
