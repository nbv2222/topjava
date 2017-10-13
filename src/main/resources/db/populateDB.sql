DELETE FROM user_roles;
DELETE FROM meals;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password');

INSERT INTO users (name, email, password)
VALUES ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id) VALUES
  ('ROLE_USER', 100000),
  ('ROLE_ADMIN', 100001);
INSERT INTO meals (date_time, description,calories, user_id) VALUES
  (timestamp '2015-06-01 14:00','user lunch', 510,100000),
  (timestamp '2015-06-01 21:00', 'admin diner', 1000, 100001)
  ;
--   ('beakfast', 300,100001);
