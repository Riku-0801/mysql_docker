create database kadai;

use kadai;

create table 部門 (
  部門番号 int not null auto_increment,
  部門名 varchar(255) not null,
  primary key (部門番号)
);

create table 部品 (
  部品番号 int not null auto_increment,
  部品名 varchar(255) not null,
  primary key (部品番号)
);

create table 従業員 (
  従業員番号 int not null auto_increment,
  部門番号 int not null,
  氏名 varchar(255) not null,
  住所 varchar(255) not null,
  職級 int not null,
  primary key (従業員番号),
  foreign key (部門番号) references 部門(部門番号)
);

create table 業者 (
  業者番号 int not null auto_increment,
  業者名 varchar(255) not null,
  住所 varchar(255) not null,
  電話番号 varchar(255) not null,
  primary key (業者番号)
);

create table 供給 (
  部門番号 int not null,
  部品番号 int not null,
  業者番号 int not null,
  単価 int not null,
  数量 int not null,
  primary key (部門番号, 部品番号, 業者番号),
    foreign key (部門番号) references 部門(部門番号),
    foreign key (部品番号) references 部品(部品番号),
    foreign key (業者番号) references 業者(業者番号)
);

insert into 部門 (部門名) values ('営業１');
insert into 部門 (部門名) values ('営業２');
insert into 部門 (部門名) values ('営業３');

insert into 部品 (部品名) values ('グラフィックボード A');
insert into 部品 (部品名) values ('LAN ボード B');
insert into 部品 (部品名) values ('CPU C');
insert into 部品 (部品名) values ('メモリ D');

insert into 従業員 (部門番号, 氏名, 住所, 職級) values (2, '佐藤健太', '東海市', 3);
insert into 従業員 (部門番号, 氏名, 住所, 職級) values (1, '鈴木裕子', '名古屋市', 1);
insert into 従業員 (部門番号, 氏名, 住所, 職級) values (2, '田中誠', '豊田市', 1);
insert into 従業員 (部門番号, 氏名, 住所, 職級) values (2, '高橋愛', '桑名市', 2);
insert into 従業員 (部門番号, 氏名, 住所, 職級) values (1, '渡辺大輔', '一宮市', 3);
insert into 従業員 (部門番号, 氏名, 住所, 職級) values (3, '伊藤拓也', '岡崎市', 3);
insert into 従業員 (部門番号, 氏名, 住所, 職級) values (3, '山本恵', '岐阜市', 5);
insert into 従業員 (部門番号, 氏名, 住所, 職級) values (1, '中村直樹', '日進市', 3);
insert into 従業員 (部門番号, 氏名, 住所, 職級) values (1, '斎藤麻美', '名古屋市', 1);
insert into 従業員 (部門番号, 氏名, 住所, 職級) values (3, '山田一郎', '春日井市', 5);

insert into 業者 (業者名, 住所, 電話番号) values ('株式名大エレクトロニクス', '名古屋市', '123-456-789');
insert into 業者 (業者名, 住所, 電話番号) values ('愛知電気', '名古屋市', '234-567-890');
insert into 業者 (業者名, 住所, 電話番号) values ('PC パーツ岐阜', '岐阜市', '345-678-901');

insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (1, 1, 1, 25000, 1000);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (1, 1, 2, 20000, 200);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (1, 2, 1, 850, 500);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (1, 2, 3, 800, 1200);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (2, 1, 1, 24980, 800);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (2, 1, 3, 22000, 700);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (2, 3, 1, 11500, 1000);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (2, 4, 1, 5000, 100);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (2, 4, 2, 4980, 10);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (2, 4, 3, 5060, 500);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (3, 1, 1, 25000, 2000);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (3, 2, 2, 880, 100);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (3, 2, 3, 820, 200);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (3, 3, 1, 11000, 1200);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (3, 3, 3, 12000, 100);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (3, 4, 1, 5000, 100);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (3, 4, 2, 5050, 200);
insert into 供給 (部門番号, 部品番号, 業者番号, 単価, 数量) values (3, 4, 3, 5100, 2000);
