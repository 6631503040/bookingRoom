package Folder.into.Controller;
import java.util.Optional;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import Folder.into.Domain.BookingData;
import Folder.into.Repository.BookingDataRepository;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
public class BookingDataController {

    @Autowired
    private BookingDataRepository bookingrepo;


    @GetMapping("/booking")
    public ResponseEntity<List<BookingData>> getAllBooking(){
        List<BookingData> booking = bookingrepo.findAll();
        return new ResponseEntity<List<BookingData>>(booking ,HttpStatus.OK);
    }

    @GetMapping("/booking/{Id}")
    public ResponseEntity<BookingData> getBookingById(@PathVariable Long Id) {
        Optional<BookingData> booking = bookingrepo.findById(Id);
        if(booking.isPresent()){
            return new ResponseEntity<>(booking.get(),HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
    
    @PostMapping("/booking")
    public ResponseEntity<BookingData> createBooking(@RequestBody BookingData bookingData) {
        BookingData savedBooking = bookingrepo.save(bookingData);
        return new ResponseEntity<BookingData>(savedBooking, HttpStatus.CREATED);
    }

    @PutMapping("/booking/{refid}")
    public ResponseEntity<BookingData> updateBooking(@PathVariable Long refid, @RequestBody BookingData updatedBookingData) {
        if (!bookingrepo.existsById(refid)) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        updatedBookingData.setRefId(refid);
        BookingData savedBooking = bookingrepo.save(updatedBookingData);
        return new ResponseEntity<>(savedBooking, HttpStatus.OK);
    }

    @DeleteMapping("/booking/{refid}")
    public ResponseEntity<Void> deleteBooking(@PathVariable Long refid) {
        if (!bookingrepo.existsById(refid)) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        bookingrepo.deleteById(refid);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

}
