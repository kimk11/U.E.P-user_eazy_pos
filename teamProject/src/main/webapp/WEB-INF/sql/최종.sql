-- --------------------------------------------------------
-- 호스트:                          kjw4968.cafe24.com
-- 서버 버전:                        5.5.5-10.1.13-MariaDB - MariaDB Server
-- 서버 OS:                        Linux
-- HeidiSQL 버전:                  8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 테이블 kjw4968의 구조를 덤프합니다. customer_cart
CREATE TABLE IF NOT EXISTS `customer_cart` (
  `customer_cart_code` varchar(50) NOT NULL COMMENT '고_고객주문_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_sales_menu_code` varchar(50) NOT NULL COMMENT '체_체인점판매메뉴_코드',
  `customer_cart_count` int(10) NOT NULL COMMENT '고_고객주문_수량',
  `customer_cart_discount` int(10) NOT NULL COMMENT '고_고객주문_할인가격',
  PRIMARY KEY (`customer_cart_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='고_주문화면(고객이핸드폰에서주문)';

-- Dumping data for table kjw4968.customer_cart: ~4 rows (대략적)
/*!40000 ALTER TABLE `customer_cart` DISABLE KEYS */;
INSERT IGNORE INTO `customer_cart` (`customer_cart_code`, `store_code`, `store_sales_menu_code`, `customer_cart_count`, `customer_cart_discount`) VALUES
	('storebasketcode001', 'store001', 'goods001', 1, 0),
	('storebasketcode002', 'store001', 'goods002', 1, 500),
	('storebasketcode003', 'store001', 'goods003', 2, 1000),
	('storebasketcode004', 'store001', 'goods002', 1, 0);
/*!40000 ALTER TABLE `customer_cart` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. customer_member
CREATE TABLE IF NOT EXISTS `customer_member` (
  `customer_id` varchar(50) NOT NULL COMMENT '통합_고객_아이디',
  `customer_pw` varchar(50) NOT NULL COMMENT '통합_고객_비밀번호',
  `customer_name` varchar(50) NOT NULL COMMENT '통합_고객_이름',
  `customer_phone` varchar(50) NOT NULL COMMENT '통합_고객_핸드폰번호',
  `customer_gender` varchar(50) NOT NULL COMMENT '통합_고객_성별',
  `customer_second_pw` varchar(50) NOT NULL COMMENT '통합_고객_2차비밀번호',
  `customer_mileage` int(10) NOT NULL COMMENT '통합_고객_마일리지',
  `customer_join_date` date NOT NULL COMMENT '통합_고객_가입날짜',
  `customer_join_time` time NOT NULL COMMENT '통합_고객_가입시간',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_고객리스트';

-- Dumping data for table kjw4968.customer_member: ~5 rows (대략적)
/*!40000 ALTER TABLE `customer_member` DISABLE KEYS */;
INSERT IGNORE INTO `customer_member` (`customer_id`, `customer_pw`, `customer_name`, `customer_phone`, `customer_gender`, `customer_second_pw`, `customer_mileage`, `customer_join_date`, `customer_join_time`) VALUES
	('cid001', 'cpw001', '정규룡', '010-3456-0001', '남', '0000', 0, '2018-09-04', '00:00:00'),
	('cid002', 'cpw002', '김진우', '010-3456-0002', '여', '0001', 0, '2018-09-04', '00:00:00'),
	('cid003', 'cpw003', '김준영', '010-3456-0003', '남', '0002', 0, '2018-09-04', '00:00:00'),
	('cid004', 'cpw004', '송유빈', '010-3456-0004', '여', '0003', 0, '2018-09-04', '00:00:00'),
	('cid005', 'cpw005', '이원상', '010-3456-0005', '남', '0004', 0, '2018-09-04', '00:00:00');
/*!40000 ALTER TABLE `customer_member` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. customer_wish_list
CREATE TABLE IF NOT EXISTS `customer_wish_list` (
  `customer_wish_code` varchar(50) NOT NULL COMMENT '고_고객즐겨찾기_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `customer_id` varchar(50) NOT NULL COMMENT '통합_고객_아이디',
  `store_sales_menu_code` varchar(50) NOT NULL COMMENT '체_체인점판매메뉴_코드',
  PRIMARY KEY (`customer_wish_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='고_고객즐겨찾기';

-- Dumping data for table kjw4968.customer_wish_list: ~0 rows (대략적)
/*!40000 ALTER TABLE `customer_wish_list` DISABLE KEYS */;
INSERT IGNORE INTO `customer_wish_list` (`customer_wish_code`, `store_code`, `customer_id`, `store_sales_menu_code`) VALUES
	('wish001', 'store001', 'id001', 'goods001');
/*!40000 ALTER TABLE `customer_wish_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_admin_member
CREATE TABLE IF NOT EXISTS `root_admin_member` (
  `root_id` varchar(50) NOT NULL COMMENT '본_관리자_아이디',
  `root_pw` varchar(50) NOT NULL COMMENT '본_관리자_비밀번호',
  `root_name` varchar(50) NOT NULL COMMENT '본_관리자_이름',
  `root_rank` varchar(50) NOT NULL COMMENT '본_관리자_직급',
  `root_level` varchar(50) NOT NULL COMMENT '본_관리자_권한',
  `root_employee_num` varchar(50) NOT NULL COMMENT '본_관리자_사원번호',
  `root_phone` varchar(50) NOT NULL COMMENT '본_관리자_핸드폰번호',
  `root_licensee` varchar(50) NOT NULL COMMENT '본_관리자_회사사업자번호',
  `root_join_date` date NOT NULL COMMENT '본_관리자_가입날짜',
  `root_join_time` time NOT NULL COMMENT '본_관리자_가입시간',
  PRIMARY KEY (`root_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='본_관리자사이트 회원';

-- Dumping data for table kjw4968.root_admin_member: ~5 rows (대략적)
/*!40000 ALTER TABLE `root_admin_member` DISABLE KEYS */;
INSERT IGNORE INTO `root_admin_member` (`root_id`, `root_pw`, `root_name`, `root_rank`, `root_level`, `root_employee_num`, `root_phone`, `root_licensee`, `root_join_date`, `root_join_time`) VALUES
	('id001', 'pw001', '홍01', '', '과장', 'A01001', '010-1234-1234', '111-11-11111', '2018-09-06', '00:00:00'),
	('id002', 'pw002', '홍02', '', '부장', 'A01002', '010-1234-1235', '111-11-11111', '2018-09-06', '00:00:00'),
	('id003', 'pw003', '홍03', '', '과장', 'A01003', '010-1234-1236', '111-11-11111', '2018-09-06', '00:00:00'),
	('id004', 'pw004', '홍04', '', '이사', 'A01004', '010-1234-1237', '111-11-11111', '2018-09-06', '00:00:00'),
	('id005', 'pw005', '홍05', '', '팀장', 'A01005', '010-1234-1238', '111-11-11111', '2018-09-06', '00:00:00');
/*!40000 ALTER TABLE `root_admin_member` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_board_event
CREATE TABLE IF NOT EXISTS `root_board_event` (
  `root_board_event_code` varchar(50) NOT NULL COMMENT '본_게시판_이벤트_코드',
  `root_board_event_writer` varchar(50) NOT NULL COMMENT '본_게시판_이벤트_작성자',
  `root_board_event_title` varchar(50) NOT NULL COMMENT '본_게시판_이벤트_제목',
  `root_board_event_content` text NOT NULL COMMENT '본_게시판_이벤트_내용',
  `root_board_event_pw` varchar(50) NOT NULL COMMENT '본_게시판_이벤트_글 비밀번호',
  `root_board_event_file` varchar(50) DEFAULT NULL COMMENT '본_게시판_이벤트_첨부파일',
  `root_board_event_date` date NOT NULL COMMENT '본_게시판_이벤트_작성날짜',
  `root_board_event_time` time NOT NULL COMMENT '본_게시판_이벤트_작성시간',
  PRIMARY KEY (`root_board_event_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='본_게시판_이벤트';

-- Dumping data for table kjw4968.root_board_event: ~0 rows (대략적)
/*!40000 ALTER TABLE `root_board_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `root_board_event` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_board_notice
CREATE TABLE IF NOT EXISTS `root_board_notice` (
  `root_board_notice_code` varchar(50) NOT NULL COMMENT '본_게시판_공지사항_코드',
  `root_board_notice_writer` varchar(50) NOT NULL COMMENT '본_게시판_공지사항_작성자',
  `root_board_notice_title` varchar(50) NOT NULL COMMENT '본_게시판_공지사항_제목',
  `root_board_notice_content` text NOT NULL COMMENT '본_게시판_공지사항_내용',
  `root_board_notice_pw` varchar(50) NOT NULL COMMENT '본_게시판_공지사항_글 비밀번호',
  `root_board_notice_file` varchar(50) DEFAULT NULL COMMENT '본_게시판_공지사항_첨부파일',
  `root_board_notice_date` date NOT NULL COMMENT '본_게시판_공지사항_작성날짜',
  `root_board_notice_time` time NOT NULL COMMENT '본_게시판_공지사항_작성시간',
  PRIMARY KEY (`root_board_notice_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='본_게시판_공지사항';

-- Dumping data for table kjw4968.root_board_notice: ~0 rows (대략적)
/*!40000 ALTER TABLE `root_board_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `root_board_notice` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_cart
CREATE TABLE IF NOT EXISTS `root_cart` (
  `root_cart_code` varchar(50) NOT NULL COMMENT '본_본사주문화면코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `root_stock_code` varchar(50) NOT NULL COMMENT '본_본사재고_코드',
  `root_stock_cart_count` int(10) NOT NULL COMMENT '본_본사주문수량',
  PRIMARY KEY (`root_cart_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='본_주문화면(체인점이본사에주문)\r\n-체인점에서 본사 재고 신청하는 화면에 들어갈 테이블';

-- Dumping data for table kjw4968.root_cart: ~5 rows (대략적)
/*!40000 ALTER TABLE `root_cart` DISABLE KEYS */;
INSERT IGNORE INTO `root_cart` (`root_cart_code`, `store_code`, `root_stock_code`, `root_stock_cart_count`) VALUES
	('rootbasket001', 'store001', 'goods001', 5),
	('rootbasket002', 'store001', 'goods002', 3),
	('rootbasket003', 'store001', 'goods003', 3),
	('rootbasket004', 'store002', 'goods001', 2),
	('rootbasket005', 'store003', 'goods002', 2);
/*!40000 ALTER TABLE `root_cart` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_menu
CREATE TABLE IF NOT EXISTS `root_menu` (
  `root_sales_menu_code` varchar(50) NOT NULL COMMENT '통합_판매메뉴_코드',
  `root_menu_cate_code` varchar(50) NOT NULL COMMENT '통합_메뉴카테고리_코드',
  `root_sales_menu_name` varchar(50) NOT NULL COMMENT '통합_판매매뉴_이름',
  `root_sales_menu_price` int(10) NOT NULL COMMENT '통합_판매메뉴_가격',
  `root_sales_menu_discount_state` date NOT NULL COMMENT '통합_판매메뉴_할인유무',
  `root_sales_menu_registration_date` time NOT NULL COMMENT '통합_판매메뉴_등록날짜',
  PRIMARY KEY (`root_sales_menu_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='통합_판매메뉴';

-- Dumping data for table kjw4968.root_menu: ~5 rows (대략적)
/*!40000 ALTER TABLE `root_menu` DISABLE KEYS */;
INSERT IGNORE INTO `root_menu` (`root_sales_menu_code`, `root_menu_cate_code`, `root_sales_menu_name`, `root_sales_menu_price`, `root_sales_menu_discount_state`, `root_sales_menu_registration_date`) VALUES
	('goods001', 'storecate001', '아메리카노', 3000, '0000-00-00', '00:00:00'),
	('goods002', 'storecate001', '카페라떼', 3500, '0000-00-00', '00:00:00'),
	('goods003', 'storecate002', '딸기스무디', 5000, '0000-00-00', '00:00:00'),
	('goods004', 'storecate003', '프레체', 3000, '0000-00-00', '00:00:00'),
	('goods005', 'storecate004', '망고케이크', 7000, '0000-00-00', '00:00:00');
/*!40000 ALTER TABLE `root_menu` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_menu_cate
CREATE TABLE IF NOT EXISTS `root_menu_cate` (
  `root_menu_cate_code` varchar(50) NOT NULL COMMENT '통합_메뉴카테고리_코드',
  `root_menu_cate_name` varchar(50) NOT NULL COMMENT '통합_메뉴카테고리_이름',
  PRIMARY KEY (`root_menu_cate_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='통합_메뉴카테고리';

-- Dumping data for table kjw4968.root_menu_cate: ~5 rows (대략적)
/*!40000 ALTER TABLE `root_menu_cate` DISABLE KEYS */;
INSERT IGNORE INTO `root_menu_cate` (`root_menu_cate_code`, `root_menu_cate_name`) VALUES
	('storecate001', '커피'),
	('storecate002', '음료'),
	('storecate003', '빵'),
	('storecate004', '케이크'),
	('storecate005', '과일주스');
/*!40000 ALTER TABLE `root_menu_cate` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_menu_prime_cost
CREATE TABLE IF NOT EXISTS `root_menu_prime_cost` (
  `root_prime_cost_code` varchar(50) NOT NULL COMMENT '통합_메뉴원가_코드',
  `root_stock_code` varchar(50) NOT NULL COMMENT '본_본사재고_코드',
  `root_sales_menu_code` varchar(50) NOT NULL COMMENT '통합_판매메뉴_코드',
  `root_stock_weight` int(10) NOT NULL COMMENT '통합_재고용량(g/ml)',
  `root_stock_prime_cost` int(10) NOT NULL COMMENT '통합_재고원가',
  PRIMARY KEY (`root_prime_cost_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_메뉴원가';

-- Dumping data for table kjw4968.root_menu_prime_cost: ~0 rows (대략적)
/*!40000 ALTER TABLE `root_menu_prime_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `root_menu_prime_cost` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_stock_cate
CREATE TABLE IF NOT EXISTS `root_stock_cate` (
  `root_stock_cate_code` varchar(50) NOT NULL COMMENT '본_본사재고카테고리_코드',
  `root_stock_cate_name` varchar(50) NOT NULL COMMENT '본_본사재고카테고리_이름',
  PRIMARY KEY (`root_stock_cate_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='본_본사재고카테고리';

-- Dumping data for table kjw4968.root_stock_cate: ~5 rows (대략적)
/*!40000 ALTER TABLE `root_stock_cate` DISABLE KEYS */;
INSERT IGNORE INTO `root_stock_cate` (`root_stock_cate_code`, `root_stock_cate_name`) VALUES
	('rootcate001', '공산품'),
	('rootcate002', '원두'),
	('rootcate003', '우유'),
	('rootcate004', '채소'),
	('rootcate005', '포장용기');
/*!40000 ALTER TABLE `root_stock_cate` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_stock_menu
CREATE TABLE IF NOT EXISTS `root_stock_menu` (
  `root_stock_code` varchar(50) NOT NULL COMMENT '본_본사재고_코드',
  `root_stock_cate_code` varchar(50) NOT NULL COMMENT '본_본사재고카테고리_코드',
  `root_stock_name` varchar(50) NOT NULL COMMENT '본_본사재고_이름',
  `root_stock_price` int(10) NOT NULL COMMENT '본_본사재고_가격',
  `root_stock_sales_state` varchar(50) NOT NULL COMMENT '본_본사재고_판매유무',
  `root_stock_registration_date` date NOT NULL COMMENT '본_본사재고_등록날짜',
  `root_stock_registration_time` time NOT NULL COMMENT '본_본사재고_등록시간',
  PRIMARY KEY (`root_stock_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='본_본사재고메뉴';

-- Dumping data for table kjw4968.root_stock_menu: ~5 rows (대략적)
/*!40000 ALTER TABLE `root_stock_menu` DISABLE KEYS */;
INSERT IGNORE INTO `root_stock_menu` (`root_stock_code`, `root_stock_cate_code`, `root_stock_name`, `root_stock_price`, `root_stock_sales_state`, `root_stock_registration_date`, `root_stock_registration_time`) VALUES
	('rootgoods001', 'rootcate001', '물건01', 1000, '판매', '2018-09-04', '00:00:00'),
	('rootgoods002', 'rootcate001', '물건02', 1500, '종료', '2018-09-04', '00:00:00'),
	('rootgoods003', 'rootcate002', '물건03', 2000, '판매', '2018-09-03', '00:00:00'),
	('rootgoods004', 'rootcate003', '물건04', 2500, '판매', '2018-09-02', '00:00:00'),
	('rootgoods005', 'rootcate004', '물건05', 3000, '종료', '2018-09-04', '00:00:00');
/*!40000 ALTER TABLE `root_stock_menu` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_stock_release_end
CREATE TABLE IF NOT EXISTS `root_stock_release_end` (
  `root_stock_release_end_code` varchar(50) NOT NULL COMMENT '본_본사재고출고완료_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `root_stock_release_end_date` date NOT NULL COMMENT '본_본사재고출고완료_날짜',
  `root_stock_release_end_time` time NOT NULL COMMENT '본_본사재고출고완료_시간',
  PRIMARY KEY (`root_stock_release_end_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='본_본사재고출고완료';

-- Dumping data for table kjw4968.root_stock_release_end: ~5 rows (대략적)
/*!40000 ALTER TABLE `root_stock_release_end` DISABLE KEYS */;
INSERT IGNORE INTO `root_stock_release_end` (`root_stock_release_end_code`, `store_code`, `root_stock_release_end_date`, `root_stock_release_end_time`) VALUES
	('purchaseend001', 'store001', '2018-09-04', '00:00:00'),
	('purchaseend002', 'store002', '2018-09-04', '00:00:00'),
	('purchaseend003', 'store003', '2018-09-04', '00:00:00'),
	('purchaseend004', 'store004', '2018-09-04', '00:00:00'),
	('purchaseend005', 'store005', '2018-09-04', '00:00:00');
/*!40000 ALTER TABLE `root_stock_release_end` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_stock_release_end_list
CREATE TABLE IF NOT EXISTS `root_stock_release_end_list` (
  `root_stock_release_end_list_code` varchar(50) NOT NULL COMMENT '본_본사재고출고완료_리스트코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `root_stock_release_end_code` varchar(50) NOT NULL COMMENT '본_본사재고출고완료_코드',
  `root_stock_code` varchar(50) NOT NULL COMMENT '본_본사재고_코드',
  `root_stock_release_end_count` int(10) NOT NULL COMMENT '본_본사재고출고완료_재고수량',
  PRIMARY KEY (`root_stock_release_end_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='본_본사재고출고완료리스트';

-- Dumping data for table kjw4968.root_stock_release_end_list: ~0 rows (대략적)
/*!40000 ALTER TABLE `root_stock_release_end_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `root_stock_release_end_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. root_store_open_request
CREATE TABLE IF NOT EXISTS `root_store_open_request` (
  `root_open_request_code` varchar(50) NOT NULL COMMENT '본_체인점입점요청_코드',
  `root_open_request_name` varchar(50) NOT NULL COMMENT '본_체인점입점요청_이름',
  `root_open_request_phone` varchar(50) NOT NULL COMMENT '본_체인점입점요청_번호',
  `root_open_request_email` varchar(50) NOT NULL COMMENT '본_체인점입점요청_이메일',
  `root_open_request_addr` varchar(50) NOT NULL COMMENT '본_체인점입점요청_주소',
  `root_open_request_area` varchar(50) NOT NULL COMMENT '본_체인점입점요청_창업희망지역',
  `root_open_request_exp` varchar(50) NOT NULL COMMENT '본_체인점입점요청_창업유무',
  `root_open_request_space` int(10) NOT NULL COMMENT '본_체인점입점요청_희망평수',
  `root_open_request_cost` int(10) NOT NULL COMMENT '본_체인점입점요청_창업희망비용',
  `root_open_request_birth` int(10) NOT NULL COMMENT '본_체인점입점요청_생년월일',
  `root_open_request_job` varchar(50) NOT NULL COMMENT '본_체인점입점요청_직업',
  `root_open_request_service_exp` varchar(50) NOT NULL COMMENT '본_체인점입점요청_서비스업경험',
  `root_exp_brand_name` varchar(50) DEFAULT NULL COMMENT '본_체인점입점요청_경험브랜드명',
  `root_open_request_memo` text COMMENT '본_체인점입점요청_문의내용',
  `root_open_request_date` date NOT NULL COMMENT '본_체인점입점요청_날짜',
  `root_open_request_time` time NOT NULL COMMENT '본_체인점입점요청_시간',
  PRIMARY KEY (`root_open_request_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='본_입점요청리스트';

-- Dumping data for table kjw4968.root_store_open_request: ~5 rows (대략적)
/*!40000 ALTER TABLE `root_store_open_request` DISABLE KEYS */;
INSERT IGNORE INTO `root_store_open_request` (`root_open_request_code`, `root_open_request_name`, `root_open_request_phone`, `root_open_request_email`, `root_open_request_addr`, `root_open_request_area`, `root_open_request_exp`, `root_open_request_space`, `root_open_request_cost`, `root_open_request_birth`, `root_open_request_job`, `root_open_request_service_exp`, `root_exp_brand_name`, `root_open_request_memo`, `root_open_request_date`, `root_open_request_time`) VALUES
	('openrequest001', '박01', '010-5555-0001', 'email001', 'addr001', '전주 삼천동', '1', 30, 200000000, 930223, '무직', '2', '바이킹스', '없음', '2018-09-03', '00:00:00'),
	('openrequest002', '박02', '010-5555-0002', 'email002', 'addr002', '전주 서신동', '0', 15, 100000000, 780128, '주부', '0', '없음', '없음', '2017-08-30', '00:00:00'),
	('openrequest003', '박03', '010-5555-0003', 'email003', 'addr003', '전주 중화산동', '0', 20, 150000000, 661115, '회사원', '1', '없음', '없음', '2018-09-04', '00:00:00'),
	('openrequest004', '박04', '010-5555-0004', 'email004', 'addr004', '전주 인후동', '3', 20, 300000000, 830707, '무직', '3', '엔제리너스, 카페베네, 스타벅스', '없음', '2018-09-02', '00:00:00'),
	('openrequest005', '박05', '010-5555-0005', 'email005', 'addr005', '전주 중인리', '0', 0, 350000000, 991111, '무직', '0', '없음', '없음', '2018-08-27', '00:00:00');
/*!40000 ALTER TABLE `root_store_open_request` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_admin_member
CREATE TABLE IF NOT EXISTS `store_admin_member` (
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_admin_id` varchar(50) NOT NULL COMMENT '본_체인점관리자_아이디',
  `store_admin_pw` varchar(50) NOT NULL COMMENT '본_체인점관리자_비밀번호',
  `store_admin_name` varchar(50) NOT NULL COMMENT '통합_체인점관리자_이름',
  `store_admin_addr` varchar(50) NOT NULL COMMENT '통합_체인점관리자_주소',
  `store_admin_phone` varchar(50) NOT NULL COMMENT '통합_체인점관리자_핸드폰번호',
  `store_admin_email` varchar(50) NOT NULL COMMENT '통합_체인점관리자_이메일',
  `store_admin_licensee` varchar(50) NOT NULL COMMENT '통합_체인점관리자_사업자번호',
  `store_province` varchar(50) DEFAULT NULL COMMENT '본_체인점주소(도)',
  `store_city` varchar(50) NOT NULL COMMENT '본_체인점주소(시,군,구)',
  `store_district` varchar(50) NOT NULL COMMENT '본_체인점주소(읍,면,동,리)',
  `store_address` varchar(50) NOT NULL COMMENT '본_체인점주소(상세)',
  `store_name` varchar(50) NOT NULL COMMENT '본_체인점점포명',
  `store_admin_join_date` date NOT NULL COMMENT '통합_가입날짜',
  `store_admin_join_time` time NOT NULL COMMENT '통합_가입시간',
  PRIMARY KEY (`store_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='본_체인점관리자 회원';

-- Dumping data for table kjw4968.store_admin_member: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_admin_member` DISABLE KEYS */;
INSERT IGNORE INTO `store_admin_member` (`store_code`, `store_admin_id`, `store_admin_pw`, `store_admin_name`, `store_admin_addr`, `store_admin_phone`, `store_admin_email`, `store_admin_licensee`, `store_province`, `store_city`, `store_district`, `store_address`, `store_name`, `store_admin_join_date`, `store_admin_join_time`) VALUES
	('store001', 'admin001', 'pw001', '1호점장', '서울', '010-1111-1111', '0001', '999-99-00001', NULL, '', '', '', '', '2018-09-05', '00:00:00'),
	('store002', 'admin002', 'pw001', '2호점장', '춘천', '010-1111-1112', '0002', '999-99-00002', NULL, '', '', '', '', '2018-09-05', '00:00:00'),
	('store003', 'admin003', 'pw001', '3호점장', '대구', '010-1111-1113', '0003', '999-99-00003', NULL, '', '', '', '', '2018-09-05', '00:00:00'),
	('store004', 'admin004', 'pw001', '4호점장', '부산', '010-1111-1114', '0004', '999-99-00004', NULL, '', '', '', '', '2018-09-05', '00:00:00'),
	('store005', 'admin005', 'pw001', '5호점장', '울산', '010-1111-1115', '0005', '999-99-00005', NULL, '', '', '', '', '2018-09-05', '00:00:00');
/*!40000 ALTER TABLE `store_admin_member` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_after_total_sales
CREATE TABLE IF NOT EXISTS `store_after_total_sales` (
  `store_after_total_sales_code` varchar(50) NOT NULL COMMENT '체_체인점매출집계마감후_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_after_total_sales_price` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_총금액',
  `store_after_total_sales_supply_price` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_공급가액',
  `store_after_total_sales_surtax_price` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_부가세액',
  `store_after_total_sales_discount` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_할인가격',
  `store_after_total_sales_prime_cost` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_재고원가',
  `store_after_total_sales_purchase_pay` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_재고구입비용',
  `store_after_total_sales_netsales` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_순매출',
  `store_after_total_sales_cash` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_현금결제금액',
  `store_after_total_sales_card` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_카드결제금액',
  `store_after_total_offline_order_visited` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_오프라인주문횟수',
  `store_after_total_online_order_visited` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_온라인주문횟수',
  `store_after_total_staff_pay` int(10) NOT NULL COMMENT '체_체인점매출집계마감후_직원급여',
  `store_open_total_sales_date` date NOT NULL COMMENT '체_체인점매출집계영업중_영업오픈날짜',
  `store_open_total_sales_time` time NOT NULL COMMENT '체_체인점매출집계영업중_영업오픈시간',
  `store_after_total_sales_date` date NOT NULL COMMENT '체_체인점매출집계마감후_영업마감날짜',
  `store_after_total_sales_time` time NOT NULL COMMENT '체_체인점매출집계마감후_영업마감시간',
  PRIMARY KEY (`store_after_total_sales_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점매출집계(마감후)';

-- Dumping data for table kjw4968.store_after_total_sales: ~3 rows (대략적)
/*!40000 ALTER TABLE `store_after_total_sales` DISABLE KEYS */;
INSERT IGNORE INTO `store_after_total_sales` (`store_after_total_sales_code`, `store_code`, `store_after_total_sales_price`, `store_after_total_sales_supply_price`, `store_after_total_sales_surtax_price`, `store_after_total_sales_discount`, `store_after_total_sales_prime_cost`, `store_after_total_sales_purchase_pay`, `store_after_total_sales_netsales`, `store_after_total_sales_cash`, `store_after_total_sales_card`, `store_after_total_offline_order_visited`, `store_after_total_online_order_visited`, `store_after_total_staff_pay`, `store_open_total_sales_date`, `store_open_total_sales_time`, `store_after_total_sales_date`, `store_after_total_sales_time`) VALUES
	('2018-09-05-001', 'store001', 3150000, 2864000, 286000, 73500, 0, 0, 2864000, 1531000, 1619000, 27, 51, 0, '0000-00-00', '00:00:00', '0000-00-00', '00:00:00'),
	('2018-09-05-002', 'store002', 3150000, 2864000, 286000, 73500, 0, 0, 2864000, 1531000, 1619000, 27, 51, 0, '0000-00-00', '00:00:00', '0000-00-00', '00:00:00'),
	('2018-09-06-001', 'store001', 2734000, 2485500, 248500, 82500, 0, 0, 2485500, 795800, 1938200, 15, 42, 0, '0000-00-00', '00:00:00', '0000-00-00', '00:00:00');
/*!40000 ALTER TABLE `store_after_total_sales` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_business_company
CREATE TABLE IF NOT EXISTS `store_business_company` (
  `store_business_company_code` varchar(50) NOT NULL COMMENT '체_체인점거래처_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_business_company_name` varchar(50) NOT NULL COMMENT '체_체인점거래처_이름',
  `store_business_company_ceo` varchar(50) NOT NULL COMMENT '체_체인점거래처_대표',
  `store_business_company_phone` varchar(50) NOT NULL COMMENT '체_체인점거래처_번호',
  `store_business_company_licensee` varchar(50) NOT NULL COMMENT '체_체인점거래처_사업자번호',
  `store_business_company_email` varchar(50) NOT NULL COMMENT '체_체인점거래처_이메일',
  `store_business_company_date` date NOT NULL COMMENT '체_체인점거래처_등록날짜',
  `store_business_company_time` time NOT NULL COMMENT '체_체인점거래처_등록시간',
  PRIMARY KEY (`store_business_company_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점거래처';

-- Dumping data for table kjw4968.store_business_company: ~3 rows (대략적)
/*!40000 ALTER TABLE `store_business_company` DISABLE KEYS */;
INSERT IGNORE INTO `store_business_company` (`store_business_company_code`, `store_code`, `store_business_company_name`, `store_business_company_ceo`, `store_business_company_phone`, `store_business_company_licensee`, `store_business_company_email`, `store_business_company_date`, `store_business_company_time`) VALUES
	('company001', 'store001', '준영컴퍼니', '김대표', '010-5678-0001', '222-22-00001', 'email001', '2018-09-04', '00:00:00'),
	('company002', 'store001', '경선컴퍼니', '이대표', '010-0000-0000', '222-22-00001', 'email001', '2018-09-04', '00:00:00'),
	('company003', 'store002', '유빈컴퍼니', '송대표', '010-5678-0001', '222-22-00002', 'email002', '2018-09-03', '00:00:00');
/*!40000 ALTER TABLE `store_business_company` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_business_company_stock
CREATE TABLE IF NOT EXISTS `store_business_company_stock` (
  `store_business_company_stock_code` varchar(50) NOT NULL COMMENT '체_체인점거래처재고_리스트코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_business_company_code` varchar(50) NOT NULL COMMENT '체_체인점거래처_코드',
  `store_business_company_stock_name` varchar(50) NOT NULL COMMENT '체_체인점거래처재고_이름',
  `store_business_company_stock_price` int(11) NOT NULL COMMENT '체_체인점거래처재고_가격',
  PRIMARY KEY (`store_business_company_stock_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점거래처재고리스트';

-- Dumping data for table kjw4968.store_business_company_stock: ~6 rows (대략적)
/*!40000 ALTER TABLE `store_business_company_stock` DISABLE KEYS */;
INSERT IGNORE INTO `store_business_company_stock` (`store_business_company_stock_code`, `store_code`, `store_business_company_code`, `store_business_company_stock_name`, `store_business_company_stock_price`) VALUES
	('company_goods001', 'store001', '', '당근', 1000),
	('company_goods002', 'store001', '', '피망', 700),
	('company_goods003', 'store002', '', '오이', 700),
	('company_goods004', 'store002', '', '원두(1kg)', 10000),
	('company_goods005', 'store002', '', '우유', 2500),
	('company_goods006', 'store001', '', '피망', 750);
/*!40000 ALTER TABLE `store_business_company_stock` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_cart
CREATE TABLE IF NOT EXISTS `store_cart` (
  `store_cart_code` varchar(50) NOT NULL COMMENT '체_체인점주문_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_sales_menu_code` varchar(50) NOT NULL COMMENT '체_체인점판매메뉴_코드',
  `store_cart_count` int(10) NOT NULL COMMENT '체_체인점주문_수량',
  `store_cart_discount` int(10) NOT NULL COMMENT '체_체인점주문_할인가격',
  PRIMARY KEY (`store_cart_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_주문화면(고객이체인점에서주문)';

-- Dumping data for table kjw4968.store_cart: ~4 rows (대략적)
/*!40000 ALTER TABLE `store_cart` DISABLE KEYS */;
INSERT IGNORE INTO `store_cart` (`store_cart_code`, `store_code`, `store_sales_menu_code`, `store_cart_count`, `store_cart_discount`) VALUES
	('storebasketcode001', 'store001', 'goods001', 1, 0),
	('storebasketcode002', 'store001', 'goods002', 1, 500),
	('storebasketcode003', 'store001', 'goods003', 2, 1000),
	('storebasketcode004', 'store001', 'goods002', 1, 0);
/*!40000 ALTER TABLE `store_cart` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_cart_wait
CREATE TABLE IF NOT EXISTS `store_cart_wait` (
  `store_cart_wait_code` varchar(50) NOT NULL COMMENT '체_고객주문보류_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_cart_wait_date` date NOT NULL COMMENT '체_고객주문보류_날짜',
  `store_cart_wait_time` time NOT NULL COMMENT '체_고객주문보류_시간',
  PRIMARY KEY (`store_cart_wait_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_고객주문보류';

-- Dumping data for table kjw4968.store_cart_wait: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_cart_wait` DISABLE KEYS */;
INSERT IGNORE INTO `store_cart_wait` (`store_cart_wait_code`, `store_code`, `store_cart_wait_date`, `store_cart_wait_time`) VALUES
	('basketwait001', 'store001', '0000-00-00', '00:00:00'),
	('basketwait002', 'store001', '0000-00-00', '00:00:00'),
	('basketwait003', 'stroe002', '0000-00-00', '00:00:00'),
	('basketwait004', 'store003', '0000-00-00', '00:00:00'),
	('basketwait005', 'store004', '0000-00-00', '00:00:00');
/*!40000 ALTER TABLE `store_cart_wait` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_cart_wait_list
CREATE TABLE IF NOT EXISTS `store_cart_wait_list` (
  `store_cart_wait_list_code` varchar(50) NOT NULL COMMENT '체_고객주문보류_리스트코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_cart_wait_code` varchar(50) NOT NULL COMMENT '체_고객주문보류_코드',
  `store_sales_menu_code` varchar(50) NOT NULL COMMENT '체_체인점판매메뉴_코드',
  `store_cart_count` int(10) NOT NULL COMMENT '체_고객주문보류_수량',
  `store_cart_discount` int(10) NOT NULL COMMENT '체_고객주문보류_할인가격',
  PRIMARY KEY (`store_cart_wait_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_고객주문보류메뉴리스트';

-- Dumping data for table kjw4968.store_cart_wait_list: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_cart_wait_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_cart_wait_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_cash
CREATE TABLE IF NOT EXISTS `store_cash` (
  `store_cash_code` varchar(50) NOT NULL COMMENT '체_체인점시재_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_member_code` varchar(50) NOT NULL COMMENT '체_체인점직원_코드',
  `store_cash_price` int(10) NOT NULL COMMENT '체_체인점시재_입출금 금액',
  `store_cash_kind` varchar(50) NOT NULL COMMENT '체_체인점시재_입 / 출금 종류',
  `store_cash_memo` text COMMENT '체_체인점시재_메모',
  `store_cash_date` date NOT NULL COMMENT '체_체인점시재_날짜',
  `store_cash_time` time NOT NULL COMMENT '체_체인점시재_시간',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_cash_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점시재';

-- Dumping data for table kjw4968.store_cash: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_cash` DISABLE KEYS */;
INSERT IGNORE INTO `store_cash` (`store_cash_code`, `store_code`, `store_member_code`, `store_cash_price`, `store_cash_kind`, `store_cash_memo`, `store_cash_date`, `store_cash_time`, `store_deadline_check`) VALUES
	('cash001', 'store001', 'member001', 30000, '출금', '거스름돈교환', '2018-09-04', '00:00:00', ''),
	('cash002', 'store001', 'member001', 30000, '입금', '잔돈교환 후 반환', '2018-09-04', '00:00:00', ''),
	('cash003', 'store002', 'member001', 20000, '입금', '계산', '2018-09-04', '00:00:00', ''),
	('cash004', 'store002', 'member002', 4000, '출금', '계산 후 잔돈', '2018-09-04', '00:00:00', ''),
	('cash005', 'store003', 'member003', 10000, '입금', '시재', '2018-09-04', '00:00:00', '');
/*!40000 ALTER TABLE `store_cash` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_cash_receipt
CREATE TABLE IF NOT EXISTS `store_cash_receipt` (
  `store_cash_receipt_code` varchar(50) NOT NULL COMMENT '체_체인점현금영수증_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_payment_end_code` varchar(50) NOT NULL COMMENT '체_체인점결제완료_코드',
  `store_cash_receipt_method` varchar(50) NOT NULL COMMENT '체_체인점현금영수증_구분(개인/사업자)',
  `store_cash_receipt_num_method` varchar(50) NOT NULL COMMENT '체_체인점현금영수증_번호구분(핸드폰번호/카드번호)',
  `store_cash_receipt_num` varchar(50) NOT NULL COMMENT '체_체인점현금영수증_번호',
  `store_cash_receipt_registration_date` date NOT NULL COMMENT '체_체인점현금영수증_등록날짜',
  `store_cash_receipt_registration_time` time NOT NULL COMMENT '체_체인점현금영수증_등록시간',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_cash_receipt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점현금영수증';

-- Dumping data for table kjw4968.store_cash_receipt: ~2 rows (대략적)
/*!40000 ALTER TABLE `store_cash_receipt` DISABLE KEYS */;
INSERT IGNORE INTO `store_cash_receipt` (`store_cash_receipt_code`, `store_code`, `store_payment_end_code`, `store_cash_receipt_method`, `store_cash_receipt_num_method`, `store_cash_receipt_num`, `store_cash_receipt_registration_date`, `store_cash_receipt_registration_time`, `store_deadline_check`) VALUES
	('cashreceipt001', 'store001', 'salelist001', '개인', '핸드폰', '', '2018-09-06', '00:00:00', '마감전'),
	('cashreceipt002', 'store001', 'salelist002', '사업자', '카드번호', '', '2018-09-06', '00:00:00', '마감전');
/*!40000 ALTER TABLE `store_cash_receipt` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_date_total_sales
CREATE TABLE IF NOT EXISTS `store_date_total_sales` (
  `store_date_total_sales_code` varchar(50) NOT NULL COMMENT '통합_체인점매출집계기간별_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_date_total_sales_price` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_총금액',
  `store_date_total_sales_supply_price` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_공급가액',
  `store_date_total_sales_surtax_price` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_부가세액',
  `store_date_total_sales_discount` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_할인가격',
  `store_date_total_sales_prime_cost` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_원가',
  `store_date_total_staff_pay` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_직원급여',
  `store_date_total_sales_purchase_pay` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_재고구입비용',
  `store_date_total_sales_netsales` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_판매순매출',
  `store_date_total_sales_member_cost` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_가맹비',
  `store_date_total_sales_profit` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_순이익',
  `store_date_total_sales_cash` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_현금결제금액',
  `store_date_total_sales_card` int(10) NOT NULL COMMENT '통합_체인점매출집계기간별_카드결제금액',
  `store_date_total_sales_ymd` date NOT NULL COMMENT '통합_체인점매출집계기간별_판매년월일',
  `store_date_total_sales_date` date NOT NULL COMMENT '통합_체인점매출집계기간별_매출집계등록날짜',
  PRIMARY KEY (`store_date_total_sales_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_체인점매출집계(마감후)_년월일';

-- Dumping data for table kjw4968.store_date_total_sales: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_date_total_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_date_total_sales` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_day_total_sales
CREATE TABLE IF NOT EXISTS `store_day_total_sales` (
  `store_day_total_sales_code` varchar(50) NOT NULL COMMENT '통합_체인점매출집계요일별_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_day_total_sales_price` int(10) NOT NULL COMMENT '통합_체인점매출집계요일별_총금액',
  `store_day_total_sales_supply_price` int(10) NOT NULL COMMENT '통합_체인점매출집계요일별_공급가액',
  `store_day_total_sales_surtax_price` int(10) NOT NULL COMMENT '통합_체인점매출집계요일별_부가세액',
  `store_day_total_sales_discount` int(10) NOT NULL COMMENT '통합_체인점매출집계요일별_할인가격',
  `store_day_total_sales_prime_cost` int(10) NOT NULL COMMENT '통합_체인점매출집계요일별_재고원가',
  `store_day_total_sales_purchase_pay` int(10) NOT NULL COMMENT '통합_체인점매출집계요일별_재고구입비용',
  `store_day_total_sales_netsales` int(10) NOT NULL COMMENT '통합_체인점매출집계요일별_순매출',
  `store_day_total_sales_cash` int(10) NOT NULL COMMENT '통합_체인점매출집계요일별_현금결제금액',
  `store_day_total_sales_card` int(10) NOT NULL COMMENT '통합_체인점매출집계요일별_카드결제금액',
  `store_day_total_sales_staff_pay` int(10) NOT NULL COMMENT '통합_체인점매출집계요일별_직원급여',
  `store_day_total_sales_day` varchar(50) NOT NULL COMMENT '통합_체인점매출집계요일별_판매요일',
  `store_day_total_sales_day_date` date NOT NULL COMMENT '통합_체인점매출집계요일별_매출집계등록날짜',
  PRIMARY KEY (`store_day_total_sales_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_체인점매출집계(마감후)_요일별';

-- Dumping data for table kjw4968.store_day_total_sales: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_day_total_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_day_total_sales` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_discount_end
CREATE TABLE IF NOT EXISTS `store_discount_end` (
  `store_discount_end_list_code` varchar(50) NOT NULL COMMENT '체_체인점할인완료_리스트코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `customer_id` varchar(50) DEFAULT NULL COMMENT '통합_고객_아이디',
  `store_sales_end_code` varchar(50) NOT NULL COMMENT '체_체인점판매완료_코드',
  `store_discount_end_price` int(10) NOT NULL COMMENT '체_체인점할인완료_가격',
  `store_discount_date` date NOT NULL COMMENT '체_체인점할인완료_날짜',
  `store_discount_time` time NOT NULL COMMENT '체_체인점할인완료_시간',
  `store_deadline_check` varchar(50) NOT NULL COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_discount_end_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점할인완료';

-- Dumping data for table kjw4968.store_discount_end: ~2 rows (대략적)
/*!40000 ALTER TABLE `store_discount_end` DISABLE KEYS */;
INSERT IGNORE INTO `store_discount_end` (`store_discount_end_list_code`, `store_code`, `customer_id`, `store_sales_end_code`, `store_discount_end_price`, `store_discount_date`, `store_discount_time`, `store_deadline_check`) VALUES
	('discount001', 'store001', 'customer001', 'salelist001', 1500, '2018-09-06', '00:00:00', ''),
	('discount002', 'store001', 'customer002', 'salelist002', 1000, '2018-09-06', '00:00:00', '');
/*!40000 ALTER TABLE `store_discount_end` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_member
CREATE TABLE IF NOT EXISTS `store_member` (
  `store_member_code` varchar(50) NOT NULL COMMENT '체_체인점직원_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점 코드',
  `store_member_id` varchar(50) NOT NULL COMMENT '체_체인점직원_아이디',
  `store_member_pw` varchar(50) NOT NULL COMMENT '체_체인점직원_비밀번호',
  `store_member_name` varchar(50) NOT NULL COMMENT '체_체인점직원_이름',
  `store_member_phone` varchar(50) NOT NULL COMMENT '체_체인점직원_핸드폰번호',
  `store_member_addr` varchar(50) NOT NULL COMMENT '체_체인점직원_주소',
  `store_member_level` varchar(50) NOT NULL COMMENT '체_체인점직원_권한',
  `store_member_join_date` date NOT NULL COMMENT '체_체인점직원_가입날짜',
  `store_member_join_time` time NOT NULL COMMENT '체_체인점직원_가입시간',
  PRIMARY KEY (`store_member_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점 직원';

-- Dumping data for table kjw4968.store_member: ~12 rows (대략적)
/*!40000 ALTER TABLE `store_member` DISABLE KEYS */;
INSERT IGNORE INTO `store_member` (`store_member_code`, `store_code`, `store_member_id`, `store_member_pw`, `store_member_name`, `store_member_phone`, `store_member_addr`, `store_member_level`, `store_member_join_date`, `store_member_join_time`) VALUES
	('member001', 'store001', 'memberid001', 'pw001', '김01', '010-3333-0001', '전주01', '사장', '2018-09-06', '00:00:00'),
	('member002', 'store001', 'memberid002', 'pw001', '김02', '010-3333-0002', '전주02', '매니저', '2018-09-06', '00:00:00'),
	('member003', 'store001', 'memberid003', 'pw001', '이01', '010-4444-0001', '전주01', '매니저', '2018-09-06', '00:00:00'),
	('member004', 'store001', 'memberid004', 'pw002', '이02', '010-4444-0002', '전주02', '아르바이트', '2018-09-06', '00:00:00'),
	('member005', 'store001', 'memberid005', 'pw003', '이03', '010-4444-0003', '전주03', '아르바이트', '2018-09-06', '00:00:00'),
	('member006', 'store001', 'memberid006', 'pw003', '이03', '010-4444-0003', '전주03', '아르바이트', '2018-09-06', '00:00:00'),
	('member007', 'store002', 'memberid001', 'pw003', '이03', '010-4444-0003', '전주03', '사장', '2018-09-06', '00:00:00'),
	('member008', 'store002', 'memberid002', 'pw003', '이03', '010-4444-0003', '전주03', '매니저', '2018-09-06', '00:00:00'),
	('member009', 'store002', 'memberid003', 'pw003', '이03', '010-4444-0003', '전주03', '아르바이트', '2018-09-06', '00:00:00'),
	('member010', 'store003', 'memberid001', 'pw003', '이03', '010-4444-0003', '전주03', '사장', '2018-09-06', '00:00:00'),
	('member011', 'store003', 'memberid002', 'pw003', '이03', '010-4444-0003', '전주03', '매니저', '2018-09-06', '00:00:00'),
	('member012', 'store003', 'memberid003', 'pw003', '이03', '010-4444-0003', '전주03', '아르바이트', '2018-09-06', '00:00:00');
/*!40000 ALTER TABLE `store_member` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_member_cummute
CREATE TABLE IF NOT EXISTS `store_member_cummute` (
  `store_cummute_code` varchar(50) NOT NULL COMMENT '체_체인점출퇴근코드(순서)',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_member_code` varchar(50) NOT NULL COMMENT '체_체인점직원_코드',
  `store_cummute_start_time` time NOT NULL COMMENT '체_체인점출근시간',
  `store_cummute_end_time` time DEFAULT NULL COMMENT '체_체인점퇴근시간',
  `store_cummute_date` date NOT NULL COMMENT '체_체인점출근날짜',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_cummute_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점직원출퇴근';

-- Dumping data for table kjw4968.store_member_cummute: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_member_cummute` DISABLE KEYS */;
INSERT IGNORE INTO `store_member_cummute` (`store_cummute_code`, `store_code`, `store_member_code`, `store_cummute_start_time`, `store_cummute_end_time`, `store_cummute_date`, `store_deadline_check`) VALUES
	('1', 'store001', 'member001', '10:24:20', '00:00:00', '2018-09-04', ''),
	('2', 'store001', 'member002', '10:25:06', NULL, '2018-09-04', ''),
	('3', 'store001', 'member001', '10:25:20', NULL, '2018-09-04', ''),
	('4', 'store002', 'member003', '10:25:38', '20:25:47', '2018-09-03', ''),
	('5', 'store003', 'member002', '10:26:10', '22:00:30', '2018-09-03', '');
/*!40000 ALTER TABLE `store_member_cummute` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_memo
CREATE TABLE IF NOT EXISTS `store_memo` (
  `store_memo_code` varchar(50) NOT NULL COMMENT '메모코드',
  `store_code` varchar(50) NOT NULL COMMENT '체인점코드',
  `store_memo_content` text NOT NULL COMMENT '메모내용',
  `store_memo_date` datetime NOT NULL COMMENT '메모날짜',
  PRIMARY KEY (`store_memo_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체인점메모';

-- Dumping data for table kjw4968.store_memo: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_memo` DISABLE KEYS */;
INSERT IGNORE INTO `store_memo` (`store_memo_code`, `store_code`, `store_memo_content`, `store_memo_date`) VALUES
	('memo001', 'store001', '청소해야함', '2018-09-06 00:00:00'),
	('memo002', 'store002', '기계고장', '2018-09-06 00:00:00'),
	('memo003', 'store003', '도난품있음', '2018-09-06 00:00:00'),
	('memo004', 'store004', '시재안맞음', '2018-09-06 00:00:00'),
	('memo005', 'store005', '청소해야함', '2018-09-06 00:00:00');
/*!40000 ALTER TABLE `store_memo` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_menu
CREATE TABLE IF NOT EXISTS `store_menu` (
  `store_sales_menu_code` varchar(50) NOT NULL COMMENT '체_체인점판매메뉴_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `root_menu_cate_code` varchar(50) NOT NULL COMMENT '통합_메뉴카테고리_코드',
  `store_sales_menu_name` varchar(50) NOT NULL COMMENT '체_체인점판매메뉴_이름',
  `store_sales_menu_price` int(10) NOT NULL COMMENT '체_체인점판매메뉴_가격',
  `store_sales_menu_discount` varchar(50) NOT NULL COMMENT '체_체인점판매메뉴_할인유무',
  `store_sales_menu_state` varchar(50) NOT NULL COMMENT '체_체인점판매메뉴_판매유무',
  `store_sales_menu_date` date NOT NULL COMMENT '체_체인점메뉴등록날짜',
  `store_sales_menu_time` time NOT NULL COMMENT '체_체인점메뉴등록시간',
  PRIMARY KEY (`store_sales_menu_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점추가판매메뉴';

-- Dumping data for table kjw4968.store_menu: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_menu` DISABLE KEYS */;
INSERT IGNORE INTO `store_menu` (`store_sales_menu_code`, `store_code`, `root_menu_cate_code`, `store_sales_menu_name`, `store_sales_menu_price`, `store_sales_menu_discount`, `store_sales_menu_state`, `store_sales_menu_date`, `store_sales_menu_time`) VALUES
	('goods001', 'store001', 'storecate001', '아메리카노', 3000, '할인', '판매', '2017-09-06', '00:00:00'),
	('goods002', 'store001', 'storecate001', '카페라떼', 3500, '할인', '판매', '2018-09-06', '00:00:00'),
	('goods003', 'store001', 'storecate002', '딸기스무디', 5000, '정가', '판매', '2018-09-06', '00:00:00'),
	('goods004', 'store001', 'storecate003', '프레체', 3000, '정가', '판매', '2018-09-06', '00:00:00'),
	('goods005', 'store001', 'storecate004', '망고케이크', 7000, '할인', '판매', '2018-09-06', '00:00:00');
/*!40000 ALTER TABLE `store_menu` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_menu_change
CREATE TABLE IF NOT EXISTS `store_menu_change` (
  `store_menu_change_code` varchar(50) NOT NULL COMMENT '체_체인점메뉴교환_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_sales_end_code` varchar(50) NOT NULL COMMENT '체_체인점판매완료_코드',
  `store_menu_change_reason` text NOT NULL COMMENT '체_체인점메뉴교환_사유',
  `store_menu_change_date` date NOT NULL COMMENT '체_체인점메뉴교환_날짜',
  `store_menu_change_time` time NOT NULL COMMENT '체_체인점메뉴교환_시간',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_menu_change_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점메뉴교환';

-- Dumping data for table kjw4968.store_menu_change: ~2 rows (대략적)
/*!40000 ALTER TABLE `store_menu_change` DISABLE KEYS */;
INSERT IGNORE INTO `store_menu_change` (`store_menu_change_code`, `store_code`, `store_sales_end_code`, `store_menu_change_reason`, `store_menu_change_date`, `store_menu_change_time`, `store_deadline_check`) VALUES
	('change001', 'store001', 'salelist001', '변심', '2018-09-06', '00:00:00', '마감전'),
	('change002', 'store001', 'salelist001', '위생상태', '2018-09-06', '00:00:00', '마감전');
/*!40000 ALTER TABLE `store_menu_change` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_menu_prime_cost
CREATE TABLE IF NOT EXISTS `store_menu_prime_cost` (
  `store_prime_cost_code` varchar(50) NOT NULL COMMENT '체_체인점원가_코드',
  `store_stock_code` varchar(50) NOT NULL COMMENT '체_체인점재고_코드',
  `store_sales_menu_code` varchar(50) NOT NULL COMMENT '체_체인점판매메뉴_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_stock_weight` int(10) NOT NULL COMMENT '체_재고용량(g/ml)',
  `store_stock_prime_cost` int(10) NOT NULL COMMENT '체_재고원가',
  PRIMARY KEY (`store_prime_cost_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점메뉴원가';

-- Dumping data for table kjw4968.store_menu_prime_cost: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_menu_prime_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_menu_prime_cost` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_menu_refund
CREATE TABLE IF NOT EXISTS `store_menu_refund` (
  `store_menu_refund_code` varchar(50) NOT NULL COMMENT '체_체인점메뉴환불_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_sales_end_code` varchar(50) NOT NULL COMMENT '체_체인점판매완료_코드',
  `store_menu_refund_reason` text NOT NULL COMMENT '체_체인점메뉴환불_사유',
  `store_menu_refund_date` date NOT NULL COMMENT '체_체인점메뉴환불_날짜',
  `store_menu_refund_time` time NOT NULL COMMENT '체_체인점메뉴환불_시간',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_menu_refund_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점메뉴환불';

-- Dumping data for table kjw4968.store_menu_refund: ~2 rows (대략적)
/*!40000 ALTER TABLE `store_menu_refund` DISABLE KEYS */;
INSERT IGNORE INTO `store_menu_refund` (`store_menu_refund_code`, `store_code`, `store_sales_end_code`, `store_menu_refund_reason`, `store_menu_refund_date`, `store_menu_refund_time`, `store_deadline_check`) VALUES
	('refund001', 'store001', 'salelist001', '변심', '2018-09-06', '00:00:00', '마감전'),
	('refund002', 'store002', 'salelist002', '위생', '2018-09-06', '00:00:00', '마감전');
/*!40000 ALTER TABLE `store_menu_refund` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_open_total_sales
CREATE TABLE IF NOT EXISTS `store_open_total_sales` (
  `store_open_total_sales_code` varchar(50) NOT NULL COMMENT '체_체인점매출집계영업중_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_open_total_sales_price` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_총금액',
  `store_open_total_sales_supply_price` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_공급가액',
  `store_open_total_sales_surtax_price` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_부가세액',
  `store_open_total_sales_discount` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_할인가격',
  `store_open_total_sales_prime_cost` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_재고원가',
  `store_open_total_sales_purchase_pay` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_재고구입비용',
  `store_open_total_sales_netsales` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_순매출',
  `store_open_total_sales_cash` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_현금결제금액',
  `store_open_total_sales_card` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_카드결제금액',
  `store_open_total_offline_order_visited` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_오프라인주문횟수',
  `store_open_total_online_order_visited` int(10) NOT NULL DEFAULT '0' COMMENT '체_체인점매출집계영업중_온라인주문횟수',
  `store_open_total_sales_date` date NOT NULL COMMENT '체_체인점매출집계영업중_영업오픈날짜',
  `store_open_total_sales_time` time NOT NULL COMMENT '체_체인점매출집계영업중_영업오픈시간',
  PRIMARY KEY (`store_open_total_sales_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점매출집계(영업중)';

-- Dumping data for table kjw4968.store_open_total_sales: ~7 rows (대략적)
/*!40000 ALTER TABLE `store_open_total_sales` DISABLE KEYS */;
INSERT IGNORE INTO `store_open_total_sales` (`store_open_total_sales_code`, `store_code`, `store_open_total_sales_price`, `store_open_total_sales_supply_price`, `store_open_total_sales_surtax_price`, `store_open_total_sales_discount`, `store_open_total_sales_prime_cost`, `store_open_total_sales_purchase_pay`, `store_open_total_sales_netsales`, `store_open_total_sales_cash`, `store_open_total_sales_card`, `store_open_total_offline_order_visited`, `store_open_total_online_order_visited`, `store_open_total_sales_date`, `store_open_total_sales_time`) VALUES
	('2017-09-05-001', 'store002', 50000, 45000, 5000, 0, 0, 0, 45000, 50000, 0, 1, 0, '0000-00-00', '00:00:00'),
	('2018-01-01-002', 'store002', 3150000, 2864000, 286000, 73500, 0, 0, 2864000, 1531000, 1619000, 27, 51, '0000-00-00', '00:00:00'),
	('2018-09-03-002', 'store002', 3150000, 2864000, 286000, 73500, 0, 0, 2864000, 1531000, 1619000, 27, 51, '0000-00-00', '00:00:00'),
	('2018-09-04-001', 'store001', 3150000, 2864000, 286000, 73500, 0, 0, 2864000, 1531000, 1619000, 27, 51, '0000-00-00', '00:00:00'),
	('2018-09-05-001', 'store001', 3150000, 2864000, 286000, 73500, 0, 0, 2864000, 1531000, 1619000, 27, 51, '0000-00-00', '00:00:00'),
	('2018-09-06-001', 'store002', 3150000, 2864000, 286000, 73500, 0, 0, 2864000, 1531000, 1619000, 27, 51, '0000-00-00', '00:00:00'),
	('2018-12-31-002', 'store002', 3150000, 2864000, 286000, 73500, 0, 0, 2864000, 1531000, 1619000, 27, 51, '0000-00-00', '00:00:00');
/*!40000 ALTER TABLE `store_open_total_sales` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_order_make_list
CREATE TABLE IF NOT EXISTS `store_order_make_list` (
  `store_order_menu_make_code` varchar(50) NOT NULL COMMENT '체_체인점메뉴제조_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_sales_end_code` varchar(50) NOT NULL COMMENT '체_체인점판매완료_코드',
  `store_sales_menu_code` varchar(50) NOT NULL COMMENT '체_체인점판매메뉴_코드',
  `store_order_menu_make_count` int(10) NOT NULL COMMENT '체_체인점메뉴제조_수량',
  PRIMARY KEY (`store_order_menu_make_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점주문완료메뉴 제조리스트';

-- Dumping data for table kjw4968.store_order_make_list: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_order_make_list` DISABLE KEYS */;
INSERT IGNORE INTO `store_order_make_list` (`store_order_menu_make_code`, `store_code`, `store_sales_end_code`, `store_sales_menu_code`, `store_order_menu_make_count`) VALUES
	('salelist001', 'store001', 'salegoodslist001', 'goods001', 5),
	('salelist002', 'store002', 'salegoodslist002', 'goods002', 3),
	('salelist003', 'store003', 'salegoodslist003', 'goods003', 3),
	('salelist004', 'store004', 'salegoodslist001', 'goods004', 2),
	('salelist005', 'store005', 'salegoodslist001', 'goods005', 1);
/*!40000 ALTER TABLE `store_order_make_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_payment_end
CREATE TABLE IF NOT EXISTS `store_payment_end` (
  `store_payment_end_code` varchar(50) NOT NULL COMMENT '체_체인점결제완료_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_sales_end_code` varchar(50) NOT NULL COMMENT '체_체인점판매완료_코드',
  `customer_id` varchar(50) DEFAULT NULL COMMENT '통합_고객_아이디',
  `store_discount_end_list_code` varchar(50) DEFAULT NULL COMMENT '체_체인점할인완료_리스트코드',
  `store_payment_price` int(10) NOT NULL COMMENT '체_체인점결제완료_가격',
  `store_payment_card` int(11) DEFAULT NULL COMMENT '체_체인점결제완료_카드금액',
  `store_payment_cash` int(11) DEFAULT NULL COMMENT '체_체인점결제완료_현금금액',
  `store_payment_save_mileage` int(10) DEFAULT NULL COMMENT '체_체인점결제완료_적립금',
  `store_payment_order_method` varchar(50) NOT NULL COMMENT '체_체인점결제완료_주문방법',
  `store_payment_date` date NOT NULL COMMENT '체_체인점결제완료_날짜',
  `store_payment_time` time NOT NULL COMMENT '체_체인점결제완료_시간',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_payment_end_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점결제완료 ';

-- Dumping data for table kjw4968.store_payment_end: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_payment_end` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_payment_end` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_sales_close
CREATE TABLE IF NOT EXISTS `store_sales_close` (
  `store_close_code` varchar(50) NOT NULL COMMENT '체_체인점마감_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_member_code` varchar(50) NOT NULL COMMENT '체_체인점직원_코드',
  `store_close_memo` text COMMENT '체_체인점마감_메모',
  `store_close_date` date NOT NULL COMMENT '체_체인점마감_날짜',
  `store_close_time` time NOT NULL COMMENT '체_체인점마감_시간',
  PRIMARY KEY (`store_close_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점영업마감';

-- Dumping data for table kjw4968.store_sales_close: ~2 rows (대략적)
/*!40000 ALTER TABLE `store_sales_close` DISABLE KEYS */;
INSERT IGNORE INTO `store_sales_close` (`store_close_code`, `store_code`, `store_member_code`, `store_close_memo`, `store_close_date`, `store_close_time`) VALUES
	('2018-09-03-002', 'store002', 'member001', '.', '0000-00-00', '10:49:07'),
	('2018-09-04-001', 'store001', 'member001', '머신고장', '0000-00-00', '10:48:37');
/*!40000 ALTER TABLE `store_sales_close` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_sales_end
CREATE TABLE IF NOT EXISTS `store_sales_end` (
  `store_sale_list_code` varchar(50) NOT NULL COMMENT '체_체인점판매완료_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_sales_end_price` int(10) NOT NULL COMMENT '체_체인점판매완료_가격',
  `store_sale_goods_discount` int(10) NOT NULL COMMENT '체_체인점판매완료_할인가격',
  `store_sales_end_date` date NOT NULL COMMENT '체_체인점판매완료_날짜',
  `store_sales_end_time` time NOT NULL COMMENT '체_체인점판매완료_시간',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_sale_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점판매완료';

-- Dumping data for table kjw4968.store_sales_end: ~2 rows (대략적)
/*!40000 ALTER TABLE `store_sales_end` DISABLE KEYS */;
INSERT IGNORE INTO `store_sales_end` (`store_sale_list_code`, `store_code`, `store_sales_end_price`, `store_sale_goods_discount`, `store_sales_end_date`, `store_sales_end_time`, `store_deadline_check`) VALUES
	('salelist001', 'store001', 0, 1500, '0000-00-00', '00:00:00', '마감전'),
	('salelist002', 'store001', 0, 1000, '0000-00-00', '00:00:00', '마감전');
/*!40000 ALTER TABLE `store_sales_end` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_sales_end_menu_list
CREATE TABLE IF NOT EXISTS `store_sales_end_menu_list` (
  `store_sales_end_menu_list_code` varchar(50) NOT NULL COMMENT '체_체인점판매완료리스트_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_sales_end_code` varchar(50) NOT NULL COMMENT '체_체인점판매완료_코드',
  `root_sales_menu_code` varchar(50) NOT NULL COMMENT '통합_판매메뉴_코드',
  `store_sales_end_menu_count` int(10) NOT NULL COMMENT '체_체인점판매완료리스트_메뉴수량',
  `store_sales_end_menu_discount` int(10) NOT NULL COMMENT '체_체인점판매완료리스트_할인가격',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_sales_end_menu_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점판매완료메뉴리스트';

-- Dumping data for table kjw4968.store_sales_end_menu_list: ~6 rows (대략적)
/*!40000 ALTER TABLE `store_sales_end_menu_list` DISABLE KEYS */;
INSERT IGNORE INTO `store_sales_end_menu_list` (`store_sales_end_menu_list_code`, `store_code`, `store_sales_end_code`, `root_sales_menu_code`, `store_sales_end_menu_count`, `store_sales_end_menu_discount`, `store_deadline_check`) VALUES
	('salegoodslist001', 'store001', 'goods001', '', 500, 0, '마감전'),
	('salegoodslist002', 'store001', 'goods002', '', 0, 0, '마감전'),
	('salegoodslist003', 'store001', 'goods003', '', 1000, 0, '마감전'),
	('salegoodslist004', 'store001', 'goods001', '', 0, 0, '마감전'),
	('salegoodslist005', 'store001', 'goods002', '', 1000, 0, '마감전'),
	('salegoodslist006', 'store001', 'goods003', '', 5, 0, '마감전');
/*!40000 ALTER TABLE `store_sales_end_menu_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_sales_reserve
CREATE TABLE IF NOT EXISTS `store_sales_reserve` (
  `store_reserve_code` varchar(50) NOT NULL COMMENT '체_체인점영업준비금_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_member_code` varchar(50) NOT NULL COMMENT '체_체인점직원코드',
  `store_reserve_amount` int(11) NOT NULL COMMENT '체_체인점영업준비금_총합',
  `store_reserve_registration_date` date NOT NULL COMMENT '체_체인점영업준비금_등록날짜',
  `store_reserve_registration_time` time NOT NULL COMMENT '체_체인점영업준비금_등록시간',
  PRIMARY KEY (`store_reserve_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점영업준비금';

-- Dumping data for table kjw4968.store_sales_reserve: ~3 rows (대략적)
/*!40000 ALTER TABLE `store_sales_reserve` DISABLE KEYS */;
INSERT IGNORE INTO `store_sales_reserve` (`store_reserve_code`, `store_code`, `store_member_code`, `store_reserve_amount`, `store_reserve_registration_date`, `store_reserve_registration_time`) VALUES
	('2018-09-03-002', 'store002', 'member002', 230000, '0000-00-00', '00:00:00'),
	('2018-09-04-001', 'store001', 'member001', 80000, '0000-00-00', '00:00:00'),
	('2018-09-05-001', 'store001', 'member002', 110000, '0000-00-00', '00:00:00');
/*!40000 ALTER TABLE `store_sales_reserve` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock
CREATE TABLE IF NOT EXISTS `store_stock` (
  `store_stock_code` varchar(50) NOT NULL COMMENT '체_체인점재고_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_business_company_code` varchar(50) NOT NULL COMMENT '체_체인점거래처_코드',
  `store_stock_cate_code` varchar(50) NOT NULL COMMENT '체_체인점재고카테고리_코드',
  `store_stock_name` varchar(50) NOT NULL COMMENT '체_체인점재고_이름',
  `store_stock_count` int(10) NOT NULL COMMENT '체_체인점재고_수량',
  `store_stock_price` int(10) NOT NULL COMMENT '체_체인점재고_가격',
  `store_stock_registration_date` date NOT NULL COMMENT '체_체인점재고_등록날짜',
  `store_stock_registration_time` time NOT NULL COMMENT '체_체인점재고_등록시간',
  PRIMARY KEY (`store_stock_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점재고관리';

-- Dumping data for table kjw4968.store_stock: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_stock` DISABLE KEYS */;
INSERT IGNORE INTO `store_stock` (`store_stock_code`, `store_code`, `store_business_company_code`, `store_stock_cate_code`, `store_stock_name`, `store_stock_count`, `store_stock_price`, `store_stock_registration_date`, `store_stock_registration_time`) VALUES
	('goods001', 'store001', 'company001', 'stockcate001', '원두(1kg)', 10, 10000, '2018-09-06', '00:00:00'),
	('goods002', 'store001', 'company002', 'stockcate002', '우유', 15, 7000, '2018-09-06', '00:00:00'),
	('goods003', 'store001', 'company003', 'stockcate003', '식빵', 11, 15000, '2018-09-06', '00:00:00'),
	('goods004', 'store001', 'company004', 'stockcate004', '시럽', 7, 12000, '2018-09-06', '00:00:00'),
	('goods005', 'store001', 'company005', 'stockcate005', '빨대', 5, 1000, '2018-09-06', '00:00:00');
/*!40000 ALTER TABLE `store_stock` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_cate
CREATE TABLE IF NOT EXISTS `store_stock_cate` (
  `store_stock_cate_code` varchar(50) NOT NULL COMMENT '체_체인점재고카테고리_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_stock_cate_name` varchar(50) NOT NULL COMMENT '체_체인점재고카테고리_이름',
  PRIMARY KEY (`store_stock_cate_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점재고카테고리';

-- Dumping data for table kjw4968.store_stock_cate: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_stock_cate` DISABLE KEYS */;
INSERT IGNORE INTO `store_stock_cate` (`store_stock_cate_code`, `store_code`, `store_stock_cate_name`) VALUES
	('stockcate001', 'store001', '커피'),
	('stockcate002', 'store001', '음료'),
	('stockcate003', 'store001', '기타'),
	('stockcate004', 'store001', '케이크'),
	('stockcate005', 'store001', '계절메뉴');
/*!40000 ALTER TABLE `store_stock_cate` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_order
CREATE TABLE IF NOT EXISTS `store_stock_order` (
  `store_stock_order_code` varchar(50) NOT NULL COMMENT '통합_재고발주_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_business_company_code` varchar(50) NOT NULL COMMENT '체_체인점거래처_코드',
  `store_stock_release_state` varchar(50) NOT NULL DEFAULT 'N' COMMENT '통합_재고발주_출고상태',
  `store_stock_order_date` date NOT NULL COMMENT '통합_재고발주_발주날짜',
  `store_stock_order_time` time NOT NULL COMMENT '통합_재고발주_발주시간',
  PRIMARY KEY (`store_stock_order_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_재고발주\r\n- 체인점에서 재고를 신청(본사)';

-- Dumping data for table kjw4968.store_stock_order: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_stock_order` DISABLE KEYS */;
INSERT IGNORE INTO `store_stock_order` (`store_stock_order_code`, `store_code`, `store_business_company_code`, `store_stock_release_state`, `store_stock_order_date`, `store_stock_order_time`) VALUES
	('purchaseend001', 'store001', 'company001', '', '2018-09-01', '00:00:00'),
	('purchaseend002', 'store001', 'company002', '', '2018-09-02', '00:00:00'),
	('purchaseend003', 'store002', 'company003', '', '2018-09-01', '00:00:00'),
	('purchaseend004', 'store003', 'company001', '', '2018-09-06', '00:00:00'),
	('purchaseend005', 'store004', 'company002', '', '2018-09-04', '00:00:00');
/*!40000 ALTER TABLE `store_stock_order` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_order_cancel_request
CREATE TABLE IF NOT EXISTS `store_stock_order_cancel_request` (
  `store_stock_order_cancel_code` varchar(50) NOT NULL COMMENT '통합_재고발주취소_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_business_company_code` varchar(50) NOT NULL COMMENT '체_체인점거래처_코드',
  `store_stock_order_cancel_state` varchar(50) NOT NULL COMMENT '통합_재고발주취소_확인상태',
  `store_stock_order_cancel_date` date NOT NULL COMMENT '통합_재고발주취소_날짜',
  `store_stock_order_cancel_time` time NOT NULL COMMENT '통합_재고발주취소_시간',
  PRIMARY KEY (`store_stock_order_cancel_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_재고발주취소요청';

-- Dumping data for table kjw4968.store_stock_order_cancel_request: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_stock_order_cancel_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_stock_order_cancel_request` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_order_cancel_request_list
CREATE TABLE IF NOT EXISTS `store_stock_order_cancel_request_list` (
  `store_stock_order_cancel_list_code` varchar(50) NOT NULL COMMENT '통합_재고발주취소_리스트코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_stock_order_cancel_code` varchar(50) NOT NULL COMMENT '통합_재고발주취소_코드',
  `root_stock_code` varchar(50) NOT NULL COMMENT '본_본사재고_코드',
  `store_stock_order_count` int(10) NOT NULL COMMENT '통합_재고발주_수량',
  PRIMARY KEY (`store_stock_order_cancel_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_재고발주취소요청_재고리스트';

-- Dumping data for table kjw4968.store_stock_order_cancel_request_list: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_stock_order_cancel_request_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_stock_order_cancel_request_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_order_list
CREATE TABLE IF NOT EXISTS `store_stock_order_list` (
  `store_stock_order_list_code` varchar(50) NOT NULL COMMENT '통합_재고발주_리스트코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_stock_order_code` varchar(50) NOT NULL COMMENT '통합_재고발주_코드',
  `root_stock_code` varchar(50) NOT NULL COMMENT '본_본사재고_코드',
  `store_stock_order_count` int(10) NOT NULL COMMENT '통합_재고발주_수량',
  PRIMARY KEY (`store_stock_order_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_재고발주_리스트';

-- Dumping data for table kjw4968.store_stock_order_list: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_stock_order_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_stock_order_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_purchase_check
CREATE TABLE IF NOT EXISTS `store_stock_purchase_check` (
  `store_stock_purchase_ check_code` varchar(50) NOT NULL COMMENT '체_체인점재고매입검수_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점 코드',
  `store_business_company_code` varchar(50) NOT NULL COMMENT '체_체인점거래처_코드',
  `store_stock_purchase_recive_date` date NOT NULL COMMENT '체_체인점재고매입검수_수령날짜',
  `store_stock_purchase_recive_time` time NOT NULL COMMENT '체_체인점재고매입검수_수령시간',
  PRIMARY KEY (`store_stock_purchase_ check_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='체_체인점재고매입검수';

-- Dumping data for table kjw4968.store_stock_purchase_check: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_stock_purchase_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_stock_purchase_check` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_purchase_check_list
CREATE TABLE IF NOT EXISTS `store_stock_purchase_check_list` (
  `store_stock_purchase_check_list_code` varchar(50) NOT NULL COMMENT '체_체인점재고매입검수_리스트코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_stock_purchase_check_code` varchar(50) NOT NULL COMMENT '체_체인점재고매입검수_코드',
  `root_stock_code` varchar(50) NOT NULL COMMENT '본_본사재고_코드',
  `store_stock_purchase_check_count` int(10) NOT NULL COMMENT '체_체인점재고매입검수_수령재고수량',
  PRIMARY KEY (`store_stock_purchase_check_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='체_체인점재고매입검수리스트';

-- Dumping data for table kjw4968.store_stock_purchase_check_list: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_stock_purchase_check_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_stock_purchase_check_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_return_end
CREATE TABLE IF NOT EXISTS `store_stock_return_end` (
  `store_stock_return_request_list_code` varchar(50) NOT NULL COMMENT '통합_재고반품완료_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_stock_warehousing_end_date` date NOT NULL COMMENT '체_체인점재고입고완료_날짜',
  `store_stock_warehousing_end_time` time NOT NULL COMMENT '체_체인점재고입고완료_시간',
  `store_return_stock_end_reason` text NOT NULL COMMENT '통합_재고반품신청_사유',
  `store_return_stock_end_date` date NOT NULL COMMENT '통합_재고반품완료_날짜',
  `store_stock_return_end_time` time NOT NULL COMMENT '통합_재고반품완료_시간',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_stock_return_request_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_재고반품완료';

-- Dumping data for table kjw4968.store_stock_return_end: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_stock_return_end` DISABLE KEYS */;
INSERT IGNORE INTO `store_stock_return_end` (`store_stock_return_request_list_code`, `store_code`, `store_stock_warehousing_end_date`, `store_stock_warehousing_end_time`, `store_return_stock_end_reason`, `store_return_stock_end_date`, `store_stock_return_end_time`, `store_deadline_check`) VALUES
	('returnend001', 'store001', '2018-09-01', '00:00:00', '유통기한', '2018-09-04', '00:00:00', ''),
	('returnend002', 'store001', '2018-09-02', '00:00:00', '상태이상', '2018-09-03', '00:00:00', ''),
	('returnend003', 'store002', '2018-09-01', '00:00:00', '판매중단', '2018-09-04', '00:00:00', ''),
	('returnend004', 'store002', '2018-09-06', '00:00:00', '유통기한', '2018-09-06', '00:00:00', ''),
	('returnend005', 'store003', '2018-09-04', '00:00:00', '유통기한', '2018-09-05', '00:00:00', '');
/*!40000 ALTER TABLE `store_stock_return_end` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_return_end_list
CREATE TABLE IF NOT EXISTS `store_stock_return_end_list` (
  `store_stock_return_end_list_code` varchar(50) NOT NULL COMMENT '통합_재고반품완료_리스트코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_stock_return_end_code` varchar(50) NOT NULL COMMENT '통합_재고반품완료_코드',
  `root_stock_code` varchar(50) NOT NULL COMMENT '본_본사재고_코드',
  `store_stock_return_end_count` int(10) NOT NULL COMMENT '통합_재고반품완료수량',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_stock_return_end_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_반품완료재고리스트';

-- Dumping data for table kjw4968.store_stock_return_end_list: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_stock_return_end_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_stock_return_end_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_return_request
CREATE TABLE IF NOT EXISTS `store_stock_return_request` (
  `store_stock_return_request_code` varchar(50) NOT NULL COMMENT '통합_재고반품신청_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_stock_warehousing_end_date` date NOT NULL COMMENT '체_체인점재고입고완료_날짜',
  `store_stock_warehousing_end_time` time NOT NULL COMMENT '체_체인점재고입고완료_시간',
  `store_stock_return_request_reason` text NOT NULL COMMENT '통합_재고반품신청_사유',
  `store_stock_return_request_date` date NOT NULL COMMENT '통합_재고반품신청_날짜',
  `store_stock_return_request_time` time NOT NULL COMMENT '통합_재고반품신청_시간',
  `store_stock_return_handling_state` varchar(50) NOT NULL DEFAULT 'N' COMMENT '통합_재고반품신청_처리상태',
  `store_stock_return_handling_result` text NOT NULL COMMENT '통합_재고반품신청_처리결과',
  PRIMARY KEY (`store_stock_return_request_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_재고반품신청';

-- Dumping data for table kjw4968.store_stock_return_request: ~5 rows (대략적)
/*!40000 ALTER TABLE `store_stock_return_request` DISABLE KEYS */;
INSERT IGNORE INTO `store_stock_return_request` (`store_stock_return_request_code`, `store_code`, `store_stock_warehousing_end_date`, `store_stock_warehousing_end_time`, `store_stock_return_request_reason`, `store_stock_return_request_date`, `store_stock_return_request_time`, `store_stock_return_handling_state`, `store_stock_return_handling_result`) VALUES
	('storereturn001', 'store001', '2018-09-01', '00:00:00', '유통기한', '2018-09-04', '00:00:00', 'N', ''),
	('storereturn002', 'store001', '2018-09-02', '00:00:00', '상태이상', '2018-09-03', '00:00:00', 'N', ''),
	('storereturn003', 'store002', '2018-09-01', '00:00:00', '판매중단', '2018-09-04', '00:00:00', 'N', ''),
	('storereturn004', 'store003', '2018-09-06', '00:00:00', '유통기한', '2018-09-06', '00:00:00', 'N', ''),
	('storereturn005', 'store004', '2018-09-04', '00:00:00', '유통기한', '2018-09-05', '00:00:00', 'N', '');
/*!40000 ALTER TABLE `store_stock_return_request` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_return_request_list
CREATE TABLE IF NOT EXISTS `store_stock_return_request_list` (
  `store_stock_return_request_list_code` varchar(50) NOT NULL COMMENT '통합_재고반품신청_리스트코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_stock_return_request_code` varchar(50) NOT NULL COMMENT '통합_재고반품신청_코드',
  `root_stock_code` varchar(50) NOT NULL COMMENT '본_본사재고코드',
  `store_stock_return_request_count` int(10) NOT NULL COMMENT '통합_재고반품신청_수량',
  PRIMARY KEY (`store_stock_return_request_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_재고반품신청_리스트';

-- Dumping data for table kjw4968.store_stock_return_request_list: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_stock_return_request_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_stock_return_request_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_warehousing_end
CREATE TABLE IF NOT EXISTS `store_stock_warehousing_end` (
  `store_stock_warehousing_end_code` varchar(50) NOT NULL COMMENT '체_체인점재고입고완료_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점 코드',
  `store_business_company_code` varchar(50) NOT NULL COMMENT '체_체인점거래처_코드',
  `store_stock_warehousing_end_date` date NOT NULL COMMENT '체_체인점재고입고완료_날짜',
  `store_stock_warehousing_end_time` time NOT NULL COMMENT '체_체인점재고입고완료_시간',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_stock_warehousing_end_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점재고입고완료';

-- Dumping data for table kjw4968.store_stock_warehousing_end: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_stock_warehousing_end` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_stock_warehousing_end` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_stock_warehousing_end_list
CREATE TABLE IF NOT EXISTS `store_stock_warehousing_end_list` (
  `store_stock_warehousing_end_list_code` varchar(50) NOT NULL COMMENT '체_체인점재고입고완료_리스트코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_stock_warehousing_end_code` varchar(50) NOT NULL COMMENT '체_체인점재고입고완료_코드',
  `root_stock_code` varchar(50) NOT NULL COMMENT '본_본사재고_코드',
  `store_stock_warehousing_end_count` int(10) NOT NULL COMMENT '체_체인점재고입고완료_재고수량',
  `store_deadline_check` varchar(50) NOT NULL DEFAULT '마감전' COMMENT '체_체인점마감검사',
  PRIMARY KEY (`store_stock_warehousing_end_list_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점재고입고완료리스트';

-- Dumping data for table kjw4968.store_stock_warehousing_end_list: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_stock_warehousing_end_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_stock_warehousing_end_list` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_time_total_sales
CREATE TABLE IF NOT EXISTS `store_time_total_sales` (
  `store_time_total_sales_code` varchar(50) NOT NULL COMMENT '통합_체인점매출집계시간별_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_time_total_sales_netsales` int(10) NOT NULL COMMENT '통합_체인점매출집계시간별_순매출',
  `store_time_total_sales_cash` int(10) NOT NULL COMMENT '통합_체인점매출집계시간별_현금결제금액',
  `store_time_total_sales_card` int(10) NOT NULL COMMENT '통합_체인점매출집계시간별_카드결제금액',
  `store_time_total_sales_time` time NOT NULL COMMENT '통합_체인점매출집계시간별_판매시간',
  `store_time_total_sales_date` date NOT NULL COMMENT '통합_체인점매출집계시간별_매출집계등록날짜',
  PRIMARY KEY (`store_time_total_sales_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='체_체인점매출집계(마감후)_시간별';

-- Dumping data for table kjw4968.store_time_total_sales: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_time_total_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_time_total_sales` ENABLE KEYS */;


-- 테이블 kjw4968의 구조를 덤프합니다. store_visited_total_sales
CREATE TABLE IF NOT EXISTS `store_visited_total_sales` (
  `store_visited_total_sales_code` varchar(50) NOT NULL COMMENT '통합_체인점매출집계주문별_코드',
  `store_code` varchar(50) NOT NULL COMMENT '본_체인점코드',
  `store_visited_total_sales_method` varchar(50) NOT NULL COMMENT '통합_체인점매출집계주문별_방법',
  `store_visited_total_sales_count` int(10) NOT NULL COMMENT '통합_체인점매출집계주문별_횟수',
  `store_visited_total_sales_total_price` int(10) NOT NULL COMMENT '통합_체인점매출집계주문별_판매금액',
  `store_visited_total_sales_ymd` date NOT NULL COMMENT '통합_체인점매출집계주문별_판매년월일',
  `store_visited_total_sales_date` date NOT NULL COMMENT '통합_체인점매출집계주문별_매출집계등록날짜',
  PRIMARY KEY (`store_visited_total_sales_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='통합_체인점매출집계(마감후)_온오프라인주문방법별';

-- Dumping data for table kjw4968.store_visited_total_sales: ~0 rows (대략적)
/*!40000 ALTER TABLE `store_visited_total_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_visited_total_sales` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
