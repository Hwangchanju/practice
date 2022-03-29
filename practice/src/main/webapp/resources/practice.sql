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