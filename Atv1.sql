/* Se leu já sabe né? */

create database dieta;	
use dieta;

create table user(
	id bigint not null auto_increment,
    user_name varchar(100) not null,
    user_age int not null,
    user_dob datetime not null default now(),
    user_h double not null,
    user_w int not null,
    primary key(id)
);

create table day(
	id bigint not null auto_increment,
	day date not null,
	user_fk bigint not null,
    primary key (id),
    foreign key (user_fk) references user(id)
);


create table meals(
	id bigint not null auto_increment,
    calories int not null,
    fat int,
    carbohydrates int not null,
    fibre int not null,
    protein int not null,
    day_fk bigint,
    primary key(id),
    foreign key(day_fk) references day(id)
);

insert into user (user_name, user_age, user_dob, user_h, user_w) values ('Manuel Gomes',53,'1969-02-02 19:27:00',1.64,69);
insert into user (user_name, user_age,user_h,user_w,user_dob) values ('ViniBOY',18,1.75,56,'2004-09-01 12:06');
insert into user (user_name, user_age, user_h, user_w, user_dob) values ('Clayton',50,1.8,90,'1972-06-08 22:45:00');
insert into user (user_name, user_age, user_h, user_w) values ('Ednaldo Pereira',48,1.71,79);
select *from user;

insert into day (day,user_fk) values ('2023-02-13',1);
insert into day (day,user_fk) values ('2023-01-29',1);
insert into day (day,user_fk) values ('2023-01-03',2);
insert into day (day,user_fk) values ('2023-02-10',2);
select *from day;

insert into meals (calories,fat,carbohydrates,fibre,protein,day_fk) values (1700,15,560,200,150,2);
select *from meals; 