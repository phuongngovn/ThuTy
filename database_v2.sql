use lakesideBeautySalon
go


CREATE TABLE category (
  categoryId int NOT NULL PRIMARY KEY IDENTITY(1,1),
  categoryName  nvarchar(50) NOT NULL,  
) 
go
CREATE TABLE beautyservice (
  serviceId int NOT NULL primary key IDENTITY(1,1) ,
  serviceName nvarchar(MAX) NOT NULL,
  description nvarchar(MAX) DEFAULT '',
  imageFile nvarchar(256) DEFAULT '' ,
  categoryId int NOT NULL foreign key references category(categoryId) on delete cascade on update cascade,
  
) 
go

CREATE TABLE  subservice  (
   subServiceId  int primary key NOT NULL IDENTITY(1,1),
   subServiceName  nvarchar(MAX) NOT NULL,
   description  nvarchar(MAX) DEFAULT '' NULL,
   imageFile  nvarchar(256) DEFAULT '' NULL,
   serviceId  int not NULL foreign key references beautyservice(serviceId) ON DELETE CASCADE ON UPDATE CASCADE,
   appearOnCalendar  bit DEFAULT 1,
   availableOnBooking bit default 1,
   duration  int default 5,
   price  float default 0.0,
   GST  nvarchar(20) DEFAULT 'Standard',
  )
  go

INSERT INTO    category  (  categoryName ) VALUES ('Spa Menu');
INSERT INTO    category  (  categoryName ) VALUES ('Gift');
INSERT INTO    category  (  categoryName ) VALUES ( 'Hair');
INSERT INTO    category  (  categoryName ) VALUES ( 'Promotion');

INSERT INTO    beautyservice  (  categoryName ) VALUES ('Spa Menu');
INSERT INTO    beautyservice  (  categoryName ) VALUES ('Gift');
INSERT INTO    beautyservice  (  categoryName ) VALUES ( 'Hair');
INSERT INTO    beautyservice  (  categoryName ) VALUES ( 'Promotion');

INSERT INTO    beautyservice  (   serviceName ,  description ,  imageFile ,   categoryId ) VALUES ( 'spa 1', 'NULL', '', '1');
INSERT INTO    beautyservice   (   serviceName ,  description ,  imageFile ,   categoryId )  VALUES ( 'spa 2', 'NULL', '', '1');
INSERT INTO    beautyservice  (   serviceName ,  description ,  imageFile ,   categoryId )  VALUES ( 'spa 3', 'NULL', '', '1');
INSERT INTO    beautyservice   (  serviceName ,  description ,  imageFile ,   categoryId )  VALUES ( 'spa 4', 'NULL', '', '1');
INSERT INTO    beautyservice   (   serviceName ,  description ,  imageFile ,   categoryId )  VALUES ('Gift 1', 'NULL', '', '2');
INSERT INTO    beautyservice   (  serviceName ,  description ,  imageFile ,   categoryId )  VALUES ('hair 1', 'NULL', '', '3');
INSERT INTO    beautyservice   (   serviceName ,  description ,  imageFile ,   categoryId )  VALUES ( 'hair 2', 'NULL', '', '3');
INSERT INTO    beautyservice   (   serviceName ,  description ,  imageFile ,   categoryId )  VALUES ( 'Promotion services', 'NULL', 'NULL', '4');

/* INSERT INTO    subservice  ( subServiceId ,  appearOnCalendar ,  availableOnBooking ,  description ,  duration ,  GST ,  imageFile ,  price ,  processingTime ,  subServiceName ,  categoryId ,  serviceId ) VALUES ('subServiceId', 'appearOnCalendar', 'availableOnBooking', 'description', 'duration', 'GST', 'imageFile', 'price', 'processingTime', 'subServiceName', 'categoryId', 'serviceId'); */
INSERT INTO    subservice  ( subServiceId ,  appearOnCalendar ,  availableOnBooking ,  description ,  duration ,  GST ,  imageFile ,  price ,  processingTime ,  subServiceName ,  categoryId ,  serviceId ) VALUES ('1', '1', '1', '', '120', 'STANDARD', '', '250', 'NULL', 'Classic eyeliner', 'NULL', '1');
INSERT INTO    subservice  ( subServiceId ,  appearOnCalendar ,  availableOnBooking ,  description ,  duration ,  GST ,  imageFile ,  price ,  processingTime ,  subServiceName ,  categoryId ,  serviceId ) VALUES ('2', '1', '1', '', '180', 'STANDARD', '', '450', 'NULL', 'Microblading-Feather Strokes Brows', 'NULL', '4');



