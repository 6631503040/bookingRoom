package Folder.into.Repository;
import Folder.into.Domain.BookingData;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;


public interface BookingDataRepository extends JpaRepository<BookingData,Long>{
    List<BookingData> findByRefId(Long refId);
} 