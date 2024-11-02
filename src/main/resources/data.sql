INSERT INTO division (division_Name) 
VALUES 
('kongphop'),
('Nina'),
('Win'),
('P'),
('Net');


INSERT INTO Department (departmentName) 
VALUES 
('Dr. Michael Thompson'),('Dr. Sarah Green'),
('Dr. Emily Carter'),('Dr. David Mitchell'),
('Dr. James Reynolds'),('Dr. Laura Spencer'),
('Dr. Christopher Hale'),('Dr. Sophia White'),
('Dr. Benjamin Foster'),('Dr. Olivia Collins'),
('Dr.Kongphop Sudlore');


INSERT INTO BUILD (buildName) 
VALUES ('S2'),('S3'),('S4');


INSERT INTO ROOM (roomId,roomNameENG,capacity,buildId,roomStatus,departmentId) 
VALUES 
('213','Physics Laboratory','43',2,'available',1),
('215','Physics Laboratory','43',2,'available',1),
('217','Physics Laboratory','43',2,'available',1),
('220','Physics Laboratory','43',2,'available',1),
('301','Biology and Biotechnology Laboratory','36',2,'available',2),
('302/1','Biology and Biotechnology Laboratory','5',2,'available',2),
('302/2','Biology and Biotechnology Laboratory','5',2,'available',2),
('303','Biology and Biotechnology Laboratory','43',2,'available',2),
('305','Biology and Biotechnology Laboratory','43',2,'available',2),
('310','Biology and Biotechnology Laboratory','43',2,'available',2),
('312','Biology and Biotechnology Laboratory','43',2,'available',2),
('314','Biology and Biotechnology Laboratory','43',2,'available',2),
('301','Biology and Biotechnology Laboratory','10',1,'available',2),
('303','Biology and Biotechnology Laboratory','20',1,'available',2),
('304','Biology and Biotechnology Laboratory','15',1,'available',2),
('305','Biology and Biotechnology Laboratory','10',1,'available',2),
('401','Chemistry Laboratory','43',2,'available',2),
('415','Chemistry Laboratory','43',2,'available',2),
('417','Chemistry Laboratory','43',2,'available',2),
('419','Chemistry Laboratory','43',2,'available',2),
('422','Chemistry Laboratory','43',2,'available',2),
('506','Cosmetic Science Laboratory','5',2,'available',3),
('507','Cosmetic Science Laboratory','43',2,'available',3),
('509','Cosmetic Science Laboratory','6',2,'available',3),
('510','Cosmetic Science Laboratory','43',2,'available',3),
('105','Cosmetic Science Laboratory','43',2,'available',3),
('106','Cosmetic Science Laboratory','5',2,'available',3),
('201','Postharvest Technology and Packaging Laboratory
','18',2,'available',3),
('201/1','Postharvest Technology and Packaging Laboratory','5',2,'available',3),
('203','Postharvest Technology and Packaging Laboratory','36',2,'available',3),
('205','Postharvest Technology and Packaging Laboratory','0',2,'available',3),
('206','Postharvest Technology and Packaging Laboratory','3',2,'available',3),
('208','Postharvest Technology and Packaging Laboratory','12',2,'available',3),

('107','Material science laboratory','12',3,'available',3),
('107/1','Material science laboratory','12',3,'available',3),
('107/2','Material science laboratory','12',3,'available',3),
('103','Material science laboratory','12',3,'available',3),
('103/1','Material science laboratory','30',3,'available',3),
('101','Material science laboratory','30',3,'available',3),
('102','Material science laboratory','20',3,'available',3),

('114','Food Technology laboratory','30',3,'available',3),
('118','Food Technology laboratory','3',3,'available',3),
('119','Food Technology laboratory','50',3,'available',3),
('120','Food Technology laboratory','50',3,'available',3),
('120/1','Food Technology laboratory','30',3,'available',3),
('120/6','Food Technology laboratory','3',3,'available',3),
('123','Food Technology laboratory','3',3,'available',3);

INSERT INTO USERS (usersMail,usersName,usersPassword,usersPhone,usersType,divisionId) 
VALUES 
('Petch@example.com','Peth','zx12121','09091042','student',1),
('reynolds@example.com', 'James Reynolds', 'password123', '123-456-7890', 'Head_Department', 1),
('laura.spencer@example.com', 'Laura Spencer', 'password123', '234-567-8901', 'Director', 2);