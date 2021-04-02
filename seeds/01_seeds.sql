INSERT INTO users (name, email, password) 
VALUES ('Chelsea Wagner', 'chelseawagner@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Ryan Rice', 'ryanrice@guess.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('John Smith', 'johnsmith@fake.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces,number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Beach House', 'text', 'url', 'url', 300, 2, 2, 2, 'Canada', '1204 Beach Ave', 'Vancouver', 'BC', 'V6E 1V3', TRUE),
(2, 'Goat House', 'text', 'url', 'url', 30, 10, 0, 5, 'Canada', '45th W Goat Trail', 'Claresholm', 'AB', 'T0L 0T0', TRUE),
(1, 'Tent on the Ocean', 'text', 'url', 'url', 3, 1, 1, 2, 'Canada', '172 Lobster Lane', 'Tangier', 'NS', 'B0J 3H0', TRUE);

INSERT INTO reservations (guest_id, property_id, start_date, end_date)
VALUES (2, 1, '2018-09-11', '2018-09-26'),
(1, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (2, 1, 1, 5, 'message'),
(1, 2, 2, 1, 'message'),
(3, 3, 3, 3, 'message');