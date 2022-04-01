select
    n03.mbr_no          --회원명    3
    , n03.mbr_user_id   --회원아이디 3
    , n03.mbr_phone     --회원폰번호 3
    , b01.bzpp_order_no --주문번호  1, 3, 4
    , p04.pdt_no        --제품번호  4
    , p04.pdt_nm        --제품명 4
    , b01.bzpp_nm       --사업자명 1
    , b01.bzpp_phone    --사업자폰 1
    , b01.bzpp_addr     --사업자주소 1
    , b01.del_yn        --삭제유무 3
    from 
        tbaxbm001 b01
        , tbaxnm003 n03
        , tbaxpm001 p04
    where 1 = 1
    and
    n03.bzpp_order_no = b01.bzpp_order_no
    and
    p04.bzpp_order_no = b01.bzpp_order_no;
    
    
select
	n03.mbr_no
	, b01.bzpp_order_no
	, b01.bzpp_nm
	, n03.mbr_phone
	, p04.pdt_nm
	, p04.pdt_no
	, n03.mbr_no
	from
		tbaxbm001 b01
		, tbaxnm003 n03
		, tbaxpm001 p04
	where 1 = 1
	and
	n03.bzpp_order_no = b01.bzpp_order_no
	and
	p04.bzpp_order_no = b01.bzpp_order_no;
	

INSERT INTO tbaxbm001 (
    bzpp_sqno,
    pdt_sqno,
    bzpp_no,
    bzpp_nm,
    bzpp_user_id,
    bzpp_user_pwd,
    bzpp_tel,
    bzpp_phone,
    bzpp_addr,
    bzpp_order_no,
    update_date,
    lst_lgn_date,
    del_yn
) VALUES (
    '11111113',
    '11111113',
    '1111111185',
    '훈이',
    'Hoon',
    '123123',
    '0311234567',
    '01712345678',
    '서울시 중랑구',
    '111177',
    '20220214',
    '20220214',
    'N'
);
	

INSERT INTO tbaxnm003 (
    mbr_sqno,
    mbr_no,
    mbr_nm,
    mbr_user_id,
    mbr_user_pwd,
    mbr_tel,
    mbr_phone,
    mbr_addr,
    bzpp_order_no,
    site_sqno,
    lst_lgn_date,
    update_date,
    del_yn
) VALUES (
    '123228'
    ,'mbr_no_3'
    ,'엄홍길'
    ,'hk3321'
    ,'123123'
    ,'0236637277'
    ,'0106620472'
    ,'서울 강동구'
    ,'111180'
    ,'546789'
    ,'20220216'
    ,'20220216'
    ,'N'
);

INSERT INTO tbaxpm001 (
    pdt_sqno,
    pdt_nm,
    pdt_no,
    bzpp_order_no,
    del_yn
) VALUES (
    '3546752'
    ,'빅맥'
    ,'3668424'
    ,'111160'
    ,'N'
);

INSERT INTO tbaxsm001 (
    site_sqno,
    bzpp_sqno,
    mbr_sqno,
    site_no,
    site_nm,
    site_tel,
    site_addr,
    update_date,
    del_yn
) VALUES (
    '62134442'
    ,'95321341'
    ,'752234'
    ,'231656112'
    ,'다음'
    ,'023242621'
    ,'www.daum.net'
    ,'20220315'
    ,'N'
);
