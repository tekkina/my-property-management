
insert into role (role) values ('owner');
insert into role(role) values ('customer');
insert into role (role) values ('admin');

insert into address ( state, city, zip, street) values ( 'Iowa', 'Waterloo', '50706', '1 Buhler Plaza');
insert into address ( state, city, zip, street) values ( 'California', 'Stockton', '95219', '766 Talisman Trail');
insert into address ( state, city, zip, street) values ( 'Ohio', 'Cincinnati', '45243', '7650 Pennsylvania Park');
insert into address ( state, city, zip, street) values ( 'California', 'San Francisco', '94177', '5496 Anhalt Point');
insert into address ( state, city, zip, street) values ( 'New Hampshire', 'Portsmouth', '00214', '93613 Brickson Park Way');
insert into address ( state, city, zip, street) values ( 'Michigan', 'Saginaw', '48604', '00884 Waxwing Crossing');
insert into address ( state, city, zip, street) values ( 'California', 'Fresno', '93726', '97039 Erie Crossing');
insert into address ( state, city, zip, street) values ( 'Tennessee', 'Nashville', '37245', '42 Judy Way');
insert into address ( state, city, zip, street) values ( 'Florida', 'Jacksonville', '32244', '7550 Oriole Terrace');
insert into address ( state, city, zip, street) values ( 'Delaware', 'Wilmington', '19886', '371 Hallows Alley');

-- password 123 for all
insert into users(deleted,email,firstname,lastname,password,resetpasswordtoken,active, address_id) values
    (false,'blessingsimelda.naggayi@miu.edu','blessings','Naggayi','$2a$10$SRDI40/FTaDnEZlkOZisuO2om9Ner.2IRxIquKGJqDpNFhoi6Ub26','',true, 10);

insert into users(deleted,email,firstname,lastname,password,resetpasswordtoken,active, address_id) values
    (false,'tmehark@gmail.com','Tekeste','Teklehaimanot','$2a$10$SRDI40/FTaDnEZlkOZisuO2om9Ner.2IRxIquKGJqDpNFhoi6Ub26','',true, 2);


insert into users(deleted,email,firstname,lastname,password,resetpasswordtoken,active, address_id) values
    (false,'l@miu.edu','Lemmesa','Adugna','$2a$10$SRDI40/FTaDnEZlkOZisuO2om9Ner.2IRxIquKGJqDpNFhoi6Ub26','',true,3);


insert into users(deleted,email,firstname,lastname,password,resetpasswordtoken,active, address_id) values
    (false,'romeo@gmail.com','Romeo','mugwaneza','$2a$10$SRDI40/FTaDnEZlkOZisuO2om9Ner.2IRxIquKGJqDpNFhoi6Ub26','',true, 4);

insert into users(deleted,email,firstname,lastname,password,resetpasswordtoken,active, address_id) values
    (false,'beab@gmail.com','beab','yigezu','$2a$10$SRDI40/FTaDnEZlkOZisuO2om9Ner.2IRxIquKGJqDpNFhoi6Ub26','',true, 5);


insert into property (date_posted, area, description, name, number_of_room, price,status,type,address_id,owner_id) values (  '2022-09-26',76, 'This luxurious penthouse boasts panoramic views of the city skyline, offering a truly elevated living experience.', 'Safe Harbor', 1, 143000,false,'Sell',1,1);
insert into property (date_posted, area, description, name, number_of_room, price,status,type,address_id,owner_id)  values ( '2022-10-25',68, 'A charming country cottage nestled amidst picturesque gardens, perfect for those seeking tranquility and serenity.', 'Mills LLC', 3,  174000,false,'Sell',2,2);
insert into property (date_posted, area, description, name, number_of_room, price,status,type,address_id,owner_id)  values ('2022-11-12', 43, 'An architectural masterpiece with sleek modern design, featuring floor-to-ceiling windows that flood the interior with natural light.',' Country Side', 5, 263000,false,'Rent',3,3);
insert into property (date_posted, area, description, name, number_of_room, price,status,type,address_id,owner_id)  values ( '2022-12-21',35, 'A beachfront paradise with direct access to pristine sandy shores, ideal for avid sunseekers and water enthusiasts.','Mills LLC', 5, 290000,true,'Sell',4,4);
insert into property (date_posted, area, description, name, number_of_room, price,status,type,address_id,owner_id)  values ( '2021-01-14',99, 'A historic Victorian townhouse brimming with character and original features, showcasing timeless elegance and charm.' ,'Safe Harbor', 4, 389000,true,'Sell',5,5);
insert into property (date_posted, area, description, name, number_of_room, price,status,type,address_id,owner_id)  values ( '2021-02-13',58, 'A contemporary urban loft with an open-concept layout, showcasing industrial elements and a seamless blend of modern design.','Grady-Prosacco', 5, 187000,false,'Rent',4,4);
insert into property (date_posted, area, description, name, number_of_room, price,status,type,address_id,owner_id)  values ( '2021-03-12',73, 'A sprawling countryside estate with sprawling acres of lush greenery, providing ample space for outdoor recreation and relaxation.', 'Grand Bololo', 4, 363000,false,'Rent',5,5);
insert into property (date_posted, area, description, name, number_of_room, price,status,type,address_id,owner_id)  values ( '2021-04-21',38, 'A chic and stylish urban apartment located in the heart of the city, offering convenience and a vibrant cosmopolitan lifestyle.','Grady-Prosacco' , 3, 276000,false,'Sell',1,5);
insert into property (date_posted, area, description, name, number_of_room, price,status,type,address_id,owner_id)  values ('2021-05-22', 84, 'A secluded mountain retreat surrounded by towering trees and breathtaking vistas, providing the ultimate escape from the hustle and bustle of daily life','Safe Harbor', 2, 221000,true,'Rent',2,3);
insert into property (date_posted, area, description, name, number_of_room, price,status,type,address_id,owner_id)  values ( '2021-07-10',77, ' An exclusive waterfront villa featuring a private dock and stunning views, catering to those seeking a luxurious coastal living experience.','Mills LLC', 1, 266000,true,'Rent',1,5);

insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1576941089067-2de3c901e126?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1578&q=80',1);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1588880331179-bc9b93a8cb5e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',2);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1599427303058-f04cbcf4756f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80',3);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1623298317883-6b70254edf31?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',4);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1625602812206-5ec545ca1231?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80',5);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1608045742930-48cee6018255?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1546&q=80',6);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1608045742930-48cee6018255?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1246&q=80',7);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1591474200742-8e512e6f98f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1548&q=80',8);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1567428485548-c499e4931c10?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',9);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1584752242818-b4bd7fb3fe10?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1734&q=80',10);

insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',1);
insert into image ( url,property_id) values ( 'https://unsplash.com/s/photos/interior?orientation=landscape',1);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',1);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1700&q=80',2);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1537726235470-8504e3beef77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',2);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1497366216548-37526070297c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',2);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1615873968403-89e068629265?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',3);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1600585152220-90363fe7e115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',3);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1605774337664-7a846e9cdf17?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',3);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1606744888344-493238951221?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',4);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1618221381711-42ca8ab6e908?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',4);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1558882224-dda166733046?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',4);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1592595896551-12b371d546d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',5);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',5);
insert into image ( url,property_id) values ( 'https://images.unsplash.com/photo-1625585598750-3535fe40efb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',5);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1618221469555-7f3ad97540d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',10);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1562438668-bcf0ca6578f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1760&q=80',10);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1600585154166-d8897c8f930d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',10);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1617104424032-b9bd6972d0e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1092&q=80',9);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1449247709967-d4461a6a6103?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',9);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1582037928769-181f2644ecb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',9);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1618221999490-9418f64786aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',8);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1540574163026-643ea20ade25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',8);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1600585154084-4e5fe7c39198?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',8);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1615876063860-d971f6dca5dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',7);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1592247350271-c5efb34dd967?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',7);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1618221710640-c0eaaa2adb49?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',7);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1153&q=80',6);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1572048572872-2394404cf1f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',6);
insert into image (url,property_id) values ( 'https://images.unsplash.com/photo-1617103996702-96ff29b1c467?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',6);


insert into users_role(user_id,role_id) values (1,3);
insert into users_role(user_id,role_id) values (2,1);
insert into users_role(user_id,role_id) values (3,1);
insert into users_role(user_id,role_id) values (4,2);
insert into users_role(user_id,role_id) values (5,2);
insert into users_role(user_id,role_id) values (5,1);

insert into application(date,user_id,property_id) values ('2021-10-10',4,3);
insert into application(date,user_id,property_id) values ('2021-10-10',4,9);
insert into application(date,user_id,property_id) values ('2021-10-10',5,9);

