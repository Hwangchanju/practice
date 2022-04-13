<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 데이터 조회 </title>
<script src="./resources/jquery.js"></script>
</head>
<script>
	
	function selectBtn(){
		
		alert("시작");
				
		$.ajax({
			type:"POST"
			, contentType:'application/json'
			, dataType:"json"
			, url:"select_ok"
			, data:JSON.stringify({
				"mbr_nm":document.getElementById("mbr_nm").value
				, "bzpp_order_no":document.getElementById("bzpp_order_no").value
				, "bzpp_nm":document.getElementById("bzpp_nm").value
				, "mbr_phone":document.getElementById("mbr_phone").value
				, "pdt_nm":document.getElementById("pdt_nm").value
				, "pdt_no":document.getElementById("pdt_no").value
				, "del_yn":document.getElementById("del_yn").value
			})
			, success:function(data){
				
				if(data == null){
					alert("해당 데이터는 존재하지 않습니다.");
				}else{
					alert("출력");
					
					$.each(data, function(index, item){
						$(".result").append(item.mbr_nm+"&emsp;");
						$(".result").append(item.bzpp_order_no+"&emsp;&emsp;");
						$(".result").append(item.bzpp_nm+"&emsp;&emsp;");
						$(".result").append(item.mbr_phone+"&emsp;");
						$(".result").append(item.pdt_nm+"&emsp;&emsp;");
						$(".result").append(item.pdt_no+"&emsp;&emsp;");
						$(".result").append(item.del_yn+"<br/>");
					});
				}
			}
			, error:function(){
				alert('실패!');
			}
		});
		
	}
	
	
</script>
<body>
	<div>
	<form action="select_ok">
		회원명 : <input type="text" id="mbr_nm" name="mbr_nm" maxlength="20" onKeyup="this.value=this.value.replace(/[^가-힣ㄱ-ㅎㅏ-ㅣ]/g,'');">
		주문번호 : <input type="text" id="bzpp_order_no" name="bzpp_order_no" maxlength="6" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');">
		사업자명 : <input type="text" id="bzpp_nm" name="bzpp_nm" maxlength="20" onKeyup="this.value=this.value.replace(/[^가-힣ㄱ-ㅎㅏ-ㅣ]/g,'');">
		회원휴대폰번호 : <input type="text" id="mbr_phone" name="mbr_phone" maxlength="13" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');">
		제품명 : <input type="text" id="pdt_nm" name="pdt_nm"> <br/>
		제품번호 : <input type="text" id="pdt_no" name="pdt_no" maxlength="10" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');">
		삭제유무 : <select name="del_yn" id="del_yn"> 
				<option value="Y">Y</option> <option value="N" selected>N</option>
		 		</select>&nbsp;&nbsp;
				<input type="button" value="조회" onclick="selectBtn()">
	</form>
	</div>
	<br/>
	<div>
		<p>회원명&emsp;주문번호&emsp;사업자명&emsp;휴대폰번호&emsp;&nbsp;&nbsp;제품명&emsp;제품번호&emsp;삭제유무</p>
	</div>
	<div class="result"> </div>
	
	
	
</body>
</html>