drop table acciedent_log;
drop table owner_info;
drop table vehicle_info;
drop table highway_info;
drop table driver_info;


create table highway_info(
highway_no varchar (5),
no_of_lanes int,
Additional_lane varchar(3),
weight_capacity_kg int,
distance_km number,
beginning varchar (10),
finish varchar (10),
primary key (highway_no)
);

insert into highway_info values ('n1',4,'yes',10000,343,'Dhaka','Chittagong');
insert into highway_info values ('n2',4,'yes',10000,123,'Dhaka','Mymensing');
insert into highway_info values ('n3',2,'no',8000,272,'Dhaka','Sylhet');
insert into highway_info values ('n6',2,'no',8000,393,'Dhaka','Khulna');
insert into highway_info values ('n5',2,'yes',10000,242,'Dhaka','Rajshahi');
insert into highway_info values ('n4',2,'yes',9000,297,'Dhaka','Rangpur');


create table driver_info(
registration_no number,
reg_date varchar(10),
vehicle_type varchar(10),
age number (3),
primary key (registration_no)
);

insert into driver_info values (19778981,'2-feb-2010','bus',40);
insert into driver_info values (19778982,'3-mar-2011','truck',25);
insert into driver_info values (19778983,'4-apr-2012','minibus',35);
insert into driver_info values (19778984,'5-may-2013','car',27);
insert into driver_info values (19778985,'6-jun-2014','bus',36);
insert into driver_info values (19778986,'7-jul-2015','minitruck',31);

create table vehicle_info (
reg_number number,
reg_date varchar(20),
root_permit varchar(5),
license_time_years number (3),
vehicle_type varchar(10),
primary key (reg_number),
foreign key (root_permit) references highway_info(highway_no)
);

insert into vehicle_info values ( 2015771, '3-mar-2016','n2',3,'bus');
insert into vehicle_info values ( 2015772, '4-apr-2016','n1',2,'truck');
insert into vehicle_info values ( 2015773, '5-dec-2016','n3',5,'bus');
insert into vehicle_info values ( 2015774, '6-jan-2016','n1',10,'car');
insert into vehicle_info values ( 2015775, '7-may-2016','n5',5,'minibus');
insert into vehicle_info values ( 2015776, '9-mar-2016','n6',2,'bus');

create table owner_info (
nid_no number,
vec_reg_no number,
driver_reg_no number,
vehicle_type varchar(10),
contact varchar(10),
primary key (nid_no,vec_reg_no),
foreign key (vec_reg_no) references vehicle_info (reg_number),
foreign key (driver_reg_no) references driver_info (registration_no)
);

insert into owner_info values ( 17781001,2015771,19778981,'car','khulna');
insert into owner_info values ( 17781002,2015772,19778982,'bus','chittagong');
insert into owner_info values ( 17781003,2015773,19778983,'truck','barisal');
insert into owner_info values ( 17781003,2015774,19778984,'minibus','barisal');
insert into owner_info values ( 17781002,2015775,19778985,'car','rangpur');
insert into owner_info values ( 17781006,2015776,19778986,'bus','dhaka');

create table acciedent_log (
vec_reg_no number,
driver_reg_no number,
highway_no varchar (5),
vehicle_type varchar (10),
time varchar(20),
area varchar (10),
total_casualty number(4),
foreign key (vec_reg_no) references vehicle_info (reg_number),
foreign key (driver_reg_no) references driver_info(registration_no),
foreign key (highway_no) references highway_info (highway_no)
);

insert into acciedent_log values (2015771,19778981,'n2','bus','11-feb-2017at5pm','gazipur',2);
insert into acciedent_log values (2015772,19778982,'n1','car','12-dec-2016at11am','comilla',6);
insert into acciedent_log values (2015773,19778983,'n3','bus','21-jan-2015at4pm','srimongol',1);
insert into acciedent_log values (2015774,19778984,'n4','truck','12-feb-2017at10pm','magura',11);
insert into acciedent_log values (2015775,19778985,'n5','minubus','11-mar-2017at12am','tangail',0);
insert into acciedent_log values (2015776,19778986,'n6','car','11-feb-2017at7pm','bogura',3);
