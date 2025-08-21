/*　rolesテーブル　*/

INSERT IGNORE INTO roles(id, name) VALUES (1, 'ROLE_GENERAL');
INSERT IGNORE INTO roles(id, name) VALUES (2, 'ROLE_ADMIN');

/* INSERT IGNORE INTO で重複発生時にエラーとならず追加作業をスキップしてくれる*/

/*　usersーブル　*/
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (1, '侍 太郎', 'サムライ タロウ', '101-0022', '東京都千代田区神田練塀町300番地', '090-1234-5678', 'taro.samurai@example.com', '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, true);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (2, '侍 花子', 'サムライ ハナコ', '101-0022', '東京都千代田区神田練塀町300番地', '090-1234-5678', 'hanako.samurai@example.com', '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, true);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (3, '侍 義勝', 'サムライ ヨシカツ', '638-0644', '奈良県五條市西吉野町湯川X-XX-XX', '090-1234-5678', 'yoshikatsu.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (4, '侍 幸美', 'サムライ サチミ', '342-0006', '埼玉県吉川市南広島X-XX-XX', '090-1234-5678', 'sachimi.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (5, '侍 雅', 'サムライ ミヤビ', '527-0209', '滋賀県東近江市佐目町X-XX-XX', '090-1234-5678', 'miyabi.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (6, '侍 正保', 'サムライ マサヤス', '989-1203', '宮城県柴田郡大河原町旭町X-XX-XX', '090-1234-5678', 'masayasu.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (7, '侍 真由美', 'サムライ マユミ', '951-8015', '新潟県新潟市松岡町X-XX-XX', '090-1234-5678', 'mayumi.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (8, '侍 安民', 'サムライ ヤスタミ', '241-0033', '神奈川県横浜市旭区今川町X-XX-XX', '090-1234-5678', 'yasutami.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (9, '侍 章緒', 'サムライ アキオ', '739-2103', '広島県東広島市高屋町宮領X-XX-XX', '090-1234-5678', 'akio.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (10, '侍 祐子', 'サムライ ユウコ', '601-0761', '京都府南丹市美山町高野X-XX-XX', '090-1234-5678', 'yuko.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (11, '侍 秋美', 'サムライ アキミ', '606-8235', '京都府京都市左京区田中西春菜町X-XX-XX', '090-1234-5678', 'akimi.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (12, '侍 信平', 'サムライ シンペイ', '673-1324', '兵庫県加東市新定X-XX-XX', '090-1234-5678', 'shinpei.samurai@example.com', 'password', 1, false);

/* housesテーブル */
/* 追加課題対応のためコメントアウト
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (1, 'SAMURAIの宿', 'house01.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '073-0145', '北海道砂川市西五条南X-XX-XX', '012-345-678', '3');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (2, 'ペンション SAMURAI', 'house02.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '030-0945', '青森県青森市桜川X-XX-XX', '012-345-678', '3');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (3, 'SAMURAI荘', 'house03.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '029-5618', '岩手県和賀郡西和賀町沢内両沢X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (4, 'ゲストハウス SAMURAI', 'house04.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '989-0555', '宮城県刈田郡七ヶ宿町滝ノ上X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (5, 'SAMURAI屋', 'house05.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '018-2661', '秋田県山本郡八峰町八森浜田X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (6, '民宿 SAMURAI', 'house06.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '999-6708', '山形県酒田市泉興野X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (7, 'SAMURAIハイツ', 'house07.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '969-5147', '福島県会津若松市大戸町芦牧X-XX-XX', '012-345-678', '3');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (8, 'メゾンSAMURAI', 'house08.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '310-0021', '茨城県水戸市南町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (9, 'SAMURAIマンション', 'house09.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '323-1101', '栃木県下都賀郡藤岡町大前X-XX-XX', '012-345-678', '2');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (10, 'コーポSAMURAI', 'house10.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '370-0806', '群馬県高崎市上和田町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (11, 'SAMURAIハイム', 'house01.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '344-0125', '埼玉県春日部市飯沼X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (12, 'ヴィラSAMURAI', 'house02.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '272-0011', '千葉県市川市高谷新町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (13, 'SAMURAIパレス', 'house03.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '130-0023', '東京都墨田区立川X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (14, 'ロッジ SAMURAI', 'house04.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '240-0006', '神奈川県横浜市保土ヶ谷区星川X-XX-XX', '012-345-678', '3');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (15, 'SAMURAI館', 'house05.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '950-0201', '新潟県新潟市駒込X-XX-XX', '012-345-678', '2');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (16, 'SAMURAI山荘', 'house06.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '939-8155', '富山県富山市江本X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (17, 'SAMURAIの家', 'house07.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '929-0111', '石川県能美市吉原町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (18, '侍の宿', 'house08.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '910-2354', '福井県福井市東天田町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (19, 'ペンション 侍', 'house09.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '403-0003', '山梨県富士吉田市大明見X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (20, '侍荘', 'house10.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '395-0017', '長野県飯田市東新町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (21, 'ゲストハウス 侍', 'house01.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '509-5147', '岐阜県土岐市泉郷町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (22, '侍屋', 'house02.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '434-0002', '静岡県浜松市尾野X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (23, '民宿 侍', 'house03.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '444-3261', '愛知県豊田市東大林町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (24, '侍ハイツ', 'house04.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '510-0201', '三重県鈴鹿市稲生町X-XX-XX', '012-345-678', '3');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (25, 'メゾン侍', 'house05.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '520-2353', '滋賀県野洲市久野部X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (26, '侍マンション', 'house06.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '612-8369', '京都府京都市伏見区村上町X-XX-XX', '012-345-678', '2');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (27, 'コーポ侍', 'house07.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '578-0915', '大阪府東大阪市古箕輪X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (28, '侍ハイム', 'house08.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '655-0891', '兵庫県神戸市垂水区山手X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (29, 'ヴィラ侍', 'house09.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '630-1126', '奈良県奈良市法用町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (30, '侍パレス', 'house10.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '640-8319', '和歌山県和歌山市手平X-XX-XX', '012-345-678', '2');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (31, 'ロッジ 侍', 'house01.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '689-2203', '鳥取県東伯郡北栄町原X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (32, '侍館', 'house02.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '694-0035', '島根県大田市五十猛町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (33, '侍山荘', 'house03.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '712-8036', '岡山県倉敷市水島西弥生町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (34, '侍の家', 'house04.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '726-0011', '広島県府中市広谷町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (35, 'さむらいの宿', 'house05.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '750-0451', '山口県下関市豊田町阿座上X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (36, 'ペンション さむらい', 'house06.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '778-0004', '徳島県三好市池田町X-XX-XX', '012-345-678', '3');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (37, 'さむらい荘', 'house07.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '762-0067', '香川県坂出市瀬居町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (38, 'ゲストハウス さむらい', 'house08.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '792-0828', '愛媛県新居浜市松原町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (39, 'さむらい屋', 'house09.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '787-1323', '高知県四万十市西土佐中半X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (40, '民宿 さむらい', 'house10.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '835-0018', '福岡県みやま市瀬高町高柳X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (41, 'さむらいハイツ', 'house01.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '840-0213', '佐賀県佐賀市大和町久留間X-XX-XX', '012-345-678', '3');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (42, 'メゾンさむらい', 'house02.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '852-8104', '長崎県長崎市茂里町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (43, 'さむらいマンション', 'house03.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '863-0021', '熊本県天草市港町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (44, 'コーポさむらい', 'house04.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '872-0014', '大分県宇佐市南鶴田新田X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (45, 'さむらいハイム', 'house05.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '880-0947', '宮崎県宮崎市薫る坂X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (46, 'ヴィラさむらい', 'house06.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '895-2103', '鹿児島県薩摩郡さつま町紫尾X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (47, 'さむらいパレス', 'house07.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '904-2165', '沖縄県沖縄市宮里X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (48, 'ロッジ さむらい', 'house08.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '041-1121', '北海道亀田郡七飯町大中山X-XX-XX', '012-345-678', '2');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (49, 'さむらい館', 'house09.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '095-0019', '北海道士別市大通東X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (50, 'さむらい山荘', 'house10.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '099-0423', '北海道紋別郡遠軽町若松X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (51, 'さむらいの家', 'house01.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '089-0533', '北海道中川郡幕別町札内新北町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (52, 'サムライの宿', 'house02.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '049-3514', '北海道山越郡長万部町富野X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (53, 'ペンション サムライ', 'house03.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 8000, 4, '066-0018', '北海道千歳市旭ヶ丘X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (54, 'サムライ荘', 'house04.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 9000, 5, '003-0804', '北海道札幌市白石区菊水四条X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (55, 'ゲストハウス サムライ', 'house05.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 10000, 6, '042-0908', '北海道函館市銅山町X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (56, 'サムライ屋', 'house06.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 6000, 2, '050-0061', '北海道室蘭市八丁平X-XX-XX', '012-345-678', '1');
INSERT IGNORE INTO houses (id, name, image_name, description, price, capacity, postal_code, address, phone_number, owner_id) VALUES (57, '民宿 サムライ', 'house07.jpg', '最寄り駅から徒歩10分。自然豊かで閑静な場所にあります。長期滞在も可能です。', 7000, 3, '059-0027', '北海道登別市青葉町X-XX-XX', '012-345-678', '2');
*/

/*追加課題用*/
UPDATE houses SET owner_id = 2 WHERE id = 1;
UPDATE houses SET owner_id = 1 WHERE id = 2;
UPDATE houses SET owner_id = 3 WHERE id = 3;
UPDATE houses SET owner_id = 2 WHERE id = 4;
UPDATE houses SET owner_id = 1 WHERE id = 5;
UPDATE houses SET owner_id = 3 WHERE id = 6;
UPDATE houses SET owner_id = 1 WHERE id = 7;
UPDATE houses SET owner_id = 2 WHERE id = 8;
UPDATE houses SET owner_id = 3 WHERE id = 9;
UPDATE houses SET owner_id = 1 WHERE id = 10;
UPDATE houses SET owner_id = 2 WHERE id = 11;
UPDATE houses SET owner_id = 3 WHERE id = 12;
UPDATE houses SET owner_id = 1 WHERE id = 13;
UPDATE houses SET owner_id = 2 WHERE id = 14;
UPDATE houses SET owner_id = 3 WHERE id = 15;
UPDATE houses SET owner_id = 1 WHERE id = 16;
UPDATE houses SET owner_id = 2 WHERE id = 17;
UPDATE houses SET owner_id = 3 WHERE id = 18;
UPDATE houses SET owner_id = 1 WHERE id = 19;
UPDATE houses SET owner_id = 2 WHERE id = 20;
UPDATE houses SET owner_id = 3 WHERE id = 21;
UPDATE houses SET owner_id = 1 WHERE id = 22;
UPDATE houses SET owner_id = 2 WHERE id = 23;
UPDATE houses SET owner_id = 3 WHERE id = 24;
UPDATE houses SET owner_id = 1 WHERE id = 25;
UPDATE houses SET owner_id = 2 WHERE id = 26;
UPDATE houses SET owner_id = 3 WHERE id = 27;
UPDATE houses SET owner_id = 1 WHERE id = 28;
UPDATE houses SET owner_id = 2 WHERE id = 29;
UPDATE houses SET owner_id = 3 WHERE id = 30;
UPDATE houses SET owner_id = 1 WHERE id = 31;
UPDATE houses SET owner_id = 2 WHERE id = 32;
UPDATE houses SET owner_id = 3 WHERE id = 33;
UPDATE houses SET owner_id = 1 WHERE id = 34;
UPDATE houses SET owner_id = 2 WHERE id = 35;
UPDATE houses SET owner_id = 3 WHERE id = 36;
UPDATE houses SET owner_id = 1 WHERE id = 37;
UPDATE houses SET owner_id = 2 WHERE id = 38;
UPDATE houses SET owner_id = 3 WHERE id = 39;
UPDATE houses SET owner_id = 1 WHERE id = 40;
UPDATE houses SET owner_id = 2 WHERE id = 41;
UPDATE houses SET owner_id = 3 WHERE id = 42;
UPDATE houses SET owner_id = 1 WHERE id = 43;
UPDATE houses SET owner_id = 2 WHERE id = 44;
UPDATE houses SET owner_id = 3 WHERE id = 45;
UPDATE houses SET owner_id = 1 WHERE id = 46;
UPDATE houses SET owner_id = 2 WHERE id = 47;
UPDATE houses SET owner_id = 3 WHERE id = 48;
UPDATE houses SET owner_id = 1 WHERE id = 49;
UPDATE houses SET owner_id = 2 WHERE id = 50;
UPDATE houses SET owner_id = 3 WHERE id = 51;
UPDATE houses SET owner_id = 1 WHERE id = 52;
UPDATE houses SET owner_id = 2 WHERE id = 53;
UPDATE houses SET owner_id = 3 WHERE id = 54;
UPDATE houses SET owner_id = 1 WHERE id = 55;
UPDATE houses SET owner_id = 2 WHERE id = 56;
UPDATE houses SET owner_id = 3 WHERE id = 57;


/* reservationsテーブル */
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (1, 1, 1, '2023-04-01', '2023-04-02', 2, 6000);
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (2, 2, 1, '2023-04-01', '2023-04-02', 3, 7000);
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (3, 3, 1, '2023-04-01', '2023-04-02', 4, 8000);
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (4, 4, 1, '2023-04-01', '2023-04-02', 5, 9000);
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (5, 5, 1, '2023-04-01', '2023-04-02', 6, 10000);
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (6, 6, 1, '2023-04-01', '2023-04-02', 2, 6000);
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (7, 7, 1, '2023-04-01', '2023-04-02', 3, 7000);
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (8, 8, 1, '2023-04-01', '2023-04-02', 4, 8000);
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (9, 9, 1, '2023-04-01', '2023-04-02', 5, 9000);
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (10, 10, 1, '2023-04-01', '2023-04-02', 6, 10000);
INSERT IGNORE INTO reservations (id, house_id, user_id, checkin_date, checkout_date, number_of_people, amount) VALUES (11, 11, 1, '2023-04-01', '2023-04-02', 2, 6000);

/* faqsテーブル */
INSERT IGNORE INTO faqs (id, question, answer) VALUES (1, '人気の民宿はどこで確認できますか？', 'トップページにて予約数の多い「人気の民宿」を自動的に表示しています。ぜひご覧ください。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (2, '最近追加された民宿を見たいのですが？', 'トップページに「新着の民宿」として、最新の登録民宿が表示されます。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (3, '民宿をキーワードで探すにはどうすればよいですか？', 'トップページまたは民宿一覧ページの検索フォームにキーワードを入力して検索できます。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (4, '地域ごとの民宿はどこで探せますか？', 'トップページや一覧ページから、47都道府県ごとのエリア検索が可能です。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (5, '会員登録には何が必要ですか？', '氏名・フリガナ・郵便番号・住所・電話番号・メールアドレス・パスワードをご用意ください。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (6, '登録後に確認メールが届きません。どうすれば？', '迷惑メールフォルダをご確認ください。それでも届かない場合は、お問い合わせフォームからご連絡ください。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (7, 'ログインができません。パスワードを忘れた場合は？', 'ログインページの「パスワードをお忘れですか？」から再設定をお願いします。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (8, '会員登録しないと予約はできませんか？', 'はい、予約には会員登録とログインが必要です。未登録の方は登録をお願いします。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (9, '民宿の詳細はどこで確認できますか？', '民宿一覧や検索結果から気になる民宿をクリックすると、詳細ページで確認できます。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (10, '民宿を価格順で並べることはできますか？', '民宿一覧ページで「料金が安い順」や「新着順」で並べ替えが可能です。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (11, '検索結果が多すぎて見づらいです。どうすれば？', '検索結果は10件ずつページに分かれています。ページ下部のナビゲーションで次ページへ移動できます。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (12, '民宿の予約方法を教えてください。', 'ログイン後、民宿詳細ページの予約フォームに必要情報を入力し、予約ボタンを押してください。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (13, '決済はどのように行いますか？', '予約確認後、決済ページへ進むと、Stripeを使ったオンライン決済が可能です。クレジットカードをご用意ください。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (14, '使用可能なカードブランドを教えてください。', 'StripeではVisa、Mastercard、American Expressなど主要ブランドに対応しています。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (15, '自分の予約状況はどこで確認できますか？', 'ログイン後、「予約一覧」ページからご自身の予約履歴をご確認いただけます。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (16, '会員情報を変更したいのですが？', 'ログイン後、「会員詳細ページ」から「編集」ボタンをクリックすると変更できます。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (17, '電話番号や住所の変更はできますか？', 'はい、会員編集ページでいつでも変更可能です。変更後は必ず「保存」ボタンを押してください。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (18, 'キャンセル機能はありますか？', '現在の仕様ではオンラインでのキャンセルはできません。キャンセルをご希望の場合はお問い合わせください。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (19, '宿泊料金はどこで確認できますか？', '民宿詳細ページに、1泊あたりの料金や宿泊人数に応じた合計金額が表示されます。');
INSERT IGNORE INTO faqs (id, question, answer) VALUES (20, 'ログアウトはどこでできますか？', '画面右上のメニューから「ログアウト」リンクをクリックすることでログアウトできます。');

/* reviewsテーブル */
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (1, 1, 1, 5, '素晴らしい滞在でした。また利用したいです。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (2, 1, 2, 4, '部屋が綺麗で、快適に過ごせました。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (3, 1, 3, 4, 'アクセスが良く、観光に最適でした。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (4, 1, 4, 5, 'スタッフが親切で、気持ちよく滞在できました。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (5, 1, 5, 4, '駅から近く、便利でした。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (6, 1, 6, 5, '周辺の飲食店が充実していて、楽しめました。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (7, 1, 7, 4, '宿泊費が手頃で、コストパフォーマンスが良かったです。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (8, 1, 8, 3, '静かな環境でゆっくり休めました。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (9, 1, 9, 4, '施設内の設備が充実していました。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (10, 1, 10, 5, 'Wi-Fiが快適で助かりました。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (11, 1, 11, 4, '清潔感があり、気持ちよく滞在できました。');
INSERT IGNORE INTO reviews (id, house_id, user_id, score, content) VALUES (12, 1, 12, 5, '部屋が広く、ゆったり過ごせました。');

/* favoritesテーブル */
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (1, 1, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (2, 2, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (3, 3, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (4, 4, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (5, 5, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (6, 6, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (7, 7, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (8, 8, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (9, 9, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (10, 10, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (11, 11, 1);
INSERT IGNORE INTO favorites (id, house_id, user_id) VALUES (12, 12, 1);

/*　ownersーブル　*/
INSERT IGNORE INTO owners (id, name, furigana, postal_code, address, phone_number, email, password) VALUES (1, 'オーナー 一郎', 'オーナー イチロウ', '101-9022', '東京都千代田区神田練塀町301番地', '090-1234-5679', 'owner_ichiro@example.com', 'ichiro');
INSERT IGNORE INTO owners (id, name, furigana, postal_code, address, phone_number, email, password) VALUES (2, 'オーナー 二郎', 'オーナー ジロウ', '201-9022', '東京都千代田区神田練塀町321番地', '090-1234-5680', 'owner_jiro@example.com', 'jiro');
INSERT IGNORE INTO owners (id, name, furigana, postal_code, address, phone_number, email, password) VALUES (3, 'オーナー 三郎', 'オーナー サブロウ', '301-9022', '東京都千代田区神田練塀町331番地', '090-1234-5799', 'owner_saburo@example.com', 'saburo');





