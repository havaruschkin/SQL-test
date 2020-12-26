--liquibase formatted sql

--changeset yura:2020-12-20-create-table-auto/1
create table auto (
id serial,
make varchar(20),
model varchar(20),
primary key(id)
);

--changeset yura:2020-12-20-create-table-car/2
create table car (
id serial,
auto_id int,
number_car varchar(10),
PRIMARY KEY(id),
FOREIGN KEY(auto_id) REFERENCES auto(id)
);

--changeset yura:2020-12-20-create-table-person/3
create table person (
id serial,
first_name varchar(20),
last_name varchar(20),
phone_number varchar(20),
car_id int unique,
PRIMARY KEY(id),
foreign key(car_id) references car(id)
);

--changeset yura:2020-12-20-create-table-violation/4
create table violation (
id serial,
violation_name varchar(100),
PRIMARY KEY(id)
);

--changeset yura:2020-12-20-create-table-result-table/5
create table result_table (
id serial,
person_id int,
violation_id int,
PRIMARY KEY(id),
FOREIGN KEY(person_id) REFERENCES person(id),
FOREIGN KEY(violation_id) REFERENCES violation(id)
);

--changeset yura:2020-12-20-insert-table-person/6
insert into person (first_name, last_name, phone_number) values ('Molli', 'Stones', '1156100271');
insert into person (first_name, last_name, phone_number) values ('Almire', 'Sandels', '8817943025');
insert into person (first_name, last_name, phone_number) values ('Tish', 'Fiddymont', '9006943997');
insert into person (first_name, last_name, phone_number) values ('Lezley', 'Hardaway', '3465830734');
insert into person (first_name, last_name, phone_number) values ('Arabela', 'Gilroy', '7392442268');
insert into person (first_name, last_name, phone_number) values ('Natalee', 'Schaffel', '6439432196');
insert into person (first_name, last_name, phone_number) values ('Nathalia', 'McSkeagan', '4494245299');
insert into person (first_name, last_name, phone_number) values ('Nickolas', 'Coltan', '6724756038');
insert into person (first_name, last_name, phone_number) values ('Loutitia', 'Osbaldeston', '2688419396');
insert into person (first_name, last_name, phone_number) values ('Katha', 'McGrath', '8583071277');
insert into person (first_name, last_name, phone_number) values ('Brittney', 'Startin', '8525375882');
insert into person (first_name, last_name, phone_number) values ('Kathlin', 'Rotchell', '3936337260');
insert into person (first_name, last_name, phone_number) values ('Sonja', 'Chill', '3904923701');
insert into person (first_name, last_name, phone_number) values ('Issy', 'Durdle', '8272035292');
insert into person (first_name, last_name, phone_number) values ('Wells', 'Norquay', '2647742900');
insert into person (first_name, last_name, phone_number) values ('Marcellina', 'Loveland', '3159365136');
insert into person (first_name, last_name, phone_number) values ('Vidovik', 'Keeler', '4274750168');
insert into person (first_name, last_name, phone_number) values ('Constancia', 'Asche', '7832193268');
insert into person (first_name, last_name, phone_number) values ('Lorry', 'Mattecot', '8564933318');
insert into person (first_name, last_name, phone_number) values ('Felicle', 'Capstake', '9903562347');
insert into person (first_name, last_name, phone_number) values ('Sherri', 'Hatliffe', '9724610566');
insert into person (first_name, last_name, phone_number) values ('Ethel', 'Readings', '7272640002');
insert into person (first_name, last_name, phone_number) values ('Salomo', 'Muldowney', '9595265971');
insert into person (first_name, last_name, phone_number) values ('Olimpia', 'Holah', '1494222777');
insert into person (first_name, last_name, phone_number) values ('Vernon', 'Kinmond', '6018699451');
insert into person (first_name, last_name, phone_number) values ('Harwilll', 'Jacop', '5823389849');
insert into person (first_name, last_name, phone_number) values ('Farleigh', 'Coushe', '2731080853');
insert into person (first_name, last_name, phone_number) values ('Cybil', 'Spiers', '4751401591');
insert into person (first_name, last_name, phone_number) values ('Harlen', 'Ausher', '4157958994');
insert into person (first_name, last_name, phone_number) values ('Koral', 'Glozman', '5298383850');
insert into person (first_name, last_name, phone_number) values ('Joella', 'Edgworth', '7712862380');
insert into person (first_name, last_name, phone_number) values ('Alice', 'Thrower', '6121476871');
insert into person (first_name, last_name, phone_number) values ('Iolanthe', 'Bakes', '5217787052');
insert into person (first_name, last_name, phone_number) values ('Sorcha', 'Chalcroft', '4161609624');
insert into person (first_name, last_name, phone_number) values ('Lauren', 'Frenzel;', '7013504438');
insert into person (first_name, last_name, phone_number) values ('Eran', 'Swate', '3029910641');
insert into person (first_name, last_name, phone_number) values ('Agnola', 'Couling', '1052708735');
insert into person (first_name, last_name, phone_number) values ('Cornelia', 'Worledge', '4411701326');
insert into person (first_name, last_name, phone_number) values ('Anallese', 'Beirne', '6119994188');
insert into person (first_name, last_name, phone_number) values ('Bob', 'Sarvar', '6468671886');
insert into person (first_name, last_name, phone_number) values ('Bastien', 'Menendes', '8256713961');
insert into person (first_name, last_name, phone_number) values ('Codi', 'Squibbs', '4655252032');
insert into person (first_name, last_name, phone_number) values ('Abner', 'Snelgrove', '2587056783');
insert into person (first_name, last_name, phone_number) values ('Jasmin', 'Franck', '7441970584');
insert into person (first_name, last_name, phone_number) values ('Cad', 'Gerholz', '1539094333');
insert into person (first_name, last_name, phone_number) values ('Norean', 'Gobeau', '7317882390');
insert into person (first_name, last_name, phone_number) values ('Corliss', 'Basnett', '6152567014');
insert into person (first_name, last_name, phone_number) values ('Papagena', 'Ruilton', '6367636344');
insert into person (first_name, last_name, phone_number) values ('Alvin', 'McColgan', '6929620020');
insert into person (first_name, last_name, phone_number) values ('Christyna', 'Matiasek', '2186686321');
insert into person (first_name, last_name, phone_number) values ('Hardy', 'Kardos-Stowe', '1661885826');
insert into person (first_name, last_name, phone_number) values ('Saunder', 'Kenewel', '4653420084');
insert into person (first_name, last_name, phone_number) values ('Maxim', 'De Maria', '1359927581');
insert into person (first_name, last_name, phone_number) values ('Bryanty', 'Fieldhouse', '7203064949');
insert into person (first_name, last_name, phone_number) values ('Lynde', 'Bettridge', '5859677036');
insert into person (first_name, last_name, phone_number) values ('Elset', 'Juliano', '1288344110');
insert into person (first_name, last_name, phone_number) values ('Fionnula', 'Babidge', '6217016607');
insert into person (first_name, last_name, phone_number) values ('Karalynn', 'Tatum', '1354908987');
insert into person (first_name, last_name, phone_number) values ('Alonso', 'Rickson', '3163950187');
insert into person (first_name, last_name, phone_number) values ('Jacky', 'Maier', '5078559694');
insert into person (first_name, last_name, phone_number) values ('Savina', 'Mc Cahey', '5097784150');
insert into person (first_name, last_name, phone_number) values ('Leontyne', 'Havesides', '8284048950');
insert into person (first_name, last_name, phone_number) values ('Sheridan', 'Bynold', '1338299080');
insert into person (first_name, last_name, phone_number) values ('Chelsea', 'Jerred', '9815893472');
insert into person (first_name, last_name, phone_number) values ('Lucretia', 'Vernazza', '5507316700');
insert into person (first_name, last_name, phone_number) values ('Brandice', 'Scarse', '7197101652');
insert into person (first_name, last_name, phone_number) values ('Pascale', 'Arnoult', '8207998812');
insert into person (first_name, last_name, phone_number) values ('Wendie', 'Hardingham', '8925760673');
insert into person (first_name, last_name, phone_number) values ('Elena', 'Jossel', '2985134564');
insert into person (first_name, last_name, phone_number) values ('Catherine', 'Baurerich', '3864665046');
insert into person (first_name, last_name, phone_number) values ('Mordecai', 'Ivasechko', '9685567008');
insert into person (first_name, last_name, phone_number) values ('Vilhelmina', 'Gellion', '5384241859');
insert into person (first_name, last_name, phone_number) values ('Terrie', 'Arnaudin', '6847023705');
insert into person (first_name, last_name, phone_number) values ('Tessa', 'MacColm', '3014071801');
insert into person (first_name, last_name, phone_number) values ('Spencer', 'Pandey', '9473119217');
insert into person (first_name, last_name, phone_number) values ('Drucill', 'Tebb', '1694474877');
insert into person (first_name, last_name, phone_number) values ('Frannie', 'O''Sherin', '3606841849');
insert into person (first_name, last_name, phone_number) values ('Urson', 'Livsey', '9397891663');
insert into person (first_name, last_name, phone_number) values ('Debra', 'Brignall', '4428136985');
insert into person (first_name, last_name, phone_number) values ('Gail', 'Shorrock', '3634498756');
insert into person (first_name, last_name, phone_number) values ('Derwin', 'Goudard', '5445174515');
insert into person (first_name, last_name, phone_number) values ('Curry', 'Sobieski', '5941158326');
insert into person (first_name, last_name, phone_number) values ('Neala', 'Caverhill', '1113765780');
insert into person (first_name, last_name, phone_number) values ('Indira', 'Siberry', '4222625529');
insert into person (first_name, last_name, phone_number) values ('Vernor', 'Barrett', '9167743868');
insert into person (first_name, last_name, phone_number) values ('Torrance', 'Coales', '3905335323');
insert into person (first_name, last_name, phone_number) values ('Rosco', 'Vials', '9032614521');
insert into person (first_name, last_name, phone_number) values ('Anette', 'Salvadori', '5917678674');
insert into person (first_name, last_name, phone_number) values ('Estell', 'de Mullett', '8593646694');
insert into person (first_name, last_name, phone_number) values ('Micah', 'Gutowska', '6692416253');
insert into person (first_name, last_name, phone_number) values ('Kati', 'Skule', '2035778368');
insert into person (first_name, last_name, phone_number) values ('Barri', 'Zollner', '9241294563');
insert into person (first_name, last_name, phone_number) values ('Catherine', 'Calrow', '5288572253');
insert into person (first_name, last_name, phone_number) values ('Thacher', 'Cordall', '6206758017');
insert into person (first_name, last_name, phone_number) values ('Ximenez', 'Pudney', '8669987708');
insert into person (first_name, last_name, phone_number) values ('Christiana', 'Le - Count', '8367835987');
insert into person (first_name, last_name, phone_number) values ('Allyn', 'Wigan', '2365287443');
insert into person (first_name, last_name, phone_number) values ('Chris', 'Simenot', '8095471726');
insert into person (first_name, last_name, phone_number) values ('Lana', 'Bangle', '4072095065');
insert into person (first_name, last_name, phone_number) values ('Enrika', 'Jakubowsky', '3749810638');
insert into person (first_name, last_name, phone_number) values ('Denyse', 'Crowhurst', '2294169105');
insert into person (first_name, last_name, phone_number) values ('Roana', 'Gutcher', '9352741072');
insert into person (first_name, last_name, phone_number) values ('Olwen', 'Hainey`', '5115318445');
insert into person (first_name, last_name, phone_number) values ('Bab', 'Rosenfarb', '2575344587');
insert into person (first_name, last_name, phone_number) values ('Lloyd', 'Jakolevitch', '5777530573');
insert into person (first_name, last_name, phone_number) values ('Jedidiah', 'Peter', '1906910158');
insert into person (first_name, last_name, phone_number) values ('Sharyl', 'Downse', '4238074055');
insert into person (first_name, last_name, phone_number) values ('Gaspar', 'Trillow', '8531326614');
insert into person (first_name, last_name, phone_number) values ('Etheline', 'Donavan', '8018618022');
insert into person (first_name, last_name, phone_number) values ('Hynda', 'Attwell', '1835327820');
insert into person (first_name, last_name, phone_number) values ('Darrelle', 'Trahear', '6905639183');
insert into person (first_name, last_name, phone_number) values ('Ewell', 'Ferras', '4227414262');
insert into person (first_name, last_name, phone_number) values ('Shaylynn', 'Oram', '9679995588');
insert into person (first_name, last_name, phone_number) values ('Yevette', 'Cast', '4761269875');
insert into person (first_name, last_name, phone_number) values ('Ariel', 'Mallatratt', '6676842098');
insert into person (first_name, last_name, phone_number) values ('Demetrius', 'Eginton', '7302464630');
insert into person (first_name, last_name, phone_number) values ('Eolande', 'Debnam', '8421535226');
insert into person (first_name, last_name, phone_number) values ('Rutger', 'Sprason', '7544562261');
insert into person (first_name, last_name, phone_number) values ('Haleigh', 'Coventon', '7799223132');
insert into person (first_name, last_name, phone_number) values ('Caesar', 'Sapsford', '7383224724');
insert into person (first_name, last_name, phone_number) values ('Nil', 'Grebert', '6034191684');
insert into person (first_name, last_name, phone_number) values ('Hew', 'Creyke', '9373598978');
insert into person (first_name, last_name, phone_number) values ('Ermina', 'Glazier', '4396819132');
insert into person (first_name, last_name, phone_number) values ('Ilario', 'Elvey', '4192042230');
insert into person (first_name, last_name, phone_number) values ('Freeman', 'Budik', '8835672517');
insert into person (first_name, last_name, phone_number) values ('Cammy', 'Bemrose', '5139810159');
insert into person (first_name, last_name, phone_number) values ('Jeromy', 'Bingham', '9452171828');
insert into person (first_name, last_name, phone_number) values ('Immanuel', 'Hawthorn', '5295990026');
insert into person (first_name, last_name, phone_number) values ('Anica', 'Semper', '1737238255');
insert into person (first_name, last_name, phone_number) values ('Alberik', 'Willoughley', '3661142832');
insert into person (first_name, last_name, phone_number) values ('Dyan', 'Iacobini', '5736898081');
insert into person (first_name, last_name, phone_number) values ('Sal', 'Ballintime', '1457182463');
insert into person (first_name, last_name, phone_number) values ('Bertie', 'Boldra', '2944810652');
insert into person (first_name, last_name, phone_number) values ('Brook', 'Shewon', '8454039501');
insert into person (first_name, last_name, phone_number) values ('Thibaud', 'Berry', '1515942223');
insert into person (first_name, last_name, phone_number) values ('Barbie', 'Schriren', '7308670848');
insert into person (first_name, last_name, phone_number) values ('Kerstin', 'Addess', '4927317887');
insert into person (first_name, last_name, phone_number) values ('Rab', 'Cutforth', '4228215496');
insert into person (first_name, last_name, phone_number) values ('Misti', 'Emmerson', '3013959883');
insert into person (first_name, last_name, phone_number) values ('Tim', 'MacFaul', '5708313325');
insert into person (first_name, last_name, phone_number) values ('Guinevere', 'Goodlet', '9685873858');
insert into person (first_name, last_name, phone_number) values ('Gaylor', 'Gorcke', '3791169657');
insert into person (first_name, last_name, phone_number) values ('Charity', 'Spare', '4083789730');
insert into person (first_name, last_name, phone_number) values ('Elton', 'Forsyth', '2765531300');
insert into person (first_name, last_name, phone_number) values ('Freida', 'Enterlein', '8775098136');
insert into person (first_name, last_name, phone_number) values ('Doug', 'Harses', '7877324590');
insert into person (first_name, last_name, phone_number) values ('Cloe', 'Chatfield', '6801423984');
insert into person (first_name, last_name, phone_number) values ('Minda', 'Filppetti', '1796516732');
insert into person (first_name, last_name, phone_number) values ('Sofia', 'Eustace', '6713866923');
insert into person (first_name, last_name, phone_number) values ('Fabian', 'Gurnee', '5133089191');
insert into person (first_name, last_name, phone_number) values ('Ros', 'Cordner', '5677465184');
insert into person (first_name, last_name, phone_number) values ('Rolf', 'Sandbatch', '3229841854');
insert into person (first_name, last_name, phone_number) values ('Krisha', 'Bleackly', '3612579961');
insert into person (first_name, last_name, phone_number) values ('Rustin', 'Eustice', '3603624829');
insert into person (first_name, last_name, phone_number) values ('Linc', 'Knowler', '8217906055');
insert into person (first_name, last_name, phone_number) values ('Phillipp', 'Acres', '2363570917');
insert into person (first_name, last_name, phone_number) values ('Saunder', 'Jina', '9079486153');
insert into person (first_name, last_name, phone_number) values ('Eliot', 'Ruperto', '3498805514');
insert into person (first_name, last_name, phone_number) values ('Erna', 'Rudgerd', '8061884588');
insert into person (first_name, last_name, phone_number) values ('Haily', 'Bounde', '7746180475');
insert into person (first_name, last_name, phone_number) values ('Orella', 'Lathwell', '6927868874');
insert into person (first_name, last_name, phone_number) values ('Georgeta', 'Bruckner', '2258644775');
insert into person (first_name, last_name, phone_number) values ('Kelsey', 'Wartnaby', '3953417620');
insert into person (first_name, last_name, phone_number) values ('Wade', 'Hurkett', '8042506171');
insert into person (first_name, last_name, phone_number) values ('Tucky', 'Durbyn', '8044454205');
insert into person (first_name, last_name, phone_number) values ('Mendie', 'De Carteret', '9431550680');
insert into person (first_name, last_name, phone_number) values ('Philipa', 'Dunkerly', '9239811756');
insert into person (first_name, last_name, phone_number) values ('Corinne', 'Gouldstraw', '5129240689');
insert into person (first_name, last_name, phone_number) values ('Nat', 'Waugh', '3682174592');
insert into person (first_name, last_name, phone_number) values ('Stearne', 'Guy', '4431602857');
insert into person (first_name, last_name, phone_number) values ('Kass', 'Chomicki', '7344379997');
insert into person (first_name, last_name, phone_number) values ('Elspeth', 'Adamiec', '6448322768');
insert into person (first_name, last_name, phone_number) values ('Amy', 'Fenner', '9154927531');
insert into person (first_name, last_name, phone_number) values ('Keelby', 'McIlhatton', '2266824936');
insert into person (first_name, last_name, phone_number) values ('Griselda', 'MacCroary', '6351062250');
insert into person (first_name, last_name, phone_number) values ('Faber', 'Terbrug', '2147675600');
insert into person (first_name, last_name, phone_number) values ('Marya', 'Bascomb', '7218052173');
insert into person (first_name, last_name, phone_number) values ('Vida', 'Bamfield', '3372374286');
insert into person (first_name, last_name, phone_number) values ('Caryl', 'Eayrs', '6673527056');
insert into person (first_name, last_name, phone_number) values ('Leese', 'Esson', '9481636494');
insert into person (first_name, last_name, phone_number) values ('Hadley', 'Gaukroger', '6514154837');
insert into person (first_name, last_name, phone_number) values ('Tamas', 'Redbourn', '2678971081');
insert into person (first_name, last_name, phone_number) values ('Cristionna', 'Dun', '2052541376');
insert into person (first_name, last_name, phone_number) values ('Emelyne', 'Bitterton', '5301174454');
insert into person (first_name, last_name, phone_number) values ('Colby', 'Wykes', '1491602561');
insert into person (first_name, last_name, phone_number) values ('Elvina', 'McKendo', '3278309925');
insert into person (first_name, last_name, phone_number) values ('Spike', 'Undrell', '4957976515');
insert into person (first_name, last_name, phone_number) values ('Evelin', 'Gallego', '1065926011');
insert into person (first_name, last_name, phone_number) values ('Bernadette', 'Vedenyapin', '6403751441');
insert into person (first_name, last_name, phone_number) values ('Dianne', 'Francais', '7469217987');
insert into person (first_name, last_name, phone_number) values ('Laura', 'Wenderott', '7701364910');
insert into person (first_name, last_name, phone_number) values ('Salome', 'Caulder', '5937724537');
insert into person (first_name, last_name, phone_number) values ('Chloette', 'Umfrey', '4897044005');
insert into person (first_name, last_name, phone_number) values ('Maryanna', 'Farington', '5267069254');
insert into person (first_name, last_name, phone_number) values ('Sheila', 'Tuftin', '1758279633');
insert into person (first_name, last_name, phone_number) values ('Isidora', 'Andrivot', '6535566934');
insert into person (first_name, last_name, phone_number) values ('Cacilia', 'Glowacz', '6758225730');
insert into person (first_name, last_name, phone_number) values ('Shanta', 'Fine', '9676179709');
insert into person (first_name, last_name, phone_number) values ('Melina', 'Meadowcroft', '4262716460');
insert into person (first_name, last_name, phone_number) values ('Stefa', 'Darwood', '3626573654');
insert into person (first_name, last_name, phone_number) values ('Maure', 'Congdon', '3916841008');
insert into person (first_name, last_name, phone_number) values ('Kata', 'Gawne', '8609119651');
insert into person (first_name, last_name, phone_number) values ('Bail', 'Peacocke', '9957607570');
insert into person (first_name, last_name, phone_number) values ('Tamara', 'Ganley', '6551904538');
insert into person (first_name, last_name, phone_number) values ('Shawn', 'Finlay', '6441943339');
insert into person (first_name, last_name, phone_number) values ('Bink', 'Guice', '3046742695');
insert into person (first_name, last_name, phone_number) values ('Ricardo', 'Terry', '3239823312');
insert into person (first_name, last_name, phone_number) values ('Romonda', 'Zeal', '8921036473');
insert into person (first_name, last_name, phone_number) values ('Shalne', 'Hoodless', '8274741065');
insert into person (first_name, last_name, phone_number) values ('Gwendolyn', 'Corrin', '3063819170');
insert into person (first_name, last_name, phone_number) values ('Waldo', 'Kubicki', '6087146720');
insert into person (first_name, last_name, phone_number) values ('Yorgo', 'Isselee', '2865870129');
insert into person (first_name, last_name, phone_number) values ('Robinette', 'Lambal', '6781937264');
insert into person (first_name, last_name, phone_number) values ('Bertie', 'Tramel', '2982569714');
insert into person (first_name, last_name, phone_number) values ('Delilah', 'Lane', '6954486356');
insert into person (first_name, last_name, phone_number) values ('Ame', 'Jurca', '9729847169');
insert into person (first_name, last_name, phone_number) values ('Corbett', 'Ranby', '1998769287');
insert into person (first_name, last_name, phone_number) values ('Jacintha', 'Pracy', '8646276289');
insert into person (first_name, last_name, phone_number) values ('Robin', 'Bulfoy', '7084235268');
insert into person (first_name, last_name, phone_number) values ('Nance', 'Agron', '2427706804');
insert into person (first_name, last_name, phone_number) values ('Florida', 'Brandacci', '9394378490');
insert into person (first_name, last_name, phone_number) values ('Benedicto', 'Thompkins', '8368467908');
insert into person (first_name, last_name, phone_number) values ('Ric', 'Ridolfo', '9826601006');
insert into person (first_name, last_name, phone_number) values ('Wynn', 'Saur', '4303941551');
insert into person (first_name, last_name, phone_number) values ('Andros', 'Moncreif', '9558136977');
insert into person (first_name, last_name, phone_number) values ('De witt', 'Parcells', '2616613197');
insert into person (first_name, last_name, phone_number) values ('Andrei', 'Synder', '1932808619');
insert into person (first_name, last_name, phone_number) values ('Tara', 'Koche', '7252247245');
insert into person (first_name, last_name, phone_number) values ('Marisa', 'Hollows', '7534492479');
insert into person (first_name, last_name, phone_number) values ('Vin', 'Oglesbee', '6053971912');
insert into person (first_name, last_name, phone_number) values ('Abie', 'Hankins', '6564832420');
insert into person (first_name, last_name, phone_number) values ('Rois', 'Honeyghan', '2619878745');
insert into person (first_name, last_name, phone_number) values ('Ashleigh', 'Leband', '6054844277');
insert into person (first_name, last_name, phone_number) values ('Robers', 'Pengelly', '4105938721');
insert into person (first_name, last_name, phone_number) values ('Morie', 'Ambrogio', '1614244600');
insert into person (first_name, last_name, phone_number) values ('Otto', 'Waison', '4975908391');
insert into person (first_name, last_name, phone_number) values ('Rickie', 'Franzoli', '7764296016');
insert into person (first_name, last_name, phone_number) values ('Cletus', 'Heeron', '4893411731');
insert into person (first_name, last_name, phone_number) values ('Emmy', 'Meatyard', '6778607927');
insert into person (first_name, last_name, phone_number) values ('Murielle', 'Kunc', '8141504194');
insert into person (first_name, last_name, phone_number) values ('Breena', 'Offen', '5604835947');
insert into person (first_name, last_name, phone_number) values ('Cassie', 'Going', '3518481533');
insert into person (first_name, last_name, phone_number) values ('Gwenore', 'Noar', '4916849284');
insert into person (first_name, last_name, phone_number) values ('Sybyl', 'Heisman', '9806403054');
insert into person (first_name, last_name, phone_number) values ('Tallou', 'Reiling', '3888158353');
insert into person (first_name, last_name, phone_number) values ('Tammy', 'Brettor', '6872723885');
insert into person (first_name, last_name, phone_number) values ('Isa', 'Luxford', '3465626932');
insert into person (first_name, last_name, phone_number) values ('Leta', 'Ansteys', '1576005225');
insert into person (first_name, last_name, phone_number) values ('Cherey', 'Deighton', '7009631285');
insert into person (first_name, last_name, phone_number) values ('Anallese', 'Klemmt', '7275998662');
insert into person (first_name, last_name, phone_number) values ('Shayne', 'Bouzan', '4484016715');
insert into person (first_name, last_name, phone_number) values ('Miner', 'Brain', '5316101918');
insert into person (first_name, last_name, phone_number) values ('Joyann', 'Duberry', '1624574710');
insert into person (first_name, last_name, phone_number) values ('Stan', 'Rouby', '1936515415');
insert into person (first_name, last_name, phone_number) values ('Austina', 'Hannaby', '2545593171');
insert into person (first_name, last_name, phone_number) values ('Conn', 'Radmore', '9776255042');
insert into person (first_name, last_name, phone_number) values ('Thorin', 'Maccrie', '9445253487');
insert into person (first_name, last_name, phone_number) values ('Cullan', 'Knotte', '2316122939');
insert into person (first_name, last_name, phone_number) values ('Leese', 'Colwell', '5653225799');
insert into person (first_name, last_name, phone_number) values ('Prissie', 'Ege', '7029975357');
insert into person (first_name, last_name, phone_number) values ('Sammy', 'Pash', '3393649391');
insert into person (first_name, last_name, phone_number) values ('Kalindi', 'Bewshaw', '1361434851');
insert into person (first_name, last_name, phone_number) values ('Esma', 'Thams', '2275583846');
insert into person (first_name, last_name, phone_number) values ('Berk', 'Bream', '2118730790');
insert into person (first_name, last_name, phone_number) values ('Lillian', 'Iorizzi', '8415152812');
insert into person (first_name, last_name, phone_number) values ('Goraud', 'Henniger', '2986188502');
insert into person (first_name, last_name, phone_number) values ('Baudoin', 'Fippe', '5561700488');
insert into person (first_name, last_name, phone_number) values ('Batsheva', 'Height', '9147841018');
insert into person (first_name, last_name, phone_number) values ('Tiena', 'Titmuss', '1236164007');
insert into person (first_name, last_name, phone_number) values ('Travis', 'Feldhammer', '8997032538');
insert into person (first_name, last_name, phone_number) values ('Mag', 'Fawkes', '9874822588');
insert into person (first_name, last_name, phone_number) values ('Janina', 'Quinlan', '8421015594');
insert into person (first_name, last_name, phone_number) values ('Morgana', 'Simonyi', '2987034814');
insert into person (first_name, last_name, phone_number) values ('Modesty', 'Kolakowski', '7718606806');
insert into person (first_name, last_name, phone_number) values ('Sheila-kathryn', 'Bessett', '4977365997');
insert into person (first_name, last_name, phone_number) values ('Garold', 'Plampin', '7986442565');
insert into person (first_name, last_name, phone_number) values ('Guendolen', 'Cocksedge', '3925000686');
insert into person (first_name, last_name, phone_number) values ('Lorraine', 'Clarke', '1218783557');
insert into person (first_name, last_name, phone_number) values ('Eldin', 'Lawrinson', '5906289767');
insert into person (first_name, last_name, phone_number) values ('Rafaellle', 'Iredell', '3545316379');
insert into person (first_name, last_name, phone_number) values ('Mirabelle', 'Tippett', '9226376111');
insert into person (first_name, last_name, phone_number) values ('Lemar', 'Rounds', '8234456567');
insert into person (first_name, last_name, phone_number) values ('Dani', 'Gearing', '9035157647');
insert into person (first_name, last_name, phone_number) values ('Charita', 'Grimsey', '1528058862');
insert into person (first_name, last_name, phone_number) values ('Hazel', 'Tremathick', '6078147022');
insert into person (first_name, last_name, phone_number) values ('Wilhelmine', 'Pandey', '5745582433');
insert into person (first_name, last_name, phone_number) values ('Reggy', 'Korneichuk', '8558794743');
insert into person (first_name, last_name, phone_number) values ('Orland', 'Cantillion', '9973585721');
insert into person (first_name, last_name, phone_number) values ('Grantley', 'Harner', '6477600883');
insert into person (first_name, last_name, phone_number) values ('Kinsley', 'Spohrmann', '1601224653');
insert into person (first_name, last_name, phone_number) values ('Tobiah', 'Cartman', '9185049623');
insert into person (first_name, last_name, phone_number) values ('Chiarra', 'Fawloe', '1986943881');
insert into person (first_name, last_name, phone_number) values ('Marcello', 'Kunath', '6787763342');
insert into person (first_name, last_name, phone_number) values ('Jefferey', 'Oehm', '2721173456');
insert into person (first_name, last_name, phone_number) values ('Alec', 'Goolden', '9322636751');
insert into person (first_name, last_name, phone_number) values ('Isahella', 'Romeo', '8234278356');
insert into person (first_name, last_name, phone_number) values ('Allin', 'Shelmerdine', '6245228197');
insert into person (first_name, last_name, phone_number) values ('Brittne', 'Klageman', '4462063695');
insert into person (first_name, last_name, phone_number) values ('Lana', 'Cawthera', '7518746390');
insert into person (first_name, last_name, phone_number) values ('Anastasia', 'Rasper', '3144997818');
insert into person (first_name, last_name, phone_number) values ('Randy', 'Hellings', '5047920705');
insert into person (first_name, last_name, phone_number) values ('Tracey', 'Bricksey', '5452688154');
insert into person (first_name, last_name, phone_number) values ('Artur', 'Keelan', '9296774642');
insert into person (first_name, last_name, phone_number) values ('Colas', 'Amiranda', '1348191436');
insert into person (first_name, last_name, phone_number) values ('Francoise', 'Pirozzi', '9932221953');
insert into person (first_name, last_name, phone_number) values ('Haleigh', 'Borham', '7074414402');
insert into person (first_name, last_name, phone_number) values ('Electra', 'Carbry', '8717000713');
insert into person (first_name, last_name, phone_number) values ('Sonnie', 'Linnell', '1967311714');
insert into person (first_name, last_name, phone_number) values ('Christoforo', 'Rodenburg', '5723127061');
insert into person (first_name, last_name, phone_number) values ('Maren', 'Pound', '8354026186');
insert into person (first_name, last_name, phone_number) values ('Katuscha', 'Dooney', '3721873232');
insert into person (first_name, last_name, phone_number) values ('Sybyl', 'Dutson', '5644794251');
insert into person (first_name, last_name, phone_number) values ('Colene', 'Belleny', '2239926866');
insert into person (first_name, last_name, phone_number) values ('Bettina', 'Cran', '8814027848');
insert into person (first_name, last_name, phone_number) values ('Abba', 'Di Antonio', '1043102328');
insert into person (first_name, last_name, phone_number) values ('Patricia', 'O''Crigane', '7498424936');
insert into person (first_name, last_name, phone_number) values ('Angelo', 'McGoogan', '3443613196');
insert into person (first_name, last_name, phone_number) values ('Jenilee', 'Tynewell', '3296040323');
insert into person (first_name, last_name, phone_number) values ('Mickie', 'Videler', '1965412275');
insert into person (first_name, last_name, phone_number) values ('Thurstan', 'Rabier', '2421817743');
insert into person (first_name, last_name, phone_number) values ('Ora', 'Jeakins', '9705868363');
insert into person (first_name, last_name, phone_number) values ('Dulcy', 'Fidilis', '4219125012');
insert into person (first_name, last_name, phone_number) values ('Celeste', 'Muffitt', '2263180381');
insert into person (first_name, last_name, phone_number) values ('Crawford', 'Winfrey', '1936498703');
insert into person (first_name, last_name, phone_number) values ('Dew', 'L''Episcopi', '8024173443');
insert into person (first_name, last_name, phone_number) values ('Cristine', 'Holdey', '4353084635');
insert into person (first_name, last_name, phone_number) values ('Modesty', 'Brand', '1019393707');
insert into person (first_name, last_name, phone_number) values ('Jeromy', 'Stannas', '1001819770');
insert into person (first_name, last_name, phone_number) values ('Fredericka', 'Whellans', '2704526182');
insert into person (first_name, last_name, phone_number) values ('Ammamaria', 'Frood', '6612365929');
insert into person (first_name, last_name, phone_number) values ('Jaymie', 'Rosenshine', '3908892025');
insert into person (first_name, last_name, phone_number) values ('Fawne', 'Janicijevic', '8261451297');
insert into person (first_name, last_name, phone_number) values ('Doroteya', 'Pimmocke', '4456425475');
insert into person (first_name, last_name, phone_number) values ('Dav', 'Bottrell', '5635786452');
insert into person (first_name, last_name, phone_number) values ('Dehlia', 'Paulisch', '7652457352');
insert into person (first_name, last_name, phone_number) values ('Joby', 'M''Quharg', '7028904123');
insert into person (first_name, last_name, phone_number) values ('Abby', 'Tanton', '1792672295');
insert into person (first_name, last_name, phone_number) values ('Beulah', 'Loding', '3887919752');
insert into person (first_name, last_name, phone_number) values ('Leah', 'O'' Quirk', '6094239960');
insert into person (first_name, last_name, phone_number) values ('Loutitia', 'L''Hommeau', '3877099794');
insert into person (first_name, last_name, phone_number) values ('Hillel', 'Knibley', '6172598273');
insert into person (first_name, last_name, phone_number) values ('Reinald', 'McShea', '2201140506');
insert into person (first_name, last_name, phone_number) values ('Edgard', 'Hunnicot', '9905098759');
insert into person (first_name, last_name, phone_number) values ('Esme', 'Bedrosian', '7999793432');
insert into person (first_name, last_name, phone_number) values ('Sheila-kathryn', 'Sheavills', '2285823551');
insert into person (first_name, last_name, phone_number) values ('Maye', 'Domerque', '3676109365');
insert into person (first_name, last_name, phone_number) values ('Homer', 'McCrohon', '8172366205');
insert into person (first_name, last_name, phone_number) values ('Bird', 'Sein', '1791802753');
insert into person (first_name, last_name, phone_number) values ('Junie', 'Geroldo', '4627987849');
insert into person (first_name, last_name, phone_number) values ('Gottfried', 'Evans', '9373611158');
insert into person (first_name, last_name, phone_number) values ('Matthiew', 'Morena', '4838420883');
insert into person (first_name, last_name, phone_number) values ('Joanne', 'Coopey', '9395045650');
insert into person (first_name, last_name, phone_number) values ('Kassia', 'Steet', '4718531545');
insert into person (first_name, last_name, phone_number) values ('Mechelle', 'Frisdick', '5918655088');
insert into person (first_name, last_name, phone_number) values ('Osmund', 'Medcalfe', '6811726525');
insert into person (first_name, last_name, phone_number) values ('Rube', 'Enston', '7153278897');
insert into person (first_name, last_name, phone_number) values ('Ulysses', 'Behn', '5392465413');
insert into person (first_name, last_name, phone_number) values ('Eloise', 'Blunsen', '3714590457');
insert into person (first_name, last_name, phone_number) values ('Skipton', 'McDarmid', '1202621293');
insert into person (first_name, last_name, phone_number) values ('Mohandas', 'Braden', '3469261433');
insert into person (first_name, last_name, phone_number) values ('Elbertina', 'Hannond', '6714473064');
insert into person (first_name, last_name, phone_number) values ('Beverie', 'Shippey', '1966102015');
insert into person (first_name, last_name, phone_number) values ('Philippine', 'Boman', '9616117340');
insert into person (first_name, last_name, phone_number) values ('Willi', 'Drinkale', '7551406569');
insert into person (first_name, last_name, phone_number) values ('Chelsy', 'Krammer', '6709221268');
insert into person (first_name, last_name, phone_number) values ('Damian', 'Erricker', '9485116707');
insert into person (first_name, last_name, phone_number) values ('Alison', 'Whitter', '7894371998');
insert into person (first_name, last_name, phone_number) values ('Fairleigh', 'Peltzer', '2302962638');
insert into person (first_name, last_name, phone_number) values ('Phelia', 'Van der Veldt', '9643587072');
insert into person (first_name, last_name, phone_number) values ('Reube', 'Bencher', '2482518357');
insert into person (first_name, last_name, phone_number) values ('Riane', 'Howlin', '5574316092');
insert into person (first_name, last_name, phone_number) values ('Dalli', 'Clampe', '4578117608');
insert into person (first_name, last_name, phone_number) values ('Sigismondo', 'Iwanczyk', '3584944353');
insert into person (first_name, last_name, phone_number) values ('Fleurette', 'Chern', '6669805368');
insert into person (first_name, last_name, phone_number) values ('Lammond', 'Rissen', '3434007471');
insert into person (first_name, last_name, phone_number) values ('Wake', 'Fowgies', '9493777673');
insert into person (first_name, last_name, phone_number) values ('Franklin', 'Javes', '6203728897');
insert into person (first_name, last_name, phone_number) values ('Jilly', 'Midgley', '9479639631');
insert into person (first_name, last_name, phone_number) values ('Gonzales', 'Foddy', '7027447131');
insert into person (first_name, last_name, phone_number) values ('Tuesday', 'Habgood', '7726813802');
insert into person (first_name, last_name, phone_number) values ('Dee dee', 'Pack', '4856269571');
insert into person (first_name, last_name, phone_number) values ('Terrill', 'Greaves', '7851287373');
insert into person (first_name, last_name, phone_number) values ('Ketty', 'Kalkofer', '2571807329');
insert into person (first_name, last_name, phone_number) values ('Bertine', 'Barratt', '5943306153');
insert into person (first_name, last_name, phone_number) values ('Maynard', 'Nickels', '5849082957');
insert into person (first_name, last_name, phone_number) values ('Tuckie', 'Meekings', '6488628552');
insert into person (first_name, last_name, phone_number) values ('Avrom', 'Flippini', '8466086856');
insert into person (first_name, last_name, phone_number) values ('Salli', 'Briiginshaw', '2706387490');
insert into person (first_name, last_name, phone_number) values ('Jill', 'Iverson', '2212603201');
insert into person (first_name, last_name, phone_number) values ('Currie', 'Gamlin', '4533765509');
insert into person (first_name, last_name, phone_number) values ('Eulalie', 'Sauvage', '7874660039');
insert into person (first_name, last_name, phone_number) values ('Theo', 'Ghiriardelli', '1592452104');
insert into person (first_name, last_name, phone_number) values ('Bradan', 'Jensen', '1073608406');
insert into person (first_name, last_name, phone_number) values ('Ettore', 'Simcoe', '2045694182');
insert into person (first_name, last_name, phone_number) values ('Sybila', 'McCreery', '4519737429');
insert into person (first_name, last_name, phone_number) values ('Hanan', 'Cave', '3521952894');
insert into person (first_name, last_name, phone_number) values ('Val', 'Wick', '1778057876');
insert into person (first_name, last_name, phone_number) values ('Malissa', 'Janjusevic', '2711949627');
insert into person (first_name, last_name, phone_number) values ('Emylee', 'Finlayson', '1678631194');
insert into person (first_name, last_name, phone_number) values ('Essie', 'Pittford', '4155116939');
insert into person (first_name, last_name, phone_number) values ('Cinderella', 'Francke', '4116422587');
insert into person (first_name, last_name, phone_number) values ('Jolie', 'Durham', '6885400583');
insert into person (first_name, last_name, phone_number) values ('Valencia', 'Vasyukhichev', '2639528152');
insert into person (first_name, last_name, phone_number) values ('Renell', 'Felderer', '1318842226');
insert into person (first_name, last_name, phone_number) values ('Alberta', 'Row', '6181271320');
insert into person (first_name, last_name, phone_number) values ('Gennifer', 'Bartczak', '2751375012');
insert into person (first_name, last_name, phone_number) values ('Bobinette', 'Moreno', '4542459639');
insert into person (first_name, last_name, phone_number) values ('Ruprecht', 'Tal', '1396772298');
insert into person (first_name, last_name, phone_number) values ('Ossie', 'Jeckells', '8914310953');
insert into person (first_name, last_name, phone_number) values ('Shelba', 'Hachard', '8098426518');
insert into person (first_name, last_name, phone_number) values ('Easter', 'Tousy', '1489194373');
insert into person (first_name, last_name, phone_number) values ('Chas', 'Heaker', '1681618630');
insert into person (first_name, last_name, phone_number) values ('Gusty', 'Aleksic', '5227975234');
insert into person (first_name, last_name, phone_number) values ('Phillip', 'Whorton', '6487352121');
insert into person (first_name, last_name, phone_number) values ('Hinze', 'Dunckley', '2929287533');
insert into person (first_name, last_name, phone_number) values ('Janela', 'Brody', '3215107726');
insert into person (first_name, last_name, phone_number) values ('Bernadine', 'Hourihan', '7836655714');
insert into person (first_name, last_name, phone_number) values ('Kass', 'Vernazza', '2769908426');
insert into person (first_name, last_name, phone_number) values ('Hamish', 'Huikerby', '4762176013');
insert into person (first_name, last_name, phone_number) values ('Willa', 'Spinola', '2575503854');
insert into person (first_name, last_name, phone_number) values ('Jemima', 'Bonellie', '2028227395');
insert into person (first_name, last_name, phone_number) values ('Shelagh', 'Bezemer', '8063737901');
insert into person (first_name, last_name, phone_number) values ('Gare', 'Hansemann', '7425892204');
insert into person (first_name, last_name, phone_number) values ('Elliott', 'Franies', '5946485004');
insert into person (first_name, last_name, phone_number) values ('Abbye', 'Brewerton', '8664193330');
insert into person (first_name, last_name, phone_number) values ('Vite', 'Gauntlett', '3844825670');
insert into person (first_name, last_name, phone_number) values ('Mommy', 'McCullum', '2607159417');
insert into person (first_name, last_name, phone_number) values ('Malachi', 'Boyson', '1083747679');
insert into person (first_name, last_name, phone_number) values ('Alejandrina', 'Hubbucke', '8621208783');
insert into person (first_name, last_name, phone_number) values ('Gran', 'Merriott', '2596467638');
insert into person (first_name, last_name, phone_number) values ('Simmonds', 'Darinton', '9224012615');
insert into person (first_name, last_name, phone_number) values ('Ruth', 'Allday', '6706416399');
insert into person (first_name, last_name, phone_number) values ('Mada', 'Frenchum', '3638126741');
insert into person (first_name, last_name, phone_number) values ('Meryl', 'Vears', '4391200289');
insert into person (first_name, last_name, phone_number) values ('Amye', 'Peschka', '6817976669');
insert into person (first_name, last_name, phone_number) values ('Blair', 'Brand', '4201599404');
insert into person (first_name, last_name, phone_number) values ('Colette', 'Decreuze', '3013193072');
insert into person (first_name, last_name, phone_number) values ('Lucy', 'Papen', '4179660082');
insert into person (first_name, last_name, phone_number) values ('Barry', 'Huetson', '1407644529');
insert into person (first_name, last_name, phone_number) values ('Marcelle', 'Martinec', '9408962053');
insert into person (first_name, last_name, phone_number) values ('Faye', 'Ansty', '7708727118');
insert into person (first_name, last_name, phone_number) values ('Rodge', 'Haliburton', '7982433072');
insert into person (first_name, last_name, phone_number) values ('Tome', 'Eglinton', '4322061568');
insert into person (first_name, last_name, phone_number) values ('Kelly', 'Brendeke', '1103193872');
insert into person (first_name, last_name, phone_number) values ('Abel', 'Megarry', '4593569323');
insert into person (first_name, last_name, phone_number) values ('Obed', 'Callender', '8797318336');
insert into person (first_name, last_name, phone_number) values ('Seana', 'Keiling', '5212496236');
insert into person (first_name, last_name, phone_number) values ('Parke', 'Devo', '4286530278');
insert into person (first_name, last_name, phone_number) values ('Sallee', 'Josskovitz', '8587399618');
insert into person (first_name, last_name, phone_number) values ('Vern', 'Stelli', '7813371373');
insert into person (first_name, last_name, phone_number) values ('Bradly', 'Phizackarley', '2249141472');
insert into person (first_name, last_name, phone_number) values ('Georgianna', 'Mar', '7548870643');
insert into person (first_name, last_name, phone_number) values ('Ellyn', 'Barkus', '7255697008');
insert into person (first_name, last_name, phone_number) values ('Evania', 'Minigo', '9651598604');
insert into person (first_name, last_name, phone_number) values ('Renell', 'Naish', '7979135813');
insert into person (first_name, last_name, phone_number) values ('Bryana', 'Orpyne', '1979123123');
insert into person (first_name, last_name, phone_number) values ('Norbie', 'Swenson', '3342003256');
insert into person (first_name, last_name, phone_number) values ('Gertrude', 'Bartalucci', '1036279075');
insert into person (first_name, last_name, phone_number) values ('Rosaleen', 'Sackur', '5134549830');
insert into person (first_name, last_name, phone_number) values ('Evey', 'Ilyukhov', '8218006444');
insert into person (first_name, last_name, phone_number) values ('Judah', 'MacLennan', '4512500462');
insert into person (first_name, last_name, phone_number) values ('Milli', 'Bleasdale', '6277486360');
insert into person (first_name, last_name, phone_number) values ('Flint', 'Blonden', '2176430164');
insert into person (first_name, last_name, phone_number) values ('Lilyan', 'Harling', '9481216471');
insert into person (first_name, last_name, phone_number) values ('Hephzibah', 'Bulger', '6254097467');
insert into person (first_name, last_name, phone_number) values ('Kitty', 'Siene', '6143112099');
insert into person (first_name, last_name, phone_number) values ('Alphard', 'Affleck', '6944600226');
insert into person (first_name, last_name, phone_number) values ('Daryl', 'Wainwright', '9507871005');
insert into person (first_name, last_name, phone_number) values ('Kim', 'Uzelli', '5413627358');
insert into person (first_name, last_name, phone_number) values ('Franky', 'Aslin', '3743763832');
insert into person (first_name, last_name, phone_number) values ('Vivianne', 'Boeck', '1445946543');
insert into person (first_name, last_name, phone_number) values ('Alysa', 'Whoolehan', '2263615016');
insert into person (first_name, last_name, phone_number) values ('Denni', 'Blunderfield', '9465810241');
insert into person (first_name, last_name, phone_number) values ('Tamqrah', 'Ortsmann', '7646094518');
insert into person (first_name, last_name, phone_number) values ('Leola', 'Lamke', '4356848336');
insert into person (first_name, last_name, phone_number) values ('Philis', 'Alkins', '4684485951');
insert into person (first_name, last_name, phone_number) values ('Pier', 'Yukhnin', '4742083796');
insert into person (first_name, last_name, phone_number) values ('Tanney', 'Tooker', '9735859756');
insert into person (first_name, last_name, phone_number) values ('Jacquetta', 'Bence', '4763659650');
insert into person (first_name, last_name, phone_number) values ('Jacquenette', 'Clacson', '6624124716');
insert into person (first_name, last_name, phone_number) values ('Anthiathia', 'Irvin', '5689087938');
insert into person (first_name, last_name, phone_number) values ('Orelie', 'Eddow', '7106698355');
insert into person (first_name, last_name, phone_number) values ('Andrei', 'Fitkin', '1803174796');
insert into person (first_name, last_name, phone_number) values ('Hedwig', 'Rudd', '1362770102');
insert into person (first_name, last_name, phone_number) values ('Halsey', 'Easterfield', '2641821532');
insert into person (first_name, last_name, phone_number) values ('Maiga', 'Spellard', '5577351361');
insert into person (first_name, last_name, phone_number) values ('Joy', 'Rapa', '8312866036');
insert into person (first_name, last_name, phone_number) values ('Daryl', 'Farncomb', '9161973531');
insert into person (first_name, last_name, phone_number) values ('Sean', 'Lattimer', '8098696293');
insert into person (first_name, last_name, phone_number) values ('Alexa', 'Tingcomb', '8196294938');
insert into person (first_name, last_name, phone_number) values ('Ardyth', 'Metrick', '9647451581');
insert into person (first_name, last_name, phone_number) values ('Jolyn', 'Pettengell', '9111419168');
insert into person (first_name, last_name, phone_number) values ('Clifford', 'Shiliton', '9746655888');
insert into person (first_name, last_name, phone_number) values ('Roderic', 'Rothermel', '9381509576');
insert into person (first_name, last_name, phone_number) values ('Lesley', 'Hexter', '6118029962');
insert into person (first_name, last_name, phone_number) values ('Marline', 'Stede', '3185324050');
insert into person (first_name, last_name, phone_number) values ('Rowan', 'Ingyon', '9851837270');
insert into person (first_name, last_name, phone_number) values ('Candie', 'Aimer', '6761194256');
insert into person (first_name, last_name, phone_number) values ('Toni', 'Thome', '4294680083');
insert into person (first_name, last_name, phone_number) values ('Conrade', 'MacAlees', '2146403618');
insert into person (first_name, last_name, phone_number) values ('Sue', 'Simonyi', '4329331435');
insert into person (first_name, last_name, phone_number) values ('Tiphany', 'Muckeen', '1394011088');
insert into person (first_name, last_name, phone_number) values ('Barbabas', 'Waldrum', '2462857122');
insert into person (first_name, last_name, phone_number) values ('Carry', 'Urien', '5143041871');
insert into person (first_name, last_name, phone_number) values ('Karlotta', 'McKmurrie', '6032597467');
insert into person (first_name, last_name, phone_number) values ('Jana', 'Llewellyn', '3907462909');
insert into person (first_name, last_name, phone_number) values ('Ronica', 'Bradick', '6243641170');
insert into person (first_name, last_name, phone_number) values ('Ethan', 'Ryding', '8394705913');
insert into person (first_name, last_name, phone_number) values ('Catie', 'Evert', '5004548253');
insert into person (first_name, last_name, phone_number) values ('Jeanette', 'Gaitung', '1274656686');
insert into person (first_name, last_name, phone_number) values ('Pancho', 'Rickarsey', '2338823511');
insert into person (first_name, last_name, phone_number) values ('Virgilio', 'McNelly', '5156397892');
insert into person (first_name, last_name, phone_number) values ('Shepard', 'Perry', '9494459022');
insert into person (first_name, last_name, phone_number) values ('Alicia', 'Milburne', '1333816170');
insert into person (first_name, last_name, phone_number) values ('Shandeigh', 'Curm', '8048136044');
insert into person (first_name, last_name, phone_number) values ('Kendricks', 'Zuker', '2229782614');
insert into person (first_name, last_name, phone_number) values ('Roanna', 'Bennitt', '3311690013');
insert into person (first_name, last_name, phone_number) values ('Ruthe', 'Grason', '6099940957');
insert into person (first_name, last_name, phone_number) values ('Ulises', 'Edinburgh', '5999935939');
insert into person (first_name, last_name, phone_number) values ('Ferris', 'Ruste', '1032834327');
insert into person (first_name, last_name, phone_number) values ('Eilis', 'Stuckey', '6844676732');
insert into person (first_name, last_name, phone_number) values ('Alverta', 'Perrie', '8685965816');
insert into person (first_name, last_name, phone_number) values ('Valaria', 'Danielski', '7741740755');
insert into person (first_name, last_name, phone_number) values ('Ruby', 'Hacaud', '6592855289');
insert into person (first_name, last_name, phone_number) values ('Renault', 'Zold', '9896563212');
insert into person (first_name, last_name, phone_number) values ('Meaghan', 'Cawdell', '2429446783');
insert into person (first_name, last_name, phone_number) values ('Elyn', 'Jiroutek', '6161693605');
insert into person (first_name, last_name, phone_number) values ('Edythe', 'Everwin', '8318526261');
insert into person (first_name, last_name, phone_number) values ('Donal', 'Linthead', '1786691302');
insert into person (first_name, last_name, phone_number) values ('Maryrose', 'Marwick', '1481121278');
insert into person (first_name, last_name, phone_number) values ('Udale', 'La Padula', '1331218592');
insert into person (first_name, last_name, phone_number) values ('Bonni', 'Ainslee', '2637282850');
insert into person (first_name, last_name, phone_number) values ('Rebbecca', 'Koene', '3108173125');
insert into person (first_name, last_name, phone_number) values ('Irina', 'Angeau', '9035135104');
insert into person (first_name, last_name, phone_number) values ('Letizia', 'Toderi', '1787928202');
insert into person (first_name, last_name, phone_number) values ('Petronia', 'Baudry', '9529394912');
insert into person (first_name, last_name, phone_number) values ('Lucretia', 'Withringten', '7951604158');
insert into person (first_name, last_name, phone_number) values ('Vinita', 'Wreath', '1666786050');
insert into person (first_name, last_name, phone_number) values ('Carmine', 'Czajka', '8556018039');
insert into person (first_name, last_name, phone_number) values ('Astrix', 'Remirez', '6075776155');
insert into person (first_name, last_name, phone_number) values ('Fredericka', 'Lockyear', '5038658888');
insert into person (first_name, last_name, phone_number) values ('Rowan', 'Berry', '6137724561');
insert into person (first_name, last_name, phone_number) values ('Stefanie', 'Topley', '3186500079');
insert into person (first_name, last_name, phone_number) values ('Bartholomeus', 'Nickell', '9592738696');
insert into person (first_name, last_name, phone_number) values ('Trumaine', 'Cochern', '4936907752');
insert into person (first_name, last_name, phone_number) values ('Lela', 'McNeilly', '2646319807');
insert into person (first_name, last_name, phone_number) values ('Aurel', 'Gowing', '2266522238');
insert into person (first_name, last_name, phone_number) values ('Justin', 'Tumilson', '9446206803');
insert into person (first_name, last_name, phone_number) values ('Durante', 'Toth', '3733223511');
insert into person (first_name, last_name, phone_number) values ('Vinnie', 'Van de Castele', '9734110310');
insert into person (first_name, last_name, phone_number) values ('Betteann', 'Hallford', '3828898197');
insert into person (first_name, last_name, phone_number) values ('Roi', 'Muck', '3804477135');
insert into person (first_name, last_name, phone_number) values ('Shelby', 'Romeuf', '7577935755');
insert into person (first_name, last_name, phone_number) values ('Celie', 'Ridhole', '6749629013');
insert into person (first_name, last_name, phone_number) values ('Flory', 'Pflieger', '4755101725');
insert into person (first_name, last_name, phone_number) values ('Teddie', 'Sommerville', '4857488769');
insert into person (first_name, last_name, phone_number) values ('Kata', 'Paynes', '9802388267');
insert into person (first_name, last_name, phone_number) values ('Shae', 'Yerlett', '9693422453');
insert into person (first_name, last_name, phone_number) values ('Rafael', 'Trodden', '5693646858');
insert into person (first_name, last_name, phone_number) values ('Alley', 'Jeanesson', '8438608644');
insert into person (first_name, last_name, phone_number) values ('Twyla', 'Dibner', '9706358337');
insert into person (first_name, last_name, phone_number) values ('Lanny', 'Davies', '3233858027');
insert into person (first_name, last_name, phone_number) values ('Sallie', 'Marven', '5316036499');
insert into person (first_name, last_name, phone_number) values ('Freeman', 'Pitman', '7711583914');
insert into person (first_name, last_name, phone_number) values ('Morgun', 'Favey', '2537893370');
insert into person (first_name, last_name, phone_number) values ('Lizbeth', 'Lytle', '4581842779');
insert into person (first_name, last_name, phone_number) values ('Muffin', 'Dorling', '8898324784');
insert into person (first_name, last_name, phone_number) values ('Andie', 'Ginglell', '6756208990');
insert into person (first_name, last_name, phone_number) values ('Remington', 'Petracchi', '8331222928');
insert into person (first_name, last_name, phone_number) values ('Prentiss', 'Harrowsmith', '2034764033');
insert into person (first_name, last_name, phone_number) values ('Jeremie', 'Colt', '3655822060');
insert into person (first_name, last_name, phone_number) values ('Caressa', 'Queyeiro', '2956507425');
insert into person (first_name, last_name, phone_number) values ('Rowney', 'Folk', '4275567984');
insert into person (first_name, last_name, phone_number) values ('Sayer', 'Bilborough', '4438215236');
insert into person (first_name, last_name, phone_number) values ('Gannon', 'Drewery', '8777328266');
insert into person (first_name, last_name, phone_number) values ('Kameko', 'Danilin', '3284747500');
insert into person (first_name, last_name, phone_number) values ('Gwyneth', 'Mustoo', '3528218172');
insert into person (first_name, last_name, phone_number) values ('Melisent', 'Theakston', '5232659366');
insert into person (first_name, last_name, phone_number) values ('Belita', 'Grunson', '7724874745');
insert into person (first_name, last_name, phone_number) values ('El', 'Prout', '6977058438');
insert into person (first_name, last_name, phone_number) values ('Bourke', 'Deeves', '3074720086');
insert into person (first_name, last_name, phone_number) values ('Chastity', 'Fawdry', '2112469321');
insert into person (first_name, last_name, phone_number) values ('Hettie', 'Werrit', '3436436136');
insert into person (first_name, last_name, phone_number) values ('Jephthah', 'MacCosto', '8546099003');
insert into person (first_name, last_name, phone_number) values ('Lorne', 'Childe', '9742490463');
insert into person (first_name, last_name, phone_number) values ('Lazar', 'Amburgy', '5452579345');
insert into person (first_name, last_name, phone_number) values ('Jeremiah', 'Catenot', '4584056737');
insert into person (first_name, last_name, phone_number) values ('Miquela', 'Bulfoy', '1634123338');
insert into person (first_name, last_name, phone_number) values ('Brandie', 'Duckerin', '8443495317');
insert into person (first_name, last_name, phone_number) values ('Austen', 'Rouff', '8175311825');
insert into person (first_name, last_name, phone_number) values ('Shannen', 'Deniset', '5642137296');
insert into person (first_name, last_name, phone_number) values ('Jacqui', 'Burnhard', '1071205713');
insert into person (first_name, last_name, phone_number) values ('Enrique', 'Ondrus', '7039572744');
insert into person (first_name, last_name, phone_number) values ('Claudette', 'Cape', '5018706791');
insert into person (first_name, last_name, phone_number) values ('Myrtia', 'Carey', '8755089891');
insert into person (first_name, last_name, phone_number) values ('Simone', 'Bartlomieczak', '4679551493');
insert into person (first_name, last_name, phone_number) values ('Evonne', 'Snoden', '6515110329');
insert into person (first_name, last_name, phone_number) values ('Gerrilee', 'McCreary', '4826873945');
insert into person (first_name, last_name, phone_number) values ('Gabriel', 'Buesnel', '1525292541');
insert into person (first_name, last_name, phone_number) values ('Catie', 'Phipard-Shears', '5593996184');
insert into person (first_name, last_name, phone_number) values ('Tisha', 'Toping', '9118293297');
insert into person (first_name, last_name, phone_number) values ('Celesta', 'Balm', '8195052801');
insert into person (first_name, last_name, phone_number) values ('Hildagard', 'Sharple', '1337616325');
insert into person (first_name, last_name, phone_number) values ('Freddie', 'Bergeon', '3844361647');
insert into person (first_name, last_name, phone_number) values ('Elena', 'Moyles', '3221795789');
insert into person (first_name, last_name, phone_number) values ('Joelle', 'Bowle', '2581437647');
insert into person (first_name, last_name, phone_number) values ('Conny', 'Shuard', '2584437912');
insert into person (first_name, last_name, phone_number) values ('Betteann', 'Stirtle', '9349312105');
insert into person (first_name, last_name, phone_number) values ('Ulberto', 'Daines', '5792186480');
insert into person (first_name, last_name, phone_number) values ('Fulton', 'Dowling', '2659627460');
insert into person (first_name, last_name, phone_number) values ('Claresta', 'Jzhakov', '2707472615');
insert into person (first_name, last_name, phone_number) values ('Galven', 'Wimpenny', '1212448459');
insert into person (first_name, last_name, phone_number) values ('Bethanne', 'Simonsen', '1765539341');
insert into person (first_name, last_name, phone_number) values ('Val', 'Cohrs', '4644676702');
insert into person (first_name, last_name, phone_number) values ('Monti', 'Izakof', '8631514102');
insert into person (first_name, last_name, phone_number) values ('Robinia', 'Muehle', '4643962495');
insert into person (first_name, last_name, phone_number) values ('Terrye', 'McAreavey', '5716243134');
insert into person (first_name, last_name, phone_number) values ('Nola', 'Attewell', '8549403343');
insert into person (first_name, last_name, phone_number) values ('Bertie', 'Molloy', '4441865529');
insert into person (first_name, last_name, phone_number) values ('Morey', 'Prendeville', '4755916210');
insert into person (first_name, last_name, phone_number) values ('Adena', 'Sibbering', '4404116864');
insert into person (first_name, last_name, phone_number) values ('Rivkah', 'Duling', '3969615868');
insert into person (first_name, last_name, phone_number) values ('Jeremy', 'Reyner', '4505760659');
insert into person (first_name, last_name, phone_number) values ('Crawford', 'Lesaunier', '1307351770');
insert into person (first_name, last_name, phone_number) values ('Gottfried', 'Benoix', '3583714008');
insert into person (first_name, last_name, phone_number) values ('Shel', 'Ninnis', '2948479680');
insert into person (first_name, last_name, phone_number) values ('Alexis', 'Croix', '1091400702');
insert into person (first_name, last_name, phone_number) values ('Sib', 'Southern', '3979361403');
insert into person (first_name, last_name, phone_number) values ('Ebeneser', 'Eddy', '1624770302');
insert into person (first_name, last_name, phone_number) values ('Frazer', 'Castelot', '9719225353');
insert into person (first_name, last_name, phone_number) values ('Garwood', 'Simpson', '4676109623');
insert into person (first_name, last_name, phone_number) values ('Farah', 'Beverley', '8605382165');
insert into person (first_name, last_name, phone_number) values ('Camey', 'Karolovsky', '7389519847');
insert into person (first_name, last_name, phone_number) values ('Kearney', 'Davitt', '1473359483');
insert into person (first_name, last_name, phone_number) values ('Seka', 'Hulbert', '3486931232');
insert into person (first_name, last_name, phone_number) values ('Aleksandr', 'Collihole', '3626670749');
insert into person (first_name, last_name, phone_number) values ('Quillan', 'McMillan', '2073240131');
insert into person (first_name, last_name, phone_number) values ('Emmett', 'Quinnelly', '4371623584');
insert into person (first_name, last_name, phone_number) values ('Rubetta', 'Threadkell', '4858485035');
insert into person (first_name, last_name, phone_number) values ('Byrle', 'Tunnadine', '2116231512');
insert into person (first_name, last_name, phone_number) values ('Therese', 'Philliphs', '8716596156');
insert into person (first_name, last_name, phone_number) values ('Dame', 'Eisenberg', '6172556681');
insert into person (first_name, last_name, phone_number) values ('Colby', 'Douthwaite', '9829300060');
insert into person (first_name, last_name, phone_number) values ('Barry', 'O''Hagirtie', '2179066641');
insert into person (first_name, last_name, phone_number) values ('Harlie', 'Laurenz', '8142405286');
insert into person (first_name, last_name, phone_number) values ('Xena', 'Petto', '3335251117');
insert into person (first_name, last_name, phone_number) values ('Josh', 'Bryson', '5669230753');
insert into person (first_name, last_name, phone_number) values ('Lesley', 'Houseley', '8087852875');
insert into person (first_name, last_name, phone_number) values ('Joscelin', 'Gomer', '5094737126');
insert into person (first_name, last_name, phone_number) values ('Jeffy', 'Spargo', '9307992359');
insert into person (first_name, last_name, phone_number) values ('Stephen', 'Jacmard', '3448774597');
insert into person (first_name, last_name, phone_number) values ('Yves', 'Sudlow', '1471327864');
insert into person (first_name, last_name, phone_number) values ('Hank', 'Kenner', '7837646309');
insert into person (first_name, last_name, phone_number) values ('Clevie', 'Gaul', '9117350672');
insert into person (first_name, last_name, phone_number) values ('Anders', 'Brothers', '6526832612');
insert into person (first_name, last_name, phone_number) values ('Carole', 'Mathis', '2052674889');
insert into person (first_name, last_name, phone_number) values ('Bart', 'Bielfeldt', '3859870143');
insert into person (first_name, last_name, phone_number) values ('Karee', 'Kalisch', '7279520923');
insert into person (first_name, last_name, phone_number) values ('Kara-lynn', 'Wedon', '2421933621');
insert into person (first_name, last_name, phone_number) values ('Raimundo', 'Hawton', '8232764064');
insert into person (first_name, last_name, phone_number) values ('Vinny', 'Domelow', '9047381683');
insert into person (first_name, last_name, phone_number) values ('Rhiamon', 'Shutle', '3549273288');
insert into person (first_name, last_name, phone_number) values ('Brittany', 'Elfe', '4244605129');
insert into person (first_name, last_name, phone_number) values ('Guillema', 'Gulliver', '6835552752');
insert into person (first_name, last_name, phone_number) values ('Brose', 'Jellman', '6807347166');
insert into person (first_name, last_name, phone_number) values ('Osborn', 'Ferronier', '3366166925');
insert into person (first_name, last_name, phone_number) values ('Jacquette', 'Lowy', '7662771568');
insert into person (first_name, last_name, phone_number) values ('Larry', 'Clissell', '1894604023');
insert into person (first_name, last_name, phone_number) values ('Bartel', 'Alexsandrowicz', '1752302475');
insert into person (first_name, last_name, phone_number) values ('Hernando', 'Hallin', '1571165264');
insert into person (first_name, last_name, phone_number) values ('Buffy', 'Atte-Stone', '3253272725');
insert into person (first_name, last_name, phone_number) values ('Maia', 'Doyley', '1677991246');
insert into person (first_name, last_name, phone_number) values ('Cecile', 'Hicks', '4995660585');
insert into person (first_name, last_name, phone_number) values ('Fayina', 'Van den Velde', '5853758516');
insert into person (first_name, last_name, phone_number) values ('Luz', 'End', '6024777605');
insert into person (first_name, last_name, phone_number) values ('Jackie', 'Gallehawk', '7647407979');
insert into person (first_name, last_name, phone_number) values ('Arlan', 'Preddy', '6943299484');
insert into person (first_name, last_name, phone_number) values ('Debera', 'Smogur', '7857366139');
insert into person (first_name, last_name, phone_number) values ('Kristofor', 'Chritchlow', '1154427476');
insert into person (first_name, last_name, phone_number) values ('Henryetta', 'McIntosh', '9026023162');
insert into person (first_name, last_name, phone_number) values ('Garek', 'Calcut', '4195874028');
insert into person (first_name, last_name, phone_number) values ('Forester', 'Loades', '7771021893');
insert into person (first_name, last_name, phone_number) values ('Maxine', 'Lidierth', '3836487648');
insert into person (first_name, last_name, phone_number) values ('Dawna', 'Beckensall', '9508407181');
insert into person (first_name, last_name, phone_number) values ('Griffie', 'Livsey', '5203388059');
insert into person (first_name, last_name, phone_number) values ('Laraine', 'Di Carli', '4671436280');
insert into person (first_name, last_name, phone_number) values ('Aida', 'Bamlet', '1098104753');
insert into person (first_name, last_name, phone_number) values ('Stella', 'Rosengren', '3876604412');
insert into person (first_name, last_name, phone_number) values ('Bert', 'Aleshintsev', '6757751464');
insert into person (first_name, last_name, phone_number) values ('Gorden', 'Piolli', '8957682159');
insert into person (first_name, last_name, phone_number) values ('Correna', 'Creggan', '5638261511');
insert into person (first_name, last_name, phone_number) values ('Ezri', 'Currey', '4557253115');
insert into person (first_name, last_name, phone_number) values ('Kimmi', 'Unsworth', '2874804023');
insert into person (first_name, last_name, phone_number) values ('Carson', 'Veale', '1167728552');
insert into person (first_name, last_name, phone_number) values ('Flss', 'Cornely', '3949583509');
insert into person (first_name, last_name, phone_number) values ('Martita', 'Stitwell', '1769307951');
insert into person (first_name, last_name, phone_number) values ('Elly', 'Sheehy', '7296410935');
insert into person (first_name, last_name, phone_number) values ('Franchot', 'Robbings', '2183567650');
insert into person (first_name, last_name, phone_number) values ('Lexis', 'Brewse', '3845657894');
insert into person (first_name, last_name, phone_number) values ('Gerik', 'Jacob', '3549811726');
insert into person (first_name, last_name, phone_number) values ('Camala', 'Maccrae', '5128232673');
insert into person (first_name, last_name, phone_number) values ('Stephan', 'Drake', '5906327051');
insert into person (first_name, last_name, phone_number) values ('Gannie', 'Deboy', '6786085489');
insert into person (first_name, last_name, phone_number) values ('Clem', 'Croasdale', '4911164983');
insert into person (first_name, last_name, phone_number) values ('Jenilee', 'Coaten', '1089537275');
insert into person (first_name, last_name, phone_number) values ('Pete', 'Everex', '1556048808');
insert into person (first_name, last_name, phone_number) values ('Bank', 'Crady', '6916745455');
insert into person (first_name, last_name, phone_number) values ('Ransell', 'Plank', '7931994107');
insert into person (first_name, last_name, phone_number) values ('Micheline', 'Flanders', '4253768582');
insert into person (first_name, last_name, phone_number) values ('Byram', 'Baglow', '2381429915');
insert into person (first_name, last_name, phone_number) values ('Obie', 'De Francesco', '8518552038');
insert into person (first_name, last_name, phone_number) values ('Corrinne', 'Bosence', '4881480698');
insert into person (first_name, last_name, phone_number) values ('Damiano', 'McBratney', '4251346078');
insert into person (first_name, last_name, phone_number) values ('Leodora', 'Liggins', '1556681134');
insert into person (first_name, last_name, phone_number) values ('Marya', 'Winning', '7884820593');
insert into person (first_name, last_name, phone_number) values ('Gabriello', 'Galsworthy', '6917015561');
insert into person (first_name, last_name, phone_number) values ('Coleen', 'Dreghorn', '1126147682');
insert into person (first_name, last_name, phone_number) values ('Holly', 'Strelitzki', '2012475194');
insert into person (first_name, last_name, phone_number) values ('Tim', 'Loveredge', '3117375370');
insert into person (first_name, last_name, phone_number) values ('Pammy', 'Youtead', '9588027841');
insert into person (first_name, last_name, phone_number) values ('Arni', 'Mirrlees', '4637828327');
insert into person (first_name, last_name, phone_number) values ('Corbin', 'Drohun', '4623426782');
insert into person (first_name, last_name, phone_number) values ('Ofilia', 'Carletti', '9477219042');
insert into person (first_name, last_name, phone_number) values ('Vevay', 'Tomaselli', '4667631898');
insert into person (first_name, last_name, phone_number) values ('Crystal', 'Shorton', '5563262770');
insert into person (first_name, last_name, phone_number) values ('Kelcy', 'Jacke', '3152627723');
insert into person (first_name, last_name, phone_number) values ('Regen', 'Ertel', '6389441792');
insert into person (first_name, last_name, phone_number) values ('Winston', 'Cookes', '7036896723');
insert into person (first_name, last_name, phone_number) values ('Bond', 'Chesser', '5751708155');
insert into person (first_name, last_name, phone_number) values ('Allina', 'Spratt', '1543818004');
insert into person (first_name, last_name, phone_number) values ('Tann', 'Copyn', '8006194713');
insert into person (first_name, last_name, phone_number) values ('Brendin', 'Btham', '5783833617');
insert into person (first_name, last_name, phone_number) values ('Mauricio', 'Jankowski', '8205103426');
insert into person (first_name, last_name, phone_number) values ('Vikki', 'MacNeachtain', '8452844645');
insert into person (first_name, last_name, phone_number) values ('Quintilla', 'Mahady', '3697375445');
insert into person (first_name, last_name, phone_number) values ('Evan', 'Machon', '2957275642');
insert into person (first_name, last_name, phone_number) values ('Clea', 'McSparran', '3113897675');
insert into person (first_name, last_name, phone_number) values ('Agnese', 'Carn', '9624818390');
insert into person (first_name, last_name, phone_number) values ('Carilyn', 'Olyfat', '3046558744');
insert into person (first_name, last_name, phone_number) values ('Shandie', 'Gosneye', '1031503298');
insert into person (first_name, last_name, phone_number) values ('Elna', 'Jales', '9593145622');
insert into person (first_name, last_name, phone_number) values ('Henry', 'Gartell', '7014558516');
insert into person (first_name, last_name, phone_number) values ('Caz', 'Masterman', '8624220235');
insert into person (first_name, last_name, phone_number) values ('Sonya', 'Arkill', '7019161535');
insert into person (first_name, last_name, phone_number) values ('Agneta', 'Sanders', '6143194279');
insert into person (first_name, last_name, phone_number) values ('Shellysheldon', 'Crayker', '3612790121');
insert into person (first_name, last_name, phone_number) values ('Wenda', 'Maycock', '4828229666');
insert into person (first_name, last_name, phone_number) values ('Dunc', 'Zuanelli', '7181629359');
insert into person (first_name, last_name, phone_number) values ('Kerry', 'Seamon', '8984689275');
insert into person (first_name, last_name, phone_number) values ('Ava', 'Tenman', '7685280020');
insert into person (first_name, last_name, phone_number) values ('Hermy', 'Routham', '4389305860');
insert into person (first_name, last_name, phone_number) values ('Gerrie', 'Spata', '6586701780');
insert into person (first_name, last_name, phone_number) values ('Gawain', 'Tamblingson', '5894868079');
insert into person (first_name, last_name, phone_number) values ('Ardis', 'Goodwins', '1974477093');
insert into person (first_name, last_name, phone_number) values ('Kellia', 'Lindenboim', '5723119281');
insert into person (first_name, last_name, phone_number) values ('Sergeant', 'Levison', '2338800388');
insert into person (first_name, last_name, phone_number) values ('Linn', 'Renne', '3229719432');
insert into person (first_name, last_name, phone_number) values ('Tybi', 'Daftor', '8383368247');
insert into person (first_name, last_name, phone_number) values ('Paton', 'Ruttgers', '3643743587');
insert into person (first_name, last_name, phone_number) values ('Ashlen', 'Peters', '2508391712');
insert into person (first_name, last_name, phone_number) values ('Gaye', 'Leyfield', '6038786948');
insert into person (first_name, last_name, phone_number) values ('Bing', 'Thrush', '7542269435');
insert into person (first_name, last_name, phone_number) values ('Blanche', 'Boon', '5289207384');
insert into person (first_name, last_name, phone_number) values ('Clareta', 'Jedrzejczyk', '5132457943');
insert into person (first_name, last_name, phone_number) values ('Aleen', 'Neggrini', '4132693261');
insert into person (first_name, last_name, phone_number) values ('Jacynth', 'Woodroffe', '4538941900');
insert into person (first_name, last_name, phone_number) values ('Vic', 'Dudson', '1307795010');
insert into person (first_name, last_name, phone_number) values ('Petra', 'Peedell', '7957002153');
insert into person (first_name, last_name, phone_number) values ('Ardelia', 'Flageul', '8549401102');
insert into person (first_name, last_name, phone_number) values ('Oralle', 'Hender', '2558640302');
insert into person (first_name, last_name, phone_number) values ('Bryce', 'Scruby', '6755615455');
insert into person (first_name, last_name, phone_number) values ('Gifford', 'Adnam', '7722417869');
insert into person (first_name, last_name, phone_number) values ('Victoir', 'Hargey', '6265837992');
insert into person (first_name, last_name, phone_number) values ('Courtney', 'Olman', '4831011002');
insert into person (first_name, last_name, phone_number) values ('Antons', 'Stoad', '3263112532');
insert into person (first_name, last_name, phone_number) values ('Rochella', 'Greenacre', '9224223709');
insert into person (first_name, last_name, phone_number) values ('Upton', 'Staresmeare', '4126825323');
insert into person (first_name, last_name, phone_number) values ('Tessa', 'Shoebridge', '1736786814');
insert into person (first_name, last_name, phone_number) values ('Kimble', 'Lowdyane', '5638283611');
insert into person (first_name, last_name, phone_number) values ('Elmore', 'Shilvock', '9684089588');
insert into person (first_name, last_name, phone_number) values ('Harri', 'Ambler', '3056277904');
insert into person (first_name, last_name, phone_number) values ('Valina', 'Northgraves', '6234471018');
insert into person (first_name, last_name, phone_number) values ('Janifer', 'O''Fearguise', '2298963178');
insert into person (first_name, last_name, phone_number) values ('Dion', 'Shaul', '3412672636');
insert into person (first_name, last_name, phone_number) values ('Deny', 'Starmont', '5512762175');
insert into person (first_name, last_name, phone_number) values ('Kamillah', 'Berrecloth', '7449191074');
insert into person (first_name, last_name, phone_number) values ('Tuckie', 'Croucher', '8262503941');
insert into person (first_name, last_name, phone_number) values ('Sheffield', 'Ellit', '3059759821');
insert into person (first_name, last_name, phone_number) values ('Susanetta', 'Hamflett', '5768931075');
insert into person (first_name, last_name, phone_number) values ('Alvina', 'Lago', '3066171175');
insert into person (first_name, last_name, phone_number) values ('Purcell', 'Pinke', '4337833341');
insert into person (first_name, last_name, phone_number) values ('Florie', 'Stollmeyer', '3036019664');
insert into person (first_name, last_name, phone_number) values ('Koressa', 'Bastide', '7677441030');
insert into person (first_name, last_name, phone_number) values ('Shayne', 'Wison', '4941010135');
insert into person (first_name, last_name, phone_number) values ('Marty', 'Ivushkin', '7617859983');
insert into person (first_name, last_name, phone_number) values ('Chariot', 'Gotfrey', '3772423670');
insert into person (first_name, last_name, phone_number) values ('Nicki', 'Serman', '4159268851');
insert into person (first_name, last_name, phone_number) values ('Timi', 'Scattergood', '9951630840');
insert into person (first_name, last_name, phone_number) values ('Glyn', 'Barstowk', '2034241902');
insert into person (first_name, last_name, phone_number) values ('Margi', 'Taylder', '8164347469');
insert into person (first_name, last_name, phone_number) values ('Amble', 'Burchall', '5295394927');
insert into person (first_name, last_name, phone_number) values ('Burtie', 'Guidoni', '1047216845');
insert into person (first_name, last_name, phone_number) values ('Osbert', 'Pinsent', '9564656091');
insert into person (first_name, last_name, phone_number) values ('Lilllie', 'Sexten', '6271393141');
insert into person (first_name, last_name, phone_number) values ('Fionnula', 'Oakeshott', '4889572722');
insert into person (first_name, last_name, phone_number) values ('Jamil', 'Barratt', '3341823668');
insert into person (first_name, last_name, phone_number) values ('Danielle', 'Androsik', '9882101200');
insert into person (first_name, last_name, phone_number) values ('Estella', 'Skakunas', '9845727549');
insert into person (first_name, last_name, phone_number) values ('Lindsey', 'Fehner', '8924635338');
insert into person (first_name, last_name, phone_number) values ('Brigit', 'Krysztowczyk', '1846141775');
insert into person (first_name, last_name, phone_number) values ('Corbie', 'Whyborn', '1982875308');
insert into person (first_name, last_name, phone_number) values ('Cazzie', 'Wake', '1135681573');
insert into person (first_name, last_name, phone_number) values ('Joelly', 'Asken', '7534424355');
insert into person (first_name, last_name, phone_number) values ('Freddy', 'Vales', '4796124775');
insert into person (first_name, last_name, phone_number) values ('Andy', 'Duck', '7944667969');
insert into person (first_name, last_name, phone_number) values ('Mort', 'Nobriga', '3168727954');
insert into person (first_name, last_name, phone_number) values ('Rem', 'Eland', '2046215691');
insert into person (first_name, last_name, phone_number) values ('Lola', 'Getten', '7847786260');
insert into person (first_name, last_name, phone_number) values ('Iormina', 'Woodus', '8978397318');
insert into person (first_name, last_name, phone_number) values ('Fiorenze', 'Maharry', '3051393952');
insert into person (first_name, last_name, phone_number) values ('Morey', 'Bawme', '8637161397');
insert into person (first_name, last_name, phone_number) values ('Fee', 'Mattevi', '9424236454');
insert into person (first_name, last_name, phone_number) values ('Reed', 'Muffin', '4075693417');
insert into person (first_name, last_name, phone_number) values ('Skelly', 'Honnicott', '1331574097');
insert into person (first_name, last_name, phone_number) values ('Skip', 'Mityashev', '5568318902');
insert into person (first_name, last_name, phone_number) values ('Raddie', 'Pierucci', '2504938939');
insert into person (first_name, last_name, phone_number) values ('Orrin', 'Mathen', '2029130176');
insert into person (first_name, last_name, phone_number) values ('Ben', 'Esmonde', '9228603783');
insert into person (first_name, last_name, phone_number) values ('Angelina', 'Franken', '3502131634');
insert into person (first_name, last_name, phone_number) values ('Ingaberg', 'Sabie', '2601808587');
insert into person (first_name, last_name, phone_number) values ('Cissiee', 'Busson', '1353657108');
insert into person (first_name, last_name, phone_number) values ('Abbot', 'Dudhill', '2542397106');
insert into person (first_name, last_name, phone_number) values ('Louis', 'Selwyn', '2731720249');
insert into person (first_name, last_name, phone_number) values ('Rice', 'Woolliams', '7351368740');
insert into person (first_name, last_name, phone_number) values ('Rubetta', 'Bisco', '5339876676');
insert into person (first_name, last_name, phone_number) values ('Rora', 'Hailston', '4802035513');
insert into person (first_name, last_name, phone_number) values ('Regen', 'Attwater', '8885114919');
insert into person (first_name, last_name, phone_number) values ('Chad', 'Conerding', '9413596844');
insert into person (first_name, last_name, phone_number) values ('Dorena', 'Besque', '2199554272');
insert into person (first_name, last_name, phone_number) values ('Shaine', 'MacGillacolm', '4337934947');
insert into person (first_name, last_name, phone_number) values ('Rees', 'Bjorkan', '8089557153');
insert into person (first_name, last_name, phone_number) values ('Lenard', 'Domel', '4767558081');
insert into person (first_name, last_name, phone_number) values ('Barbara-anne', 'Coyte', '6942650097');
insert into person (first_name, last_name, phone_number) values ('Ardelle', 'Crispe', '4601022593');
insert into person (first_name, last_name, phone_number) values ('Barclay', 'Redler', '5433822487');
insert into person (first_name, last_name, phone_number) values ('Stanton', 'Buncombe', '9043266962');
insert into person (first_name, last_name, phone_number) values ('Tessie', 'Paintain', '8454148200');
insert into person (first_name, last_name, phone_number) values ('Licha', 'Dyka', '7355559556');
insert into person (first_name, last_name, phone_number) values ('Keir', 'Friberg', '5126664807');
insert into person (first_name, last_name, phone_number) values ('Denis', 'Seligson', '9535495033');
insert into person (first_name, last_name, phone_number) values ('Bren', 'Haffner', '5321734665');
insert into person (first_name, last_name, phone_number) values ('Dasi', 'Mews', '6107334296');
insert into person (first_name, last_name, phone_number) values ('Dorthea', 'Pickersail', '8035937000');
insert into person (first_name, last_name, phone_number) values ('Rita', 'Senogles', '9506410805');
insert into person (first_name, last_name, phone_number) values ('Reggi', 'Troke', '6456387531');
insert into person (first_name, last_name, phone_number) values ('Annora', 'Nibley', '8196298584');
insert into person (first_name, last_name, phone_number) values ('Darelle', 'Eason', '2109511116');
insert into person (first_name, last_name, phone_number) values ('Farlee', 'Strettell', '6856939364');
insert into person (first_name, last_name, phone_number) values ('Emanuel', 'Pieche', '2009319374');
insert into person (first_name, last_name, phone_number) values ('Franciskus', 'Donoher', '9172518884');
insert into person (first_name, last_name, phone_number) values ('Consuela', 'Goodnow', '5838001320');
insert into person (first_name, last_name, phone_number) values ('Paddy', 'Craighill', '2957820850');
insert into person (first_name, last_name, phone_number) values ('Lona', 'Limerick', '2913133392');
insert into person (first_name, last_name, phone_number) values ('Archer', 'Jagiela', '7449501717');
insert into person (first_name, last_name, phone_number) values ('Sybil', 'Carder', '6271567944');
insert into person (first_name, last_name, phone_number) values ('Lombard', 'McClymont', '6684339612');
insert into person (first_name, last_name, phone_number) values ('Heath', 'Vittery', '6395788043');
insert into person (first_name, last_name, phone_number) values ('Sauncho', 'Wreiford', '6741124330');
insert into person (first_name, last_name, phone_number) values ('Jenni', 'Ferbrache', '6012758569');
insert into person (first_name, last_name, phone_number) values ('Curr', 'Bastone', '2608825563');
insert into person (first_name, last_name, phone_number) values ('Amabelle', 'MacRanald', '6456697789');
insert into person (first_name, last_name, phone_number) values ('Padraig', 'Sockell', '4191466527');
insert into person (first_name, last_name, phone_number) values ('Merwin', 'Leggat', '7847545002');
insert into person (first_name, last_name, phone_number) values ('Rheta', 'Ferrarotti', '2147151756');
insert into person (first_name, last_name, phone_number) values ('Nara', 'Acum', '5705226566');
insert into person (first_name, last_name, phone_number) values ('Wilburt', 'Doggett', '6085629554');
insert into person (first_name, last_name, phone_number) values ('Tomlin', 'Eastgate', '9974846332');
insert into person (first_name, last_name, phone_number) values ('Stillman', 'Wharby', '4717910778');
insert into person (first_name, last_name, phone_number) values ('Terence', 'Oddboy', '5355220191');
insert into person (first_name, last_name, phone_number) values ('Tani', 'Cuffe', '4155088476');
insert into person (first_name, last_name, phone_number) values ('Vonni', 'Pulteneye', '7818303995');
insert into person (first_name, last_name, phone_number) values ('Shelli', 'Capsey', '2338750540');
insert into person (first_name, last_name, phone_number) values ('Elijah', 'Scritch', '4562682865');
insert into person (first_name, last_name, phone_number) values ('Ambrosio', 'Jacobsohn', '2063856297');
insert into person (first_name, last_name, phone_number) values ('Kacey', 'Botha', '1199646825');
insert into person (first_name, last_name, phone_number) values ('Shantee', 'Crofthwaite', '3125119021');
insert into person (first_name, last_name, phone_number) values ('Micah', 'Shurmer', '8986289358');
insert into person (first_name, last_name, phone_number) values ('Hewet', 'Wingham', '8229954405');
insert into person (first_name, last_name, phone_number) values ('Melloney', 'Dudliston', '2631526233');
insert into person (first_name, last_name, phone_number) values ('Tate', 'Tesh', '5442665083');
insert into person (first_name, last_name, phone_number) values ('Emmey', 'Stanmore', '7511170382');
insert into person (first_name, last_name, phone_number) values ('Cornell', 'Swale', '7155236658');
insert into person (first_name, last_name, phone_number) values ('Melesa', 'Bartel', '7983088259');
insert into person (first_name, last_name, phone_number) values ('Saba', 'Whenman', '7388864614');
insert into person (first_name, last_name, phone_number) values ('Yul', 'Bartleet', '9842299848');
insert into person (first_name, last_name, phone_number) values ('Oswald', 'Storek', '5206083030');
insert into person (first_name, last_name, phone_number) values ('Wilbur', 'Craigmyle', '4961297639');
insert into person (first_name, last_name, phone_number) values ('Minta', 'Haversham', '6773054458');
insert into person (first_name, last_name, phone_number) values ('Tait', 'Want', '4282436854');
insert into person (first_name, last_name, phone_number) values ('Gale', 'O''Dunneen', '5342332381');
insert into person (first_name, last_name, phone_number) values ('Augustin', 'Wealthall', '5233934688');
insert into person (first_name, last_name, phone_number) values ('Miltie', 'Laslett', '7021632297');
insert into person (first_name, last_name, phone_number) values ('Abey', 'Garnson', '7327252494');
insert into person (first_name, last_name, phone_number) values ('Shelley', 'Dowse', '2833010046');
insert into person (first_name, last_name, phone_number) values ('Bary', 'Ashurst', '4918024747');
insert into person (first_name, last_name, phone_number) values ('Elvera', 'Dewire', '5528645210');
insert into person (first_name, last_name, phone_number) values ('Tailor', 'Sibyllina', '5181314532');
insert into person (first_name, last_name, phone_number) values ('Jesus', 'Irvin', '9274035774');
insert into person (first_name, last_name, phone_number) values ('Rocky', 'Luty', '8759203391');
insert into person (first_name, last_name, phone_number) values ('Jonathan', 'Ladson', '6832871645');
insert into person (first_name, last_name, phone_number) values ('Gibby', 'Asser', '2658563336');
insert into person (first_name, last_name, phone_number) values ('Hank', 'Faughnan', '3148091444');
insert into person (first_name, last_name, phone_number) values ('Had', 'Cassley', '4995266308');
insert into person (first_name, last_name, phone_number) values ('Dolf', 'Vossgen', '4043066759');
insert into person (first_name, last_name, phone_number) values ('Addi', 'Jessen', '1069742188');
insert into person (first_name, last_name, phone_number) values ('Dukey', 'Heffernon', '4042907222');
insert into person (first_name, last_name, phone_number) values ('Beverlee', 'Dillestone', '6195660273');
insert into person (first_name, last_name, phone_number) values ('Frieda', 'Livock', '2369703739');
insert into person (first_name, last_name, phone_number) values ('Susette', 'Hatje', '9447689824');
insert into person (first_name, last_name, phone_number) values ('Filippo', 'Spellessy', '9732040841');
insert into person (first_name, last_name, phone_number) values ('Lizzie', 'Georgeau', '9619693475');
insert into person (first_name, last_name, phone_number) values ('Gayler', 'Rowland', '7095215192');
insert into person (first_name, last_name, phone_number) values ('Bar', 'Galletley', '9954394684');
insert into person (first_name, last_name, phone_number) values ('Elmore', 'Gehrels', '4693933894');
insert into person (first_name, last_name, phone_number) values ('Keene', 'Lethby', '6879872076');
insert into person (first_name, last_name, phone_number) values ('Honoria', 'Ravenhills', '7502075894');
insert into person (first_name, last_name, phone_number) values ('Horatia', 'Nowell', '5241550176');
insert into person (first_name, last_name, phone_number) values ('Immanuel', 'Tichelaar', '8867099383');
insert into person (first_name, last_name, phone_number) values ('Pepe', 'Paskin', '1183289788');
insert into person (first_name, last_name, phone_number) values ('Erik', 'Leppo', '4582273432');
insert into person (first_name, last_name, phone_number) values ('Ianthe', 'Probart', '1697237224');
insert into person (first_name, last_name, phone_number) values ('Clemmie', 'Cordelette', '5099270926');
insert into person (first_name, last_name, phone_number) values ('Davis', 'Angeli', '1378800685');
insert into person (first_name, last_name, phone_number) values ('Kriste', 'Struthers', '7856854801');
insert into person (first_name, last_name, phone_number) values ('Hubie', 'Longmuir', '2907957666');
insert into person (first_name, last_name, phone_number) values ('Riannon', 'Grcic', '5105451980');
insert into person (first_name, last_name, phone_number) values ('Malena', 'Wordesworth', '7732930418');
insert into person (first_name, last_name, phone_number) values ('Daniel', 'Weiser', '7052298047');
insert into person (first_name, last_name, phone_number) values ('Lucian', 'Taylo', '5087042303');
insert into person (first_name, last_name, phone_number) values ('Elwood', 'Harbinson', '7627386133');
insert into person (first_name, last_name, phone_number) values ('Shanta', 'Hamber', '1016605150');
insert into person (first_name, last_name, phone_number) values ('Matthieu', 'Perllman', '9343517201');
insert into person (first_name, last_name, phone_number) values ('Byrom', 'Deeks', '1008345124');
insert into person (first_name, last_name, phone_number) values ('Irvin', 'Cleere', '8118422490');
insert into person (first_name, last_name, phone_number) values ('Corrie', 'Macy', '2707375041');
insert into person (first_name, last_name, phone_number) values ('Darbee', 'Wolfendale', '3324957249');
insert into person (first_name, last_name, phone_number) values ('Calida', 'Plunket', '3873661370');
insert into person (first_name, last_name, phone_number) values ('Hastings', 'O''Hollegan', '4615356818');
insert into person (first_name, last_name, phone_number) values ('Vern', 'Harbour', '7288330851');
insert into person (first_name, last_name, phone_number) values ('Gusty', 'Beakes', '9112057628');
insert into person (first_name, last_name, phone_number) values ('Audy', 'Vedyasov', '4787299989');
insert into person (first_name, last_name, phone_number) values ('Norbert', 'Thompkins', '4893379130');
insert into person (first_name, last_name, phone_number) values ('Ody', 'Kisar', '6805416834');
insert into person (first_name, last_name, phone_number) values ('Melicent', 'Sambrok', '7088832503');
insert into person (first_name, last_name, phone_number) values ('Marice', 'Lineker', '2971135915');
insert into person (first_name, last_name, phone_number) values ('Genna', 'Jacombs', '2823032036');
insert into person (first_name, last_name, phone_number) values ('Blondy', 'Quincey', '7372177099');
insert into person (first_name, last_name, phone_number) values ('Angelika', 'Fradgley', '2221162956');
insert into person (first_name, last_name, phone_number) values ('Arte', 'Surphliss', '9623658572');
insert into person (first_name, last_name, phone_number) values ('Isadore', 'Lickorish', '7177276963');
insert into person (first_name, last_name, phone_number) values ('Leandra', 'Baudacci', '6756475469');
insert into person (first_name, last_name, phone_number) values ('Juana', 'Reeve', '8448532083');
insert into person (first_name, last_name, phone_number) values ('Natale', 'Gabits', '6854121707');
insert into person (first_name, last_name, phone_number) values ('Alayne', 'Queste', '5599613269');
insert into person (first_name, last_name, phone_number) values ('Lev', 'Walsh', '5336483168');
insert into person (first_name, last_name, phone_number) values ('Mathilde', 'Eggleton', '5584377902');
insert into person (first_name, last_name, phone_number) values ('Kaila', 'Morrott', '3687630588');
insert into person (first_name, last_name, phone_number) values ('Alford', 'Spikins', '3116732848');
insert into person (first_name, last_name, phone_number) values ('Zonnya', 'Allwood', '5525168261');
insert into person (first_name, last_name, phone_number) values ('Juan', 'Wincott', '1674752323');
insert into person (first_name, last_name, phone_number) values ('Abbie', 'de Zamora', '9645366453');
insert into person (first_name, last_name, phone_number) values ('Georgianne', 'Brinkworth', '1032733911');
insert into person (first_name, last_name, phone_number) values ('Anni', 'Lernihan', '8633853081');
insert into person (first_name, last_name, phone_number) values ('Norean', 'Stoeckle', '5983590094');
insert into person (first_name, last_name, phone_number) values ('Elbertina', 'Davidsohn', '9957935209');
insert into person (first_name, last_name, phone_number) values ('Magdalene', 'Pirrie', '4426627168');
insert into person (first_name, last_name, phone_number) values ('Jayme', 'Lockier', '7903877455');
insert into person (first_name, last_name, phone_number) values ('Adela', 'Eles', '8412528255');
insert into person (first_name, last_name, phone_number) values ('Shell', 'Luparti', '7612755441');
insert into person (first_name, last_name, phone_number) values ('Aurelie', 'Matysik', '3659551027');
insert into person (first_name, last_name, phone_number) values ('Lyn', 'Pouck', '5501667100');
insert into person (first_name, last_name, phone_number) values ('Billie', 'Lattka', '3085549684');
insert into person (first_name, last_name, phone_number) values ('Itch', 'Ewins', '5563959149');
insert into person (first_name, last_name, phone_number) values ('Fidel', 'Douthwaite', '3693119597');
insert into person (first_name, last_name, phone_number) values ('Lorinda', 'Dressell', '1582113815');
insert into person (first_name, last_name, phone_number) values ('Ephrem', 'Kamen', '2895856138');
insert into person (first_name, last_name, phone_number) values ('Myrna', 'Della', '6425991476');
insert into person (first_name, last_name, phone_number) values ('Pauly', 'Severy', '1804431353');
insert into person (first_name, last_name, phone_number) values ('Clementia', 'Alchin', '4338304881');
insert into person (first_name, last_name, phone_number) values ('Matthus', 'Garton', '6316516332');
insert into person (first_name, last_name, phone_number) values ('Carey', 'Dimitresco', '3534782189');
insert into person (first_name, last_name, phone_number) values ('Tobi', 'Fullerd', '8782059449');
insert into person (first_name, last_name, phone_number) values ('Torrence', 'Aldine', '6332448098');
insert into person (first_name, last_name, phone_number) values ('Willow', 'Crinidge', '9598182655');
insert into person (first_name, last_name, phone_number) values ('Jacqueline', 'Cherrie', '2976686016');
insert into person (first_name, last_name, phone_number) values ('Nilson', 'Pervoe', '5396581509');
insert into person (first_name, last_name, phone_number) values ('Chester', 'D''Antonio', '6747627415');
insert into person (first_name, last_name, phone_number) values ('Serge', 'Cridge', '4952990882');
insert into person (first_name, last_name, phone_number) values ('Niki', 'Rulten', '6309387269');
insert into person (first_name, last_name, phone_number) values ('Teodoro', 'Penfold', '4093765008');

--changeset yura:2020-12-20-insert-table-auto/7
insert into auto (make, model) values ('Hyundai', 'Elantra');
insert into auto (make, model) values ('Mazda', 'B-Series Plus');
insert into auto (make, model) values ('Chevrolet', 'Blazer');
insert into auto (make, model) values ('Mitsubishi', 'Galant');
insert into auto (make, model) values ('Ford', 'Taurus');
insert into auto (make, model) values ('Mercedes-Benz', 'Sprinter 2500');
insert into auto (make, model) values ('Audi', 'A6');
insert into auto (make, model) values ('Isuzu', 'Space');
insert into auto (make, model) values ('Cadillac', 'Eldorado');
insert into auto (make, model) values ('Dodge', 'Stratus');
insert into auto (make, model) values ('Cadillac', 'CTS');
insert into auto (make, model) values ('Cadillac', 'SRX');
insert into auto (make, model) values ('Chevrolet', 'Impala');
insert into auto (make, model) values ('Suzuki', 'Sidekick');
insert into auto (make, model) values ('Mazda', 'CX-9');
insert into auto (make, model) values ('Honda', 'Accord');
insert into auto (make, model) values ('Chevrolet', 'Suburban 1500');
insert into auto (make, model) values ('Mercedes-Benz', '400SEL');
insert into auto (make, model) values ('Chevrolet', 'Cavalier');
insert into auto (make, model) values ('Chevrolet', 'S10 Blazer');
insert into auto (make, model) values ('Kia', 'Sportage');
insert into auto (make, model) values ('Maserati', 'Quattroporte');
insert into auto (make, model) values ('GMC', 'Yukon');
insert into auto (make, model) values ('Lexus', 'LS');
insert into auto (make, model) values ('Mercedes-Benz', 'S-Class');
insert into auto (make, model) values ('Land Rover', 'LR2');
insert into auto (make, model) values ('Dodge', 'Ram Wagon B350');
insert into auto (make, model) values ('Chevrolet', 'Express 1500');
insert into auto (make, model) values ('Mazda', 'MX-5');
insert into auto (make, model) values ('Maserati', 'Spyder');
insert into auto (make, model) values ('Audi', '100');
insert into auto (make, model) values ('Honda', 'Pilot');
insert into auto (make, model) values ('GMC', '1500');
insert into auto (make, model) values ('Mitsubishi', 'Montero');
insert into auto (make, model) values ('Infiniti', 'Q');
insert into auto (make, model) values ('Volvo', 'XC90');
insert into auto (make, model) values ('Saab', '9000');
insert into auto (make, model) values ('Toyota', 'Tundra');
insert into auto (make, model) values ('Ford', 'Escort');
insert into auto (make, model) values ('Buick', 'LeSabre');
insert into auto (make, model) values ('Volkswagen', 'GTI');
insert into auto (make, model) values ('Dodge', 'Ram');
insert into auto (make, model) values ('Mitsubishi', 'Galant');
insert into auto (make, model) values ('Mitsubishi', 'Montero');
insert into auto (make, model) values ('Chevrolet', 'Express 2500');
insert into auto (make, model) values ('BMW', '330');
insert into auto (make, model) values ('Mercury', 'Grand Marquis');
insert into auto (make, model) values ('Maybach', 'Landaulet');
insert into auto (make, model) values ('Ford', 'F350');
insert into auto (make, model) values ('Mercury', 'Marauder');
insert into auto (make, model) values ('Honda', 'S2000');
insert into auto (make, model) values ('Mercedes-Benz', 'E-Class');
insert into auto (make, model) values ('Audi', 'R8');
insert into auto (make, model) values ('Ford', 'Thunderbird');
insert into auto (make, model) values ('Mercury', 'Mariner');
insert into auto (make, model) values ('Nissan', 'Quest');
insert into auto (make, model) values ('Mitsubishi', 'Endeavor');
insert into auto (make, model) values ('Toyota', 'Prius');
insert into auto (make, model) values ('Saab', '9000');
insert into auto (make, model) values ('Isuzu', 'Trooper');
insert into auto (make, model) values ('BMW', 'M3');
insert into auto (make, model) values ('Lincoln', 'Continental');
insert into auto (make, model) values ('Ford', 'Econoline E350');
insert into auto (make, model) values ('Nissan', 'Xterra');
insert into auto (make, model) values ('Cadillac', 'Seville');
insert into auto (make, model) values ('Lincoln', 'Continental');
insert into auto (make, model) values ('Audi', 'A4');
insert into auto (make, model) values ('Chrysler', 'Town & Country');
insert into auto (make, model) values ('Lexus', 'GS');
insert into auto (make, model) values ('Dodge', 'Caravan');
insert into auto (make, model) values ('GMC', 'Envoy');
insert into auto (make, model) values ('Acura', 'TL');
insert into auto (make, model) values ('Hyundai', 'Sonata');
insert into auto (make, model) values ('Mercedes-Benz', 'CL-Class');
insert into auto (make, model) values ('Acura', 'MDX');
insert into auto (make, model) values ('BMW', '745');
insert into auto (make, model) values ('Mercedes-Benz', 'SL-Class');
insert into auto (make, model) values ('Maybach', '62');
insert into auto (make, model) values ('Nissan', 'Pathfinder');
insert into auto (make, model) values ('GMC', 'Yukon');
insert into auto (make, model) values ('Geo', 'Metro');
insert into auto (make, model) values ('Kia', 'Spectra');
insert into auto (make, model) values ('Toyota', 'Tundra');
insert into auto (make, model) values ('Ford', 'Bronco II');
insert into auto (make, model) values ('Mercedes-Benz', 'GL-Class');
insert into auto (make, model) values ('MINI', 'Cooper Countryman');
insert into auto (make, model) values ('Toyota', 'Tacoma');
insert into auto (make, model) values ('GMC', 'Yukon XL 1500');
insert into auto (make, model) values ('Chevrolet', 'APV');
insert into auto (make, model) values ('Ford', 'Contour');
insert into auto (make, model) values ('Mitsubishi', 'Galant');
insert into auto (make, model) values ('Porsche', 'Boxster');
insert into auto (make, model) values ('GMC', 'Jimmy');
insert into auto (make, model) values ('Audi', '90');
insert into auto (make, model) values ('Lotus', 'Elise');
insert into auto (make, model) values ('Dodge', 'Ram Wagon B150');
insert into auto (make, model) values ('Ford', 'Windstar');
insert into auto (make, model) values ('Land Rover', 'Range Rover');
insert into auto (make, model) values ('Mercury', 'Milan');
insert into auto (make, model) values ('Cadillac', 'XLR');
insert into auto (make, model) values ('BMW', '3 Series');
insert into auto (make, model) values ('Ford', 'Econoline E250');
insert into auto (make, model) values ('Pontiac', 'LeMans');
insert into auto (make, model) values ('Nissan', 'Maxima');
insert into auto (make, model) values ('GMC', 'Terrain');
insert into auto (make, model) values ('Hyundai', 'Tiburon');
insert into auto (make, model) values ('Ford', 'Expedition');
insert into auto (make, model) values ('Eagle', 'Talon');
insert into auto (make, model) values ('Toyota', 'Tercel');
insert into auto (make, model) values ('Infiniti', 'Q');
insert into auto (make, model) values ('Nissan', 'NV1500');
insert into auto (make, model) values ('Jaguar', 'XJ Series');
insert into auto (make, model) values ('Mercedes-Benz', 'SL-Class');
insert into auto (make, model) values ('Porsche', 'Cayenne');
insert into auto (make, model) values ('MINI', 'Cooper');
insert into auto (make, model) values ('Cadillac', 'Escalade EXT');
insert into auto (make, model) values ('Mazda', 'Mazdaspeed 3');
insert into auto (make, model) values ('Lamborghini', 'Diablo');
insert into auto (make, model) values ('Volkswagen', 'Cabriolet');
insert into auto (make, model) values ('Mitsubishi', 'Mirage');
insert into auto (make, model) values ('Jeep', 'Comanche');
insert into auto (make, model) values ('Volvo', '740');
insert into auto (make, model) values ('Isuzu', 'Rodeo');
insert into auto (make, model) values ('Volkswagen', 'Jetta');
insert into auto (make, model) values ('Nissan', '240SX');
insert into auto (make, model) values ('Ford', 'ZX2');
insert into auto (make, model) values ('Hyundai', 'Sonata');
insert into auto (make, model) values ('Ford', 'Mustang');
insert into auto (make, model) values ('Ford', 'F150');
insert into auto (make, model) values ('Volvo', 'S40');
insert into auto (make, model) values ('BMW', '525');
insert into auto (make, model) values ('Dodge', 'Ram Wagon B350');
insert into auto (make, model) values ('Hyundai', 'Accent');
insert into auto (make, model) values ('Land Rover', 'Discovery');
insert into auto (make, model) values ('Porsche', '968');
insert into auto (make, model) values ('Pontiac', 'Trans Sport');
insert into auto (make, model) values ('Pontiac', 'G6');
insert into auto (make, model) values ('Porsche', 'Cayenne');
insert into auto (make, model) values ('Toyota', 'Avalon');
insert into auto (make, model) values ('Chevrolet', 'Camaro');
insert into auto (make, model) values ('Mitsubishi', 'Pajero');
insert into auto (make, model) values ('Chevrolet', 'Silverado 2500');
insert into auto (make, model) values ('Geo', 'Tracker');
insert into auto (make, model) values ('Mercury', 'Capri');
insert into auto (make, model) values ('Mazda', 'B-Series Plus');
insert into auto (make, model) values ('Hyundai', 'Santa Fe');
insert into auto (make, model) values ('Suzuki', 'Forenza');
insert into auto (make, model) values ('Mitsubishi', 'Truck');
insert into auto (make, model) values ('GMC', 'Acadia');
insert into auto (make, model) values ('Chevrolet', 'SSR');
insert into auto (make, model) values ('Jaguar', 'XJ Series');
insert into auto (make, model) values ('Audi', 'A8');
insert into auto (make, model) values ('Lincoln', 'Continental');
insert into auto (make, model) values ('Mazda', 'Mazda6');
insert into auto (make, model) values ('Honda', 'Civic');
insert into auto (make, model) values ('Smart', 'Fortwo');
insert into auto (make, model) values ('Ford', 'Econoline E150');
insert into auto (make, model) values ('Mazda', 'RX-8');
insert into auto (make, model) values ('Hyundai', 'Accent');
insert into auto (make, model) values ('Mazda', 'MX-5');
insert into auto (make, model) values ('Audi', 'RS 4');
insert into auto (make, model) values ('GMC', 'Yukon XL 2500');
insert into auto (make, model) values ('GMC', 'Suburban 1500');
insert into auto (make, model) values ('Toyota', 'RAV4');
insert into auto (make, model) values ('Mitsubishi', 'Mighty Max');
insert into auto (make, model) values ('Honda', 'Accord');
insert into auto (make, model) values ('Geo', 'Prizm');
insert into auto (make, model) values ('Pontiac', 'Sunfire');
insert into auto (make, model) values ('Mazda', '626');
insert into auto (make, model) values ('GMC', 'Vandura 2500');
insert into auto (make, model) values ('Saturn', 'VUE');
insert into auto (make, model) values ('Ford', 'E-Series');
insert into auto (make, model) values ('Audi', '5000S');
insert into auto (make, model) values ('Hyundai', 'Accent');
insert into auto (make, model) values ('Toyota', 'MR2');
insert into auto (make, model) values ('Suzuki', 'Esteem');
insert into auto (make, model) values ('Mazda', 'Mazdaspeed 3');
insert into auto (make, model) values ('Audi', 'A4');
insert into auto (make, model) values ('BMW', 'M');
insert into auto (make, model) values ('Mercedes-Benz', 'S-Class');
insert into auto (make, model) values ('Daewoo', 'Nubira');
insert into auto (make, model) values ('Ford', 'Expedition');
insert into auto (make, model) values ('Toyota', 'Sienna');
insert into auto (make, model) values ('Honda', 'Accord');
insert into auto (make, model) values ('Lexus', 'ES');
insert into auto (make, model) values ('Nissan', 'Maxima');
insert into auto (make, model) values ('Mitsubishi', 'Chariot');
insert into auto (make, model) values ('Kia', 'Optima');
insert into auto (make, model) values ('Isuzu', 'i-290');
insert into auto (make, model) values ('Mazda', '929');
insert into auto (make, model) values ('Honda', 'Passport');
insert into auto (make, model) values ('Eagle', 'Talon');
insert into auto (make, model) values ('Chevrolet', 'Suburban 2500');
insert into auto (make, model) values ('Honda', 'Civic');
insert into auto (make, model) values ('Chevrolet', 'Tahoe');
insert into auto (make, model) values ('Honda', 'del Sol');
insert into auto (make, model) values ('Isuzu', 'Trooper');
insert into auto (make, model) values ('Cadillac', 'XLR-V');
insert into auto (make, model) values ('BMW', 'X3');
insert into auto (make, model) values ('Mercedes-Benz', 'SL-Class');
insert into auto (make, model) values ('Buick', 'LeSabre');
insert into auto (make, model) values ('Volkswagen', 'Jetta');
insert into auto (make, model) values ('Ford', 'Explorer');
insert into auto (make, model) values ('Ford', 'Crown Victoria');
insert into auto (make, model) values ('Ford', 'F-250 Super Duty');
insert into auto (make, model) values ('Ford', 'E-Series');
insert into auto (make, model) values ('Chevrolet', 'Silverado 3500');
insert into auto (make, model) values ('Infiniti', 'G35');
insert into auto (make, model) values ('Mitsubishi', 'Pajero');
insert into auto (make, model) values ('Dodge', 'D250 Club');
insert into auto (make, model) values ('Saturn', 'Ion');
insert into auto (make, model) values ('Toyota', 'Land Cruiser');
insert into auto (make, model) values ('Mazda', 'Protege');
insert into auto (make, model) values ('Acura', 'SLX');
insert into auto (make, model) values ('Lexus', 'LFA');
insert into auto (make, model) values ('Pontiac', 'Firefly');
insert into auto (make, model) values ('Lincoln', 'Town Car');
insert into auto (make, model) values ('Infiniti', 'G35');
insert into auto (make, model) values ('GMC', 'Vandura G3500');
insert into auto (make, model) values ('Jeep', 'Compass');
insert into auto (make, model) values ('Chevrolet', 'Silverado 1500');
insert into auto (make, model) values ('GMC', 'Savana 1500');
insert into auto (make, model) values ('Volkswagen', 'CC');
insert into auto (make, model) values ('Bentley', 'Continental');
insert into auto (make, model) values ('Lexus', 'ES');
insert into auto (make, model) values ('Subaru', 'Legacy');
insert into auto (make, model) values ('Mercury', 'Cougar');
insert into auto (make, model) values ('Volkswagen', 'Jetta');
insert into auto (make, model) values ('Buick', 'Electra');
insert into auto (make, model) values ('Suzuki', 'Kizashi');
insert into auto (make, model) values ('Eagle', 'Talon');
insert into auto (make, model) values ('BMW', '5 Series');
insert into auto (make, model) values ('Pontiac', 'Parisienne');
insert into auto (make, model) values ('GMC', 'Sonoma Club Coupe');
insert into auto (make, model) values ('Mitsubishi', 'Challenger');
insert into auto (make, model) values ('Chevrolet', 'G-Series 3500');
insert into auto (make, model) values ('Subaru', 'Forester');
insert into auto (make, model) values ('Pontiac', 'Grand Prix');
insert into auto (make, model) values ('Nissan', 'Frontier');
insert into auto (make, model) values ('Nissan', 'Altima');
insert into auto (make, model) values ('Isuzu', 'Amigo');
insert into auto (make, model) values ('Chevrolet', 'Venture');
insert into auto (make, model) values ('Hyundai', 'Accent');
insert into auto (make, model) values ('Ford', 'E-Series');
insert into auto (make, model) values ('Chevrolet', 'Cavalier');
insert into auto (make, model) values ('Nissan', 'Altima');
insert into auto (make, model) values ('Mercedes-Benz', 'CL-Class');
insert into auto (make, model) values ('Toyota', 'Land Cruiser');
insert into auto (make, model) values ('Lexus', 'RX Hybrid');
insert into auto (make, model) values ('Isuzu', 'i-370');
insert into auto (make, model) values ('Volkswagen', 'Passat');
insert into auto (make, model) values ('Cadillac', 'Escalade');
insert into auto (make, model) values ('Chevrolet', 'Camaro');
insert into auto (make, model) values ('Daihatsu', 'Rocky');
insert into auto (make, model) values ('Dodge', 'Ram 2500 Club');
insert into auto (make, model) values ('Audi', 'A4');
insert into auto (make, model) values ('Land Rover', 'Range Rover');
insert into auto (make, model) values ('Mercedes-Benz', 'C-Class');
insert into auto (make, model) values ('Honda', 'Accord');
insert into auto (make, model) values ('Porsche', '928');
insert into auto (make, model) values ('BMW', 'Z4');
insert into auto (make, model) values ('MINI', 'Cooper Clubman');
insert into auto (make, model) values ('Buick', 'Rainier');
insert into auto (make, model) values ('Chevrolet', 'Astro');
insert into auto (make, model) values ('Ford', 'Excursion');
insert into auto (make, model) values ('Lexus', 'IS');
insert into auto (make, model) values ('BMW', 'Z4 M');
insert into auto (make, model) values ('Volkswagen', 'Passat');
insert into auto (make, model) values ('BMW', 'Z4');
insert into auto (make, model) values ('Ford', 'E-Series');
insert into auto (make, model) values ('Dodge', 'Ram 2500');
insert into auto (make, model) values ('Ferrari', 'FF');
insert into auto (make, model) values ('Ford', 'Expedition EL');
insert into auto (make, model) values ('Ford', 'LTD Crown Victoria');
insert into auto (make, model) values ('Toyota', 'Camry Hybrid');
insert into auto (make, model) values ('Aston Martin', 'DB9');
insert into auto (make, model) values ('Chevrolet', 'G-Series G10');
insert into auto (make, model) values ('Mazda', 'Millenia');
insert into auto (make, model) values ('Suzuki', 'Vitara');
insert into auto (make, model) values ('Buick', 'Riviera');
insert into auto (make, model) values ('Cadillac', 'STS-V');
insert into auto (make, model) values ('Bugatti', 'Veyron');
insert into auto (make, model) values ('Mazda', 'RX-8');
insert into auto (make, model) values ('Ford', 'Flex');
insert into auto (make, model) values ('Honda', 'Element');
insert into auto (make, model) values ('Volvo', 'S40');
insert into auto (make, model) values ('Hummer', 'H3');
insert into auto (make, model) values ('Oldsmobile', 'Silhouette');
insert into auto (make, model) values ('Lexus', 'LX');
insert into auto (make, model) values ('Hyundai', 'Elantra');
insert into auto (make, model) values ('Dodge', 'Grand Caravan');
insert into auto (make, model) values ('Buick', 'Regal');
insert into auto (make, model) values ('Mazda', 'Navajo');
insert into auto (make, model) values ('Chevrolet', 'S10');
insert into auto (make, model) values ('Infiniti', 'Q');
insert into auto (make, model) values ('Bentley', 'Continental GT');
insert into auto (make, model) values ('Daihatsu', 'Rocky');
insert into auto (make, model) values ('Volvo', 'C30');
insert into auto (make, model) values ('Audi', 'riolet');
insert into auto (make, model) values ('Suzuki', 'Kizashi');
insert into auto (make, model) values ('Acura', 'TL');
insert into auto (make, model) values ('Cadillac', 'STS');
insert into auto (make, model) values ('Volkswagen', 'Scirocco');
insert into auto (make, model) values ('Saab', '9000');
insert into auto (make, model) values ('Lincoln', 'Navigator');
insert into auto (make, model) values ('Plymouth', 'Acclaim');
insert into auto (make, model) values ('Mazda', 'CX-9');
insert into auto (make, model) values ('Mazda', 'RX-7');
insert into auto (make, model) values ('Kia', 'Amanti');
insert into auto (make, model) values ('Mitsubishi', 'Tredia');
insert into auto (make, model) values ('Toyota', 'Avalon');
insert into auto (make, model) values ('Chevrolet', 'Camaro');
insert into auto (make, model) values ('Volkswagen', 'Jetta');
insert into auto (make, model) values ('Isuzu', 'Rodeo');
insert into auto (make, model) values ('Aston Martin', 'Rapide');
insert into auto (make, model) values ('Plymouth', 'Horizon');
insert into auto (make, model) values ('Pontiac', 'Firebird');
insert into auto (make, model) values ('Mercedes-Benz', '300TE');
insert into auto (make, model) values ('Jeep', 'Patriot');
insert into auto (make, model) values ('Mazda', 'Mazda3');
insert into auto (make, model) values ('BMW', '1 Series');
insert into auto (make, model) values ('Mercedes-Benz', 'E-Class');
insert into auto (make, model) values ('Ford', 'Mustang');
insert into auto (make, model) values ('Mitsubishi', 'Lancer');
insert into auto (make, model) values ('Buick', 'Skylark');
insert into auto (make, model) values ('Mitsubishi', 'Galant');
insert into auto (make, model) values ('Nissan', 'Frontier');
insert into auto (make, model) values ('Buick', 'Somerset');
insert into auto (make, model) values ('GMC', 'Sonoma');
insert into auto (make, model) values ('Jeep', 'Patriot');
insert into auto (make, model) values ('Chevrolet', 'SSR');
insert into auto (make, model) values ('Maserati', 'Spyder');
insert into auto (make, model) values ('Honda', 'del Sol');
insert into auto (make, model) values ('Dodge', 'Avenger');
insert into auto (make, model) values ('Nissan', 'Frontier');
insert into auto (make, model) values ('Plymouth', 'Roadrunner');
insert into auto (make, model) values ('Chrysler', 'Crossfire');
insert into auto (make, model) values ('Ford', 'F250');
insert into auto (make, model) values ('Mitsubishi', 'Eclipse');
insert into auto (make, model) values ('Dodge', 'Caravan');
insert into auto (make, model) values ('Chevrolet', 'Avalanche 1500');
insert into auto (make, model) values ('Cadillac', 'Eldorado');
insert into auto (make, model) values ('Honda', 'Accord');
insert into auto (make, model) values ('Mercedes-Benz', 'C-Class');
insert into auto (make, model) values ('Toyota', 'Sienna');
insert into auto (make, model) values ('BMW', '600');
insert into auto (make, model) values ('Cadillac', 'Eldorado');
insert into auto (make, model) values ('Infiniti', 'QX');
insert into auto (make, model) values ('Chevrolet', 'Caprice Classic');
insert into auto (make, model) values ('Chrysler', 'PT Cruiser');
insert into auto (make, model) values ('Hummer', 'H1');
insert into auto (make, model) values ('Ford', 'F150');
insert into auto (make, model) values ('Dodge', 'Avenger');
insert into auto (make, model) values ('Mazda', 'MX-3');
insert into auto (make, model) values ('Toyota', 'Solara');
insert into auto (make, model) values ('Mazda', 'Millenia');
insert into auto (make, model) values ('Nissan', 'Quest');
insert into auto (make, model) values ('Lincoln', 'Continental Mark VII');
insert into auto (make, model) values ('Infiniti', 'FX');
insert into auto (make, model) values ('Pontiac', 'Firebird');
insert into auto (make, model) values ('Mazda', 'Mazda5');
insert into auto (make, model) values ('Lamborghini', 'Diablo');
insert into auto (make, model) values ('Chevrolet', 'Silverado 1500');
insert into auto (make, model) values ('Pontiac', 'Firebird');
insert into auto (make, model) values ('Ford', 'E-Series');
insert into auto (make, model) values ('Hyundai', 'Accent');
insert into auto (make, model) values ('Volvo', 'V70');
insert into auto (make, model) values ('Buick', 'LeSabre');
insert into auto (make, model) values ('Hyundai', 'Veloster');
insert into auto (make, model) values ('Honda', 'CR-V');
insert into auto (make, model) values ('Saab', '9-7X');
insert into auto (make, model) values ('GMC', '1500 Club Coupe');
insert into auto (make, model) values ('Volkswagen', 'Jetta');
insert into auto (make, model) values ('Studebaker', 'Avanti');
insert into auto (make, model) values ('Chevrolet', 'Express 3500');
insert into auto (make, model) values ('Pontiac', 'G5');
insert into auto (make, model) values ('Mercury', 'Tracer');
insert into auto (make, model) values ('Mercedes-Benz', 'SL-Class');
insert into auto (make, model) values ('Mitsubishi', 'Eclipse');
insert into auto (make, model) values ('Ford', 'Ranger');
insert into auto (make, model) values ('Chevrolet', 'Caprice');
insert into auto (make, model) values ('GMC', 'Yukon');
insert into auto (make, model) values ('Chevrolet', 'Blazer');
insert into auto (make, model) values ('Chevrolet', 'Corvette');
insert into auto (make, model) values ('Plymouth', 'Laser');
insert into auto (make, model) values ('Toyota', '4Runner');
insert into auto (make, model) values ('Pontiac', 'Grand Prix');
insert into auto (make, model) values ('Porsche', '928');
insert into auto (make, model) values ('Honda', 'CR-X');
insert into auto (make, model) values ('Honda', 'CR-V');
insert into auto (make, model) values ('BMW', '545');
insert into auto (make, model) values ('Porsche', 'Cayman');
insert into auto (make, model) values ('Buick', 'Park Avenue');
insert into auto (make, model) values ('Volkswagen', 'Cabriolet');
insert into auto (make, model) values ('Dodge', 'Dakota Club');
insert into auto (make, model) values ('Isuzu', 'i-Series');
insert into auto (make, model) values ('Ford', 'Focus');
insert into auto (make, model) values ('Jeep', 'Grand Cherokee');
insert into auto (make, model) values ('Ford', 'Escort ZX2');
insert into auto (make, model) values ('Dodge', 'Avenger');
insert into auto (make, model) values ('Mercury', 'Villager');
insert into auto (make, model) values ('BMW', 'M6');
insert into auto (make, model) values ('Buick', 'Century');
insert into auto (make, model) values ('Dodge', 'D150');
insert into auto (make, model) values ('Chevrolet', 'Express 2500');
insert into auto (make, model) values ('Toyota', 'Camry');
insert into auto (make, model) values ('Isuzu', 'Rodeo');
insert into auto (make, model) values ('Nissan', 'Maxima');
insert into auto (make, model) values ('Ford', 'Crown Victoria');
insert into auto (make, model) values ('Citroën', 'CX');
insert into auto (make, model) values ('Volvo', 'C70');
insert into auto (make, model) values ('Chevrolet', 'Silverado 3500');
insert into auto (make, model) values ('Chevrolet', 'Suburban 1500');
insert into auto (make, model) values ('Ford', 'F450');
insert into auto (make, model) values ('Ford', 'Mustang');
insert into auto (make, model) values ('Mercury', 'Mariner');
insert into auto (make, model) values ('Mitsubishi', 'Expo LRV');
insert into auto (make, model) values ('Acura', 'RL');
insert into auto (make, model) values ('Mitsubishi', 'Tredia');
insert into auto (make, model) values ('Chevrolet', 'Silverado');
insert into auto (make, model) values ('Dodge', 'Ram 1500 Club');
insert into auto (make, model) values ('Mercedes-Benz', 'S-Class');
insert into auto (make, model) values ('Mercedes-Benz', 'E-Class');
insert into auto (make, model) values ('Audi', 'A8');
insert into auto (make, model) values ('Subaru', 'Legacy');
insert into auto (make, model) values ('Dodge', 'Neon');
insert into auto (make, model) values ('Chevrolet', 'Avalanche 2500');
insert into auto (make, model) values ('Toyota', 'Sequoia');
insert into auto (make, model) values ('Ford', 'Courier');
insert into auto (make, model) values ('Chevrolet', 'Corvette');
insert into auto (make, model) values ('GMC', 'Yukon');
insert into auto (make, model) values ('Aston Martin', 'DB9 Volante');
insert into auto (make, model) values ('Mazda', 'Miata MX-5');
insert into auto (make, model) values ('Lincoln', 'Continental');
insert into auto (make, model) values ('Acura', 'MDX');
insert into auto (make, model) values ('Cadillac', 'DeVille');
insert into auto (make, model) values ('Jaguar', 'X-Type');
insert into auto (make, model) values ('Dodge', 'Daytona');
insert into auto (make, model) values ('Mercedes-Benz', 'W126');
insert into auto (make, model) values ('Scion', 'xD');
insert into auto (make, model) values ('Oldsmobile', 'Bravada');
insert into auto (make, model) values ('Toyota', 'Sequoia');
insert into auto (make, model) values ('Ford', 'E350');
insert into auto (make, model) values ('Mitsubishi', 'Galant');
insert into auto (make, model) values ('Maserati', '228');
insert into auto (make, model) values ('Eagle', 'Talon');
insert into auto (make, model) values ('Chevrolet', 'Express 1500');
insert into auto (make, model) values ('Dodge', 'Ram Van 2500');
insert into auto (make, model) values ('Lotus', 'Evora');
insert into auto (make, model) values ('Chevrolet', 'Corsica');
insert into auto (make, model) values ('Chrysler', '200');
insert into auto (make, model) values ('Audi', 'A3');
insert into auto (make, model) values ('Maserati', 'GranTurismo');
insert into auto (make, model) values ('Kia', 'Amanti');
insert into auto (make, model) values ('Mercury', 'Tracer');
insert into auto (make, model) values ('Kia', 'Sportage');
insert into auto (make, model) values ('Toyota', 'Avalon');
insert into auto (make, model) values ('Nissan', '200SX');
insert into auto (make, model) values ('Volvo', 'S60');
insert into auto (make, model) values ('Mitsubishi', 'Mirage');
insert into auto (make, model) values ('Suzuki', 'Daewoo Lacetti');
insert into auto (make, model) values ('Toyota', 'Camry');
insert into auto (make, model) values ('Ford', 'Taurus');
insert into auto (make, model) values ('Oldsmobile', '98');
insert into auto (make, model) values ('Mazda', 'Protege');
insert into auto (make, model) values ('Mitsubishi', 'Cordia');
insert into auto (make, model) values ('GMC', 'Savana 1500');
insert into auto (make, model) values ('Suzuki', 'Grand Vitara');
insert into auto (make, model) values ('Buick', 'Coachbuilder');
insert into auto (make, model) values ('Chevrolet', 'Silverado 1500');
insert into auto (make, model) values ('Pontiac', 'G8');
insert into auto (make, model) values ('Ford', 'Edge');
insert into auto (make, model) values ('Ford', 'F-Series');
insert into auto (make, model) values ('Mercedes-Benz', 'W201');
insert into auto (make, model) values ('Oldsmobile', 'Bravada');
insert into auto (make, model) values ('Toyota', 'Supra');
insert into auto (make, model) values ('Chrysler', '300');
insert into auto (make, model) values ('Ford', 'Thunderbird');
insert into auto (make, model) values ('Nissan', 'Altima');
insert into auto (make, model) values ('Toyota', 'RAV4');
insert into auto (make, model) values ('Pontiac', 'Firefly');
insert into auto (make, model) values ('Lincoln', 'MKX');
insert into auto (make, model) values ('Mazda', 'Mazda3');
insert into auto (make, model) values ('BMW', '7 Series');
insert into auto (make, model) values ('BMW', 'M6');
insert into auto (make, model) values ('Mitsubishi', 'Montero');
insert into auto (make, model) values ('Chevrolet', 'Camaro');
insert into auto (make, model) values ('Mitsubishi', 'Chariot');
insert into auto (make, model) values ('Dodge', 'D150');
insert into auto (make, model) values ('Acura', 'TL');
insert into auto (make, model) values ('Infiniti', 'M');
insert into auto (make, model) values ('Chevrolet', 'S10');
insert into auto (make, model) values ('Lincoln', 'Continental Mark VII');
insert into auto (make, model) values ('Mercedes-Benz', 'E-Class');
insert into auto (make, model) values ('Morgan', 'Aero 8');
insert into auto (make, model) values ('Aston Martin', 'V12 Vantage');
insert into auto (make, model) values ('Subaru', 'Impreza');
insert into auto (make, model) values ('Ford', 'E-Series');
insert into auto (make, model) values ('Ford', 'Econoline E350');
insert into auto (make, model) values ('Subaru', 'Alcyone SVX');

--changeset yura:2020-12-20-insert-table-violation/8
insert into violation (violation_name) 
values
('Превышение скорости'),
('Проезд на красный свет'),
('Не пристегнут ремень безопасности'),
('Вождение в алкогольном опьянении'),
('Перевозка детей без удерживающего устройства'),
('Остановка в неположенном месте'),
('Стоянка в неположенном месте'),
('Не уступил дорогу пешеходу');

--changeset yura:2020-12-20-insert-table-car/9
insert into car (auto_id, number_car) 
values
(56, '3465 AA 7'),
(82, '7770 BC 2'),
(23, '2317 IB 3'),
(436, '9387 EE 5'),
(300, '0001 AA 5'),
(44, '2323 AE 1'),
(135, '9026 II 4'),
(99, '0489 AI 7');

--changeset yura:2020-12-20-update-table-person/10
update person set car_id = 1 where id = 3;
update person set car_id = 2 where id = 2;
update person set car_id = 3 where id = 234;
update person set car_id = 4 where id = 6;
update person set car_id = 5 where id = 398;
update person set car_id = 6 where id = 34;
update person set car_id = 7 where id = 94;
update person set car_id = 8 where id = 456;

--changeset yura:2020-12-20-insert-table-result-table/11
insert into result_table (person_id, violation_id) 
values
(2, 3),
(2, 8),
(2, 8),
(234, 1),
(6, 7),
(6, 2),
(398, 4),
(398, 1),
(398, 1),
(398, 2),
(34, 4),
(94, 2),
(94, 7),
(94, 5),
(456, 3);

--changeset yura:2020-12-20-create-schema-stage/12
CREATE SCHEMA stage;

--changeset yura:2020-12-20-create-table-violation-for-stage/13
create table stage.violation (
id int,
violation_name varchar(100),
PRIMARY KEY(id)
);

--changeset yura:2020-12-20-create-table-auto-for-stage/14
create table stage.auto (
id int,
make varchar(20),
model varchar(20),
primary key(id)
);

--changeset yura:2020-12-20-create-table-car-for-stage/15
create table stage.car (
id int,
auto_id int,
number_car varchar(10),
PRIMARY KEY(id),
FOREIGN KEY(auto_id) REFERENCES auto(id)
);

--changeset yura:2020-12-20-create-table-person-for-stage/16
create table stage.person (
id int,
first_name varchar(20),
last_name varchar(20),
phone_number varchar(20),
car_id int unique,
PRIMARY KEY(id),
FOREIGN KEY(car_id) references car(id)
);

--changeset yura:2020-12-20-create-table-result-table-for-stage/17
create table stage.result_table (
id int,
person_id int,
violation_id int,
PRIMARY KEY(id),
FOREIGN KEY(person_id) REFERENCES person(id),
FOREIGN KEY(violation_id) REFERENCES violation(id)
);

--changeset yura:2020-12-20-create-procedure-for-stage-violation/18 endDelimiter:#
TRUNCATE TABLE stage.violation;

create function stage_violation_load() returns void
language plpgsql
 AS
    $$
    begin
    insert into stage.violation (id, violation_name)
    select id, violation_name from public.violation;
    end;
    $$;
--#

--changeset yura:2020-12-20-create-procedure-for-stage-auto/19 endDelimiter:#
TRUNCATE TABLE stage.auto;

create function stage_auto_load() returns void
language plpgsql
 AS
    $$
    begin
    insert into stage.auto (id, make, model)
    select id, make, model from public.auto;
    end;
    $$;
--#

--changeset yura:2020-12-20-create-procedure-for-stage-car/20 endDelimiter:#
TRUNCATE TABLE stage.car;

create function stage_car_load() returns void
language plpgsql
 AS
    $$
    begin
    insert into stage.car (id,auto_id, number_car)
    select id, auto_id, number_car from public.car;
    end;
    $$;
--#

--changeset yura:2020-12-20-create-procedure-for-stage-person/21 endDelimiter:#
TRUNCATE TABLE stage.person;

create function stage_person_load() returns void
language plpgsql
 AS
    $$
    begin
    insert into stage.person (id, first_name, last_name, phone_number, car_id)
    select id, first_name, last_name, phone_number, car_id from public.person;
    end;
    $$;
--#

--changeset yura:2020-12-20-create-procedure-for-stage-result-table/22 endDelimiter:#
TRUNCATE TABLE stage.result_table;

create function stage_result_table_load() returns void
language plpgsql
 AS
    $$
    begin
    insert into stage.result_table (id, person_id, violation_id)
    select id, person_id, violation_id from public.result_table;
    end;
    $$;
--#

--changeset yura:2020-12-20-select-procedure-for-car/22
select stage_car_load();

--changeset yura:2020-12-20-select-procedure-for-auto/23
select stage_auto_load();

--changeset yura:2020-12-20-select-procedure-for-violation/24
select stage_violation_load();

--changeset yura:2020-12-20-select-procedure-for-person/25
select stage_person_load();

--changeset yura:2020-12-20-select-procedure-for-result-table/26
select stage_result_table_load();

--changeset yura:2020-12-25-create-schema-data-mart/27
create schema data_mart;

--changeset yura:2020-12-25-create-table-person-for-data-mart/28
create table data_mart.person (
id int,
first_name varchar(20),
last_name varchar(20),
phone_number varchar(20),
car_id int unique,
created_at timestamp,
updated_at timestamp,
PRIMARY KEY(id),
FOREIGN KEY(car_id) references car(id)
);

--changeset yura:2020-12-25-create-procedure-for-data-mart-person/29 endDelimiter:#
create function data_mart_person_load() returns void
language plpgsql
 AS
    $$
    begin
    insert into data_mart.person (id, first_name, last_name, phone_number, car_id, created_at)
    select id, first_name, last_name, phone_number, car_id, now() from stage.person sp
    where sp.id not in (select id from data_mart.person);
    end;
    $$;
--#

--changeset yura:2020-12-26-select-procedure-for-data-mart-person/30
select data_mart_person_load();
