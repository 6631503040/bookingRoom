package Folder.into.Repository;
import Folder.into.Domain.Users;

import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<Users,Long>{
    
}
