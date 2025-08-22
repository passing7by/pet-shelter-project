-- author 테이블 더미 데이터
INSERT INTO `author` (`author_id`, `author_name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- member 테이블 더미 데이터 
INSERT INTO `member` (`member_id`, `username`, `password`, `name`, `gender`, `age`, `email`, `phone`, `has_pet`, `account_non_expired`) VALUES
(1, 'user01', 'qtQVpzxM7x75SlwAsmQrVxo+VJRTYyitlg22GIm9k2g=', '김지남', 'M', 28, 'jinam@example.com', '010-1234-5678', 1, 1),
(2, 'user02', 'dkMfrIoYckGvjz83FW3rlHMvUvtF6wfsT0YgUb2C8YM=', '박서준', 'F', 32, 'seojun@example.com', '010-8765-4321', 0, 0),
(3, 'admin01', 'CHbfym1v7fmbKrh7bi/tS9QFHt54qKkTW1ALLpTZm4g=', '이관리', 'M', 45, 'manager@example.com', '010-1111-2222', 1, 1);

-- member_author 테이블 더미 데이터
INSERT INTO `member_author` (`member_id`, `author_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 2);

-- pet 테이블 더미 데이터
INSERT INTO `pet` (`pet_id`, `public_number`, `public_date`, `breed`, `pet_gender`, `is_neutered`, `age`, `weight`, `feature`, `vaccination`, `is_adopted`) VALUES
(1, '2025-Gyeonggi-00123', '2025-07-15', '믹스견', 'M', 1, 2, 5.50, '사람을 잘 따르고 애교가 많음. 다른 강아지들과도 잘 어울려요.', '5종 종합백신 완료, 광견병 주사 완료', 0),
(2, '2025-Seoul-00456', '2025-08-01', '코리안숏헤어', 'F', 1, 1, 3.20, '조용하고 얌전한 성격. 혼자서도 잘 지내지만, 부르면 와서 몸을 비빕니다.', '3종 종합백신 완료', 0),
(3, '2025-Busan-00789', '2025-08-10', '골든리트리버', 'M', 0, 5, 28.70, '대형견이지만 매우 순하고 영리함. 기본적인 훈련이 되어 있습니다.', '5종 종합백신 완료', 1);

-- pet_img 테이블 더미 데이터
INSERT INTO `pet_img` (`pet_id`, `ori_name`, `saved_name`) VALUES
(1, 'dog_image_01.jpg', '20250820_dog01_random_uuid.jpg'),
(1, 'dog_image_02.png', '20250820_dog02_random_uuid.png'),
(2, 'cat_image_01.jpg', '20250820_cat01_random_uuid.jpg'),
(3, 'retriever_image_01.jpg', '20250820_retriever01_random_uuid.jpg');

-- bookmark 테이블 더미 데이터
INSERT INTO `bookmark` (`member_id`, `pet_id`) VALUES
(1, 2),
(1, 3),
(2, 1);

-- ask 테이블 더미 데이터
INSERT INTO `ask` (`member_id`, `title`, `content`, `created_at`) VALUES
(1, '입양 절차에 대해 문의합니다.', '안녕하세요. 1번 아이 입양에 관심이 있는데, 전체적인 입양 절차와 필요한 서류가 무엇인지 알 수 있을까요?', '2025-08-18 10:30:00'),
(2, '후원금 사용 내역 문의', '정기적으로 후원을 하고 있는데, 후원금이 주로 어떤 곳에 사용되는지 궁금합니다.', '2025-08-19 14:00:00');

-- donation 테이블 더미 데이터
INSERT INTO `donation` (`donation_id`, `member_id`, `pet_id`, `donation_date`, `donation_price`, `order_id`, `status`) VALUES
(NULL, 1, 3, '2024-01-10 08:30:00', 5000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2024-01-25 14:00:00', 30000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2024-01-29 19:45:00', 15000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2024-02-05 11:20:00', 50000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2024-02-18 21:00:00', 25000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2024-02-22 16:15:00', 10000, UUID(), 'COMPLETE'),
(NULL, 1, 3, '2024-03-08 09:00:00', 5000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2024-03-19 13:30:00', 40000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2024-03-27 18:00:00', 20000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2024-04-02 12:45:00', 100000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2024-04-15 22:30:00', 10000, UUID(), 'COMPLETE'),
(NULL, 3, 1, '2024-04-28 07:00:00', 30000, UUID(), 'COMPLETE'),
(NULL, 1, 2, '2024-05-06 10:10:00', 15000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2024-05-17 15:00:00', 5000, UUID(), 'COMPLETE'),
(NULL, 3, 1, '2024-05-29 20:00:00', 20000, UUID(), 'COMPLETE'),
(NULL, 1, 2, '2024-06-04 14:20:00', 50000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2024-06-16 19:00:00', 25000, UUID(), 'COMPLETE'),
(NULL, 3, 3, '2024-06-26 11:00:00', 10000, UUID(), 'COMPLETE'),
(NULL, 1, 2, '2024-07-07 09:45:00', 30000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2024-07-18 17:30:00', 5000, UUID(), 'COMPLETE'),
(NULL, 3, 3, '2024-07-28 23:00:00', 15000, UUID(), 'COMPLETE'),
(NULL, 1, 3, '2024-08-05 13:00:00', 40000, UUID(), 'COMPLETE'),
(NULL, 2, 2, '2024-08-16 18:45:00', 20000, UUID(), 'COMPLETE'),
(NULL, 3, 1, '2024-08-26 10:00:00', 10000, UUID(), 'COMPLETE'),
(NULL, 1, 2, '2024-09-03 16:00:00', 50000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2024-09-14 21:30:00', 10000, UUID(), 'COMPLETE'),
(NULL, 3, 1, '2024-09-24 12:00:00', 25000, UUID(), 'COMPLETE'),
(NULL, 1, 2, '2024-10-02 08:15:00', 5000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2024-10-13 14:00:00', 30000, UUID(), 'COMPLETE'),
(NULL, 3, 1, '2024-10-23 19:45:00', 15000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2024-11-01 11:30:00', 50000, UUID(), 'COMPLETE'),
(NULL, 2, 2, '2024-11-12 17:00:00', 20000, UUID(), 'COMPLETE'),
(NULL, 3, 3, '2024-11-22 22:00:00', 10000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2024-12-01 09:00:00', 100000, UUID(), 'COMPLETE'),
(NULL, 2, 2, '2024-12-11 15:45:00', 40000, UUID(), 'COMPLETE'),
(NULL, 3, 3, '2024-12-21 20:30:00', 5000, UUID(), 'COMPLETE'),
(NULL, 1, 3, '2024-12-25 12:00:00', 50000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2024-12-31 23:59:00', 10000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-01-02 10:00:00', 25000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2025-01-12 16:30:00', 10000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2025-01-22 21:00:00', 5000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-01-31 08:00:00', 30000, UUID(), 'COMPLETE'),
(NULL, 1, 3, '2025-02-04 13:15:00', 15000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2025-02-14 18:00:00', 50000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-02-24 10:45:00', 20000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2025-03-05 15:30:00', 10000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2025-03-16 20:00:00', 40000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-03-26 12:30:00', 5000, UUID(), 'COMPLETE'),
(NULL, 1, 3, '2025-04-03 09:15:00', 25000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2025-04-14 14:00:00', 10000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-04-24 19:30:00', 30000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2025-05-02 11:00:00', 50000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2025-05-13 16:45:00', 15000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-05-23 22:00:00', 5000, UUID(), 'COMPLETE'),
(NULL, 1, 3, '2025-06-01 13:30:00', 20000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2025-06-12 18:15:00', 50000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-06-22 10:00:00', 10000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2025-07-01 15:00:00', 30000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2025-07-11 20:30:00', 5000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-07-21 12:15:00', 25000, UUID(), 'COMPLETE'),
(NULL, 1, 3, '2025-08-01 09:30:00', 10000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2025-08-11 14:45:00', 40000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-08-21 19:00:00', 15000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2025-08-31 11:00:00', 5000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2025-09-02 16:00:00', 50000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-09-12 21:30:00', 20000, UUID(), 'COMPLETE'),
(NULL, 1, 3, '2025-09-22 13:45:00', 10000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2025-09-30 08:00:00', 30000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-10-04 12:00:00', 5000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2025-10-14 17:30:00', 25000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2025-10-24 23:00:00', 10000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-10-29 10:15:00', 40000, UUID(), 'COMPLETE'),
(NULL, 1, 3, '2025-11-06 15:00:00', 15000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2025-11-16 20:45:00', 50000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-11-26 12:00:00', 20000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2025-12-05 16:30:00', 10000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2025-12-15 22:15:00', 30000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-12-25 09:00:00', 100000, UUID(), 'COMPLETE'),
(NULL, 1, 3, '2025-12-30 14:00:00', 5000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2025-01-15 11:30:00', 15000, UUID(), 'COMPLETE'),
(NULL, 3, 2, '2025-02-10 16:45:00', 25000, UUID(), 'COMPLETE'),
(NULL, 1, 1, '2025-03-20 09:00:00', 5000, UUID(), 'COMPLETE'),
(NULL, 2, 3, '2025-04-25 18:30:00', 30000, UUID(), 'COMPLETE'),
(NULL, 3, 1, '2025-05-30 12:00:00', 10000, UUID(), 'COMPLETE'),
(NULL, 1, 2, '2025-06-18 20:15:00', 50000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2025-07-22 11:00:00', 20000, UUID(), 'COMPLETE'),
(NULL, 3, 3, '2025-08-19 13:30:00', 10000, UUID(), 'COMPLETE'),
(NULL, 1, 2, '2025-09-25 16:00:00', 40000, UUID(), 'COMPLETE'),
(NULL, 2, 1, '2025-10-28 08:00:00', 5000, UUID(), 'COMPLETE'),
(NULL, 3, 3, '2025-11-30 19:00:00', 15000, UUID(), 'COMPLETE'),
(NULL, 1, 2, '2025-12-24 10:45:00', 25000, UUID(), 'COMPLETE');
