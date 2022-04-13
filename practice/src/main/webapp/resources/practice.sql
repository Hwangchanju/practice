select * from tbaxnm003;
select * from tbaxpm001;
select * from tbaxsm001;
select * from tbaxbm001;



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
    '가나다',
    'Hoon',
    '123123',
    '0311234567',
    '01012341234',
    '서울시 중랑구',
    '1-11-4',
    '20220214',
    '20220214',
    'N'
);

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
    '11111284',
    '11111322',
    '1111114563',
    '라마바',
    'JjangGu',
    '123123',
    '021234567',
    '01045674567',
    '서울시 마포',
    '1-13-8',
    '20220320',
    '20220320',
    'N'
);


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
    '1111632',
    '11113252',
    '1111321586',
    '사아자',
    'CheolSu',
    '123123',
    '0321234567',
    '01078907890',
    '서울시 중구',
    '1-17-4',
    '20220401',
    '20220401',
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
    '133532'
    ,'12342123'
    ,'가나다'
    ,'HongGil'
    ,'123123'
    ,'023221562'
    ,'01012341234'
    ,'서울 강동구'
    ,'1-11-4'
    ,'546789'
    ,'20220216'
    ,'20220216'
    ,'N'
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
    '132432'
    ,'12342123'
    ,'라마바'
    ,'HongGu'
    ,'123123'
    ,'023368562'
    ,'01045674567'
    ,'서울 양천구'
    ,'1-13-8'
    ,'546789'
    ,'20220216'
    ,'20220216'
    ,'N'
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
    '144132'
    ,'12342123'
    ,'크어엌'
    ,'OhSung'
    ,'123123'
    ,'023223298'
    ,'01078907890'
    ,'서울 서초구'
    ,'1-17-4'
    ,'546789'
    ,'20220310'
    ,'20220310'
    ,'N'
);

INSERT INTO tbaxpm001 (
    pdt_sqno,
    pdt_nm,
    pdt_no,
    bzpp_order_no,
    del_yn
) VALUES (
    '123452'
    ,'가나파이'
    ,'3668424'
    ,'1-13-8'
    ,'N'
);

INSERT INTO tbaxpm001 (
    pdt_sqno,
    pdt_nm,
    pdt_no,
    bzpp_order_no,
    del_yn
) VALUES (
    '352752'
    ,'빅맥'
    ,'3668424'
    ,'1-17-4'
    ,'N'
);

INSERT INTO tbaxpm001 (
    pdt_sqno,
    pdt_nm,
    pdt_no,
    bzpp_order_no,
    del_yn
) VALUES (
    '957862'
    ,'메로나'
    ,'3668424'
    ,'1-11-4'
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

commit;