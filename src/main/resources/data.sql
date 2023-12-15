-- inserir algumas funções
insert into tb_role (name) values ('role_user'), ('role_admin');

-- inserir alguns usuários
insert into tb_user (username, password, enabled) values
    ('usuario1', 'senha1', true),
    ('usuario2', 'senha2', true),
    ('admin', 'admin123', true);

-- associar usuários às funções
insert into tb_user_role (user_id, role_id) values
    (1, 1), -- usuário1 tem a função role_user
    (2, 1), -- usuário2 tem a função role_user
    (3, 1), -- admin tem a função role_user
    (3, 2); -- admin tem a função role_admin

-- insert 50 rows into toy table
insert into tb_toy (toy_id, user_id, name, price) values
(1,1,'teddy bear', 19.99),
(2,1,'lego set', 49.99),
(3,1,'dollhouse', 69.99),
(4,1,'action figure', 12.99),
(5,1,'board game', 29.99),
(6,1,'remote control car', 39.99),
(7,1,'puzzle', 14.99),
(8,1,'barbie doll', 24.99),
(9,1,'play-doh set', 9.99),
(10,2,'stuffed penguin', 17.99),
(11,2,'building blocks', 22.99),
(12,2,'yo-yo', 7.99),
(13,2,'art supplies', 18.99),
(14,2,'rubik''s cube', 11.99),
(15,2,'model train set', 59.99),
(16,2,'chess set', 32.99),
(17,2,'frisbee', 5.99),
(18,2,'kite', 8.99),
(19,2,'jigsaw puzzle', 16.99),
(20,2,'jump rope', 4.99),
(21,2,'play kitchen set', 34.99),
(22,2,'toy drum set', 28.99),
(23,2,'robot toy', 42.99),
(24,2,'slinky', 6.99),
(25,2,'magic kit', 26.99),
(26,2,'toy guitar', 31.99),
(27,2,'coloring book', 3.99),
(28,2,'basketball hoop', 54.99),
(29,2,'dinosaur figures', 19.99),
(30,2,'water gun', 9.99),
(31,3,'fishing game', 15.99),
(32,3,'toy telescope', 27.99),
(33,3,'bouncy ball', 2.99),
(34,3,'plush elephant', 21.99),
(35,3,'model airplane kit', 37.99),
(36,3,'soccer ball', 12.99),
(37,3,'toy truck', 16.99),
(38,3,'play tool set', 14.99),
(39,3,'bubble wand', 3.99),
(40,3,'toy bow and arrow', 18.99),
(41,3,'magnetic building blocks', 29.99),
(42,3,'foam sword', 7.99),
(43,3,'painting kit', 23.99),
(44,3,'jumping rope', 5.99),
(45,3,'toy keyboard', 26.99),
(46,3,'dress-up costume', 31.99),
(47,3,'balloon animal kit', 8.99),
(48,3,'wind-up toy', 10.99),
(49,3,'tennis ball set', 13.99),
(50,3,'plastic army men', 9.99);