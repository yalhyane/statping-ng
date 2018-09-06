INSERT INTO core (name,description,config,api_key,api_secret,style,footer,domain,version,migration_id,use_cdn) VALUES ('Awesome Status','This is from the seed file!','config.yml','d2fead3e459bd14f570cf08527175b88b32d7faa','e351393306ea245de5f9588cbe8627c74db007c6','','Created by Hunter Long','DEV','',0,false);
INSERT INTO services (name,domain,check_type,method,port,expected,expected_status,check_interval,post_data,order_id,timeout,created_at) VALUES
 ('Google','https://google.com','http','GET',0,'',200,10,'',0,10,'2018-08-31 10:42:08.76390584-07:00'),
 ('Statup Github','https://github.com/hunterlong/statup','http','GET',0,'',200,30,'',0,20,'2018-08-31 10:42:08.764977938-07:00'),
 ('JSON Users Test','https://jsonplaceholder.typicode.com/users','http','GET',0,'',200,60,'',0,30,'2018-08-31 10:42:08.765794226-07:00'),
 ('JSON API Tester','https://jsonplaceholder.typicode.com/posts','http','POST',0,'(title)": "((\\"|[statup])*)"',201,30,'{ "title": "statup", "body": "bar", "userId": 19999 }',0,30,'2018-08-31 10:42:08.766542311-07:00'),
 ('Google DNS','8.8.8.8','tcp','',53,'',0,20,'',0,120,'2018-08-31 10:42:08.767327346-07:00'),
 ('The Bravery - An Honest Mistake','https://www.youtube.com/watch?v=O8vzbezVru4','http','GET',0,'',0,30,'',0,15,'2018-08-31 10:42:14.201305666-07:00'),
 ('Upper.io','https://upper.io/db.v3/','http','GET',0,'',0,30,'',0,15,'2018-08-31 10:42:14.201305666-07:00'),
 ('CoinApp Status','https://status.coinapp.io','http','GET',0,'',200,1,'',0,30,'2018-08-31 10:42:16.097416218-07:00'),
 ('Demo Page','https://demo.statup.io','http','GET',0,'',200,2,'',0,30,'2018-08-31 10:42:16.360051225-07:00'),
 ('Golang','https://golang.org','http','GET',0,'',200,3,'',0,30,'2018-08-31 10:42:16.923478722-07:00'),
 ('Github','https://github.com/hunterlong','http','GET',0,'',200,4,'',0,30,'2018-08-31 10:42:17.075544885-07:00'),
 ('Santa Monica','https://www.santamonica.com','http','GET',0,'',200,5,'',0,30,'2018-08-31 10:42:17.946947674-07:00'),
 ('Oeschs Die Dritten','https://www.oeschs-die-dritten.ch/en/','http','GET',0,'',200,6,'',0,30,'2018-08-31 10:42:18.083709297-07:00'),
 ('EtherScan.io','https://etherscan.io','http','GET',0,'',200,7,'',0,30,'2018-08-31 10:42:20.020969513-07:00'),
 ('Test Service 7','https://www.youtube.com/watch?v=ipvEIZMMILA','http','GET',0,'',200,8,'',0,30,'2018-08-31 10:42:20.50135711-07:00'),
 ('Test Service 8','https://www.youtube.com/watch?v=UdaYVxYF1Ok','http','GET',0,'',200,9,'',0,30,'2018-08-31 10:42:20.651218082-07:00'),
 ('Test Service 9','https://www.youtube.com/watch?v=yydZbVoCbn0&t=870s','http','GET',0,'',200,10,'',0,30,'2018-08-31 10:42:20.725479695-07:00'),
 ('Failing URL','http://failingdomainsarenofunatall.com','http','GET',0,'',200,11,'',0,30,'2018-08-31 10:42:20.799471402-07:00');
INSERT INTO users (username,password,email,api_key,api_secret,administrator,created_at) VALUES
 ('admin','$2a$14$Aye3yHae0ml6WRtvdgkRnO19OFze0IKF6IOHrdLpETtwLjnPelMUm','info@statup.io','27aa701119fb561d734eb4469cf13ba2550007e2','29de07014d32fbbbb80053ef3c19b464b2b72f64',true,'2018-08-31 10:42:07.684406458-07:00');
INSERT INTO hits (service,latency,created_at) VALUES
 (5,0.006504081,'2018-08-29 10:42:08.779875117-07:00'),
 (3,0.202164333,'2018-08-29 10:42:08.977187173-07:00'),
 (4,0.376675172,'2018-08-29 10:42:09.151858662-07:00'),
 (1,0.413912204,'2018-08-29 10:42:09.188850317-07:00'),
 (1,0.473912204,'2018-08-29 10:42:10.118850317-07:00'),
 (2,0.528427935,'2018-08-29 10:42:09.310642068-07:00'),
 (6,0.11930188,'2018-08-29 10:42:14.133392018-07:00'),
 (7,0.001062722,'2018-08-29 10:42:14.148258553-07:00'),
 (7,0.004046882,'2018-08-29 10:42:14.156087817-07:00'),
 (6,0.063360069,'2018-08-29 10:42:14.205383358-07:00'),
 (8,0.168951416,'2018-08-29 10:42:16.346340211-07:00'),
 (8,0.069032763,'2018-08-29 10:42:16.421634189-07:00'),
 (9,0.47712966,'2018-08-29 10:42:16.91309317-07:00'),
 (10,0.104510482,'2018-08-29 10:42:17.065673146-07:00'),
 (10,0.062536146,'2018-08-29 10:42:17.134754949-07:00'),
 (9,0.352823197,'2018-08-29 10:42:17.272174866-07:00'),
 (8,0.38226374,'2018-08-29 10:42:17.738731999-07:00'),
 (11,0.857324393,'2018-08-29 10:42:17.939738264-07:00'),
 (12,0.113320285,'2018-08-29 10:42:18.073586363-07:00'),
 (12,0.038532321,'2018-08-29 10:42:18.119730063-07:00'),
 (8,0.123430059,'2018-08-29 10:42:18.479407581-07:00'),
 (11,0.625290389,'2018-08-29 10:42:18.5715553-07:00'),
 (1,0.091823417,'2018-08-29 10:42:18.868788983-07:00'),
 (9,0.246651097,'2018-08-29 10:42:19.165697332-07:00'),
 (8,0.222901604,'2018-08-29 10:42:19.57929225-07:00'),
 (13,1.600367041,'2018-08-29 10:42:20.010203546-07:00'),
 (10,0.050076397,'2018-08-29 10:42:20.12391038-07:00'),
 (14,0.460363958,'2018-08-29 10:42:20.495937751-07:00'),
 (8,0.252590543,'2018-08-29 10:42:20.609139136-07:00'),
 (15,0.144109113,'2018-08-29 10:42:20.64756516-07:00'),
 (15,0.059993314,'2018-08-29 10:42:20.710322678-07:00'),
 (16,0.058810662,'2018-08-29 10:42:20.712087274-07:00'),
 (17,0.061824594,'2018-08-29 10:42:20.791266761-07:00'),
 (16,0.074584583,'2018-08-29 10:42:20.797581163-07:00'),
 (17,0.057086551,'2018-08-29 10:42:20.854020864-07:00'),
 (5,0.006504081,'2018-08-30 10:42:08.779875117-07:00'),
 (3,0.202164333,'2018-08-30 10:42:08.977187173-07:00'),
 (4,0.376675172,'2018-08-30 10:42:09.151858662-07:00'),
 (1,0.413912204,'2018-08-30 10:42:09.188850317-07:00'),
 (2,0.528427935,'2018-08-30 10:42:09.310642068-07:00'),
 (6,0.11930188,'2018-08-30 10:42:14.133392018-07:00'),
 (7,0.001062722,'2018-08-30 10:42:14.148258553-07:00'),
 (7,0.004046882,'2018-08-30 10:42:14.156087817-07:00'),
 (6,0.063360069,'2018-08-30 10:42:14.205383358-07:00'),
 (8,0.168951416,'2018-08-30 10:42:16.346340211-07:00'),
 (8,0.069032763,'2018-08-30 10:42:16.421634189-07:00'),
 (9,0.47712966,'2018-08-30 10:42:16.91309317-07:00'),
 (10,0.104510482,'2018-08-30 10:42:17.065673146-07:00'),
 (10,0.062536146,'2018-08-30 10:42:17.134754949-07:00'),
 (9,0.352823197,'2018-08-30 10:42:17.272174866-07:00'),
 (8,0.38226374,'2018-08-30 10:42:17.738731999-07:00'),
 (11,0.857324393,'2018-08-30 10:42:17.939738264-07:00'),
 (12,0.113320285,'2018-08-30 10:42:18.073586363-07:00'),
 (12,0.038532321,'2018-08-30 10:42:18.119730063-07:00'),
 (8,0.123430059,'2018-08-30 10:42:18.479407581-07:00'),
 (11,0.625290389,'2018-08-30 10:42:18.5715553-07:00'),
 (1,0.091823417,'2018-08-30 10:42:18.868788983-07:00'),
 (9,0.246651097,'2018-08-30 10:42:19.165697332-07:00'),
 (8,0.222901604,'2018-08-30 10:42:19.57929225-07:00'),
 (13,1.600367041,'2018-08-30 10:42:20.010203546-07:00'),
 (10,0.050076397,'2018-08-30 10:42:20.12391038-07:00'),
 (14,0.460363958,'2018-08-30 10:42:20.495937751-07:00'),
 (8,0.252590543,'2018-08-30 10:42:20.609139136-07:00'),
 (15,0.144109113,'2018-08-30 10:42:20.64756516-07:00'),
 (15,0.059993314,'2018-08-30 10:42:20.710322678-07:00'),
 (16,0.058810662,'2018-08-30 10:42:20.712087274-07:00'),
 (17,0.061824594,'2018-08-30 10:42:20.791266761-07:00'),
 (16,0.074584583,'2018-08-30 10:42:20.797581163-07:00'),
 (17,0.057086551,'2018-08-30 10:42:20.854020864-07:00'),
 (5,0.006504081,'2018-08-31 10:42:08.779875117-07:00'),
 (3,0.202164333,'2018-08-31 10:42:08.977187173-07:00'),
 (4,0.376675172,'2018-08-31 10:42:09.151858662-07:00'),
 (1,0.413912204,'2018-08-31 10:42:09.188850317-07:00'),
 (2,0.528427935,'2018-08-31 10:42:09.310642068-07:00'),
 (6,0.11930188,'2018-08-31 10:42:14.133392018-07:00'),
 (7,0.001062722,'2018-08-31 10:42:14.148258553-07:00'),
 (7,0.004046882,'2018-08-31 10:42:14.156087817-07:00'),
 (6,0.063360069,'2018-08-31 10:42:14.205383358-07:00'),
 (8,0.168951416,'2018-08-31 10:42:16.346340211-07:00'),
 (8,0.069032763,'2018-08-31 10:42:16.421634189-07:00'),
 (9,0.47712966,'2018-08-31 10:42:16.91309317-07:00'),
 (10,0.104510482,'2018-08-31 10:42:17.065673146-07:00'),
 (10,0.062536146,'2018-08-31 10:42:17.134754949-07:00'),
 (9,0.352823197,'2018-08-31 10:42:17.272174866-07:00'),
 (8,0.38226374,'2018-08-31 10:42:17.738731999-07:00'),
 (11,0.857324393,'2018-08-31 10:42:17.939738264-07:00'),
 (12,0.113320285,'2018-08-31 10:42:18.073586363-07:00'),
 (12,0.038532321,'2018-08-31 10:42:18.119730063-07:00'),
 (8,0.123430059,'2018-08-31 10:42:18.479407581-07:00'),
 (11,0.625290389,'2018-08-31 10:42:18.5715553-07:00'),
 (1,0.091823417,'2018-08-31 10:42:18.868788983-07:00'),
 (9,0.246651097,'2018-08-31 10:42:19.165697332-07:00'),
 (8,0.222901604,'2018-08-31 10:42:19.57929225-07:00'),
 (13,1.600367041,'2018-08-31 10:42:20.010203546-07:00'),
 (10,0.050076397,'2018-08-31 10:42:20.12391038-07:00'),
 (14,0.460363958,'2018-08-31 10:42:20.495937751-07:00'),
 (8,0.252590543,'2018-08-31 10:42:20.609139136-07:00'),
 (15,0.144109113,'2018-08-31 10:42:20.64756516-07:00'),
 (15,0.059993314,'2018-08-31 10:42:20.710322678-07:00'),
 (16,0.058810662,'2018-08-31 10:42:20.712087274-07:00'),
 (17,0.061824594,'2018-08-31 10:42:20.791266761-07:00'),
 (16,0.074584583,'2018-08-31 10:42:20.797581163-07:00'),
 (17,0.057086551,'2018-08-31 10:42:20.854020864-07:00');
INSERT INTO failures (issue,method,service,created_at) VALUES
 ('HTTP Status Code 200 did not match 0','',18,'2018-08-28 10:42:14.271162743-07:00'),
 ('HTTP Status Code 200 did not match 0','',6,'2018-08-28 10:42:14.271162743-07:00'),
 ('HTTP Status Code 200 did not match 0','',6,'2018-08-29 10:42:14.271162743-07:00'),
 ('HTTP Status Code 200 did not match 0','',6,'2018-08-30 10:42:14.271162743-07:00'),
 ('Incorrect Response','',1,'2018-08-31 10:40:14.272209564-07:00'),
 ('HTTP Status Code 200 did not match 0','',6,'2018-08-31 10:42:14.271162743-07:00'),
 ('HTTP Status Code 200 did not match 0','',6,'2018-08-31 10:42:14.272209564-07:00'),
 ('HTTP Status Code 200 did not match 0','',18,'2018-08-31 10:42:14.271162743-07:00');
INSERT INTO communication (id,method,host,port,username,password,var1,var2,api_key,api_secret,enabled,removable,limits,created_at) VALUES
 (1,'email','smtp.emailer.com',587,'exampleuser','password123','info@betatude.com','sendto@gmail.com','','',true,false,7,'2018-08-31 10:42:15.000829706-07:00'),
 (2,'slack','https://webhooksurl.slack.com/***',0,'','','','','','',false,false,3,'2018-08-31 10:42:08.775366824-07:00'),
 (3,'twilio','',0,'','','','','','',false,false,3,'2018-08-31 10:42:08.776944923-07:00');
