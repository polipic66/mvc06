<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script type="text/javascript">

 function space()
 {
  if (event.keyCode==32)
  {
   event.returnValue=false;
  }
 }

 function sutja()
 {
  if ((event.keyCode<48)||(event.keyCode>57) )
  {
   alert ("숫자로 입력해주세요.");	
   event.returnValue = false;	
  }
 }
   
  function join()
  {
	 
	 if(document.f1.check[0].checked){
  		var idin = $('#idin').val();
		var pw1 = $('#pw1').val();
		var pw2 = $('#pw2').val();
		var name = $('#name').val();
		var tel1 = $('#tel1').val();
		var tel2 = $('#tel2').val();
		var tel3 = $('#tel3').val();
		var bir1 = $('#bir1').val();
		var bir2 = $('#bir2').val();
		var bir3 = $('#bir3').val();
	
		if(idin==""){
				alert("사용하실 아이디를 입력해주세요");
				$('#idin').val("");
				$("#idin").focus();
			}else if(idin.length<6){
				alert("아이디는 6글자이상으로 해주세요");
			}else if(idin.length>=13){
				alert("아이디는 12자 이하로해주세요");
			}else if(f1.idin.readOnly == false){
			    alert("중복확인을 해주세요.");
			}else if(pw1==""){
				alert("비밀번호를 입력해주세요");
				$('#pw1').val("사용하실 비밀번호");
				$("#pw1").focus();
			}else if(pw1.length<6){
				alert("비밀번호는 6글자이상으로 해주세요");
			}else if(pw1.length>=13){
				alert("비밀번호는 12자 이하로해주세요");
			}else if(pw2==""){
				alert("비밀번호를 입력해주세요");
				$('#pw2').val("사용하실비밀번호");
				$("#pw2").focus();
			}else if(pw2.length<6){
				alert("비밀번호는 6글자이상으로 해주세요");
			}else if(pw2.length>=13){
				alert("비밀번호는 12자 이하로해주세요");
			}else if($('#pw1').val()!=$('#pw2').val()){
				alert("비밀번호가 다릅니다.");
			}else if(name==""){
				alert("이름을 입력해주세요");
				$('#name').val("이름을입력하세요");
				$("#name").focus();
			}else if(tel1==""){
				alert("전화번호 앞자리를 입력하세요.");				
				$("#tel1").focus();
			}else if(tel1.length!=3){
				alert("앞자리는 3자리입니다.");
			}else if(tel2==""){
				alert("전화번호 중간자리를 입력하세요.");				
				$("#tel2").focus();
			}else if(tel2.length<3){
				alert("중간자리는 3자리 혹은 4자리입니다.");
			}else if(tel2.length>4){
				alert("중간자리는 3자리 혹은 4자리입니다.");
			}else if(tel2==""){
				alert("전화번호 중간자리를 입력하세요.");				
				$("#tel3").focus();
			}else if(tel3.length<3){
				alert("중간자리는 3자리 혹은 4자리입니다.");
			}else if(tel3.length>4){
				alert("중간자리는 3자리 혹은 4자리입니다.");
			}else if(bir1==""){
				alert("전화번호 끝자리를 입력하세요.");				
				$("#bir1").focus();
			}else if(bir1.length!=4){
				alert("4자리로 입력하세요.");
			}else if(bir1<1900){
				alert("태어난 년도를 다시 입력해주세요");
				$("#bir1").focus();
			 }else if(bir1>2010){
				alert("태어난 년도를 다시 입력해주세요");
				$("#bir1").focus();
			}else if(bir2==""){
				alert("태어난 달을 입력하세요.");				
				$("#bir2").focus();
			}else if(bir2.length!=2){
				alert("태어난 달을2자리로 입력하세요");
			}else if(bir2>12){
				alert("태어난 달을 다시 입력해주세요");
			 }else if(bir3==""){
				alert("태어날 일짜을 입력하세요.");				
				$("#bir3").focus();
			}else if(bir3.length!=2){
				alert("태어난 일짜를 2자리로 입력하세요.");
			}else if(bir3>31){
				alert(" 태어난 일짜을 다시 입력해주세요");
			}else{
				document.f1.submit();
			}
  			}
	 else{
  			alert("회원가입에 동의해주세요.");
  	}
  }
  
  function idcheck()
  {
   if(f1.idin.value.length<6)
   {
    alert("아이디를 6글자 이상 입력하세요.")
    document.f1.idin.focus()
    return true;
   }
   else
   {
    ID = document.f1.idin.value
    window.open('member/idcheck.jsp?ID='+ID, 'idcheck', 'width=300, height=150');
    return false;
   }
  }
  
  function mone()
  {
   if(f1.mail_3.value=="direct1")
   {
    document.f1.mail_2.focus()
    document.f1.mail_2.value=""
    f1.mail_2.readOnly = false;
    return true;
   }
   else
   {
    f1.mail_2.value=document.f1.mail_3.value
    f1.mail_2.readOnly = true;
    return false;
   }
  }

  function nextgo()
  {
   if(f1.tel2.value.length>=4)
   {
    document.f1.tel3.focus();
   }
  }
 
  
    	
	
 </script>



</head>
<body>
<form name="f1" action="insert1.do" method="post">
 <div id="joinform"><b>회원가입</b></div>                
                <div id="agreeform"><span><input name="check" type="radio" value="1" onclick="doOpenCheck(this);" > <b>동의 함</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input name="check" type="radio" value="2" onclick="doOpenCheck(this);"><b>동의 안함</b></span></div><br>
              <textarea readonly="readonly" name="ourtext" style="width:100%;height:100; border:1; overflow:visible;text-overflow:ellipsis;"
                        rows="20">
제1조(목적) 이 약관은 ○○학원(이하 ‘학원’이라 합니다)과 학원이 제공하는 교습과정을 수강하는 자(이하 ‘수강자’라 합니다)간의 교습 및 수강에 관한 제반사항을 규정하는 것을 목적으로 합니다.

제2조(관계법령) 이 약관에 규정되지 아니한 사항 또는 이 약관의 해석에 관하여 다툼이 있는 사항에 대해서는 학원과 수강자가 합의하여 결정하되, 합의가 이루어지지 아니한 경우에는 학원의설립?운영및과외교습에관한법률, 약관의규제에관한법률, 할부거래에관한법률, 민법, 상법 등 관계법령 및 공정 타당한 일반관례에  따릅니다.

제3조(게시의무)

  ① 학원은 수강자가 보기 쉬운 곳에 다음 각호의 사항을 게시합니다.

    1. 강사의 인적사항
    2. 교습과정(과목)의 현황과 개요
    3. 교습과정(과목)별 수강료 및 일체의 부대비용(교재대금, 실습재료비 등)
    4. 교습과정(과목)별 강의시간
    5. 이 약관
    6. 기타 수강자에게 필요한 사항

  ② 학원은 제1항 제3호의 규정에 의한 수강료 및 부대비용(이하 ‘수강료등’이라 합니다)을 허위로 게시하거나 이를 초과하여 징수하지 아니합니다.

제4조(수강신청 및 설명?교부)

  ① 수강자는 학원이 정한 절차에 의하여 수강신청을 하여야 하며, 수강신청서를 제출하고 수강료등을 납부하여야 합니다.

  ② 학원은 수강자가 수강신청을 하기 전에 이 약관 제5조 내지 제12조의 규정을 설명하고, 수강료 이외에 교재대금?실습재료비 등의 부대비용을 부담해야 하는 경우에는 그 내역을 고지합니다.

  ③ 학원은 수강신청서와 수강료등을 받은 때에는 수강자에게 영수증 및 다음 각호의 사항이 기재된 수강증을 교부하며, 수강자가 요구할 경우에는 이 약관도 교부합니다.

    1. 교습과정(과목)
    2. 강의시간
    3. 기타 계약의 중요 사항

제5조(수강료등)

  ① 학원은 수강자가 수강신청을 할 때 수강료등을 청구합니다. 다만, 분할지급을 하기로 약정한 경우에는 수강신청을 할 때 1회 분할 수강료등을 청구하고, 제2회 이후의 분할 수강료등은 약정한 일자에 청구합니다.

  ② 수강자는 수강료등을 신용카드로 지급할 수 있습니다.

  ③ 교재대금은 교재의 구입을 원하는 수강자에게만 청구합니다.

제6조(수강증)

  ① 수강자는 학원의 요구가 있을 때에는 수강증을 제시하여야 합니다.

  ② 수강자가 수강증을 분실한 경우에는 지체없이 학원에 그 사실을 통지하고, 학원은 허위신고?부당사용 등의 특별한 사유가 없는 한 재교부합니다.

  ③ 수강자는 수강증을 타인에게 빌려주거나 부당하게 사용해서는 안되며, 이를 위반하는 경우에는 학원은 퇴학을 명할 수 있습니다.

제7조(강의시간 및 강사)

  ① 학원은 교습과정(과목), 강의시간, 강사 등을 구체적으로 정하고 이를 성실히 준수합니다.

  ② 학원은 예정된 강의시간 또는 강사를 임의로 변경할 수 없습니다. 다만, 불가피하게 변경하는 경우에는 사전에 이를 수강자에게 고지합니다.

  ③ 수강자는 제2항 단서의 규정에 의해 변경된 강의시간에 또는 변경된 강사에게 수강하는 것을 원하지 않는 경우에는 그 변경된 강의개시전에 계약을 해지할 수 있습니다.

제8조(휴강)


  ① 학원의 휴강일은 다음 각호와 같습니다.

    1. 국경일 및 공휴일
    2. 정기휴일: 개원기념일(00월 00일), 00기념일(00월 00일)

  ② 학원은 제1항이 규정하는 날을 제외하고는 임의로 휴강을 하지 않습니다. 다만, 불가피하게 휴강을 하게 될 경우에는 보강을 실시하며, 이 경우 제7조 제2항 단서 및 제3항의 규정을 준용합니다.

제9조(수강의 연기)

  ① 수강자는 수강신청후 부득이한 사정으로 수강할 수 없게 된 경우에는 교습개시일 전에 수강의 연기를 신청할 수 있습니다.

  ② 수강자가 수강의 연기를 신청하기 위해서는 그 사유를 기재한 신청서와 수강증을 학원에 제출하여야 합니다.

  ③ 학원은 제2항의 연기신청서를 받은 경우에는 다음 번 교습과정(과목)을 개설하기가 어려운 사정이 있는 경우를 제외하고는 수강의 연기를 허락합니다.

  ④ 학원이 수강의 연기를 허락한 경우에는 수강증에 강의시간등의 변경사항을 기재하여 이를 수강자에게 재교부합니다.

제10조(수강신청의 철회)

  ① 수강자는 교습개시일 전에 수강신청을 철회할 수 있습니다.

  ② 수강자가 다음 각호의 요건을 모두 갖춘 경우에는 수강증을 교부받은 날(수강증이 교부되지 아니한 경우에는 교습개시일)로부터 7일 이내에 수강신청을 철회할 수 있습니다.

    1. 교습기간이 2개월 이상이고,
    2. 수강료등의 총액이 10만원을 초과하며(다만, 신용카드로 지급하는 경우에는 20만원을 초과해야 함),
    3. 수강료등을 3회 이상 분할하여 지급하는 경우

  ③ 수강자가 교습개시일 전에 수강신청을 철회한 경우에는 수강증을 학원에 반환하고, 학원은 지체없이 다음 각호의 금액을 수강자에게 환급합니다.

    1. 수강자가 납부한 수강료(이하 ‘기납부[旣納付] 수강료’라 합니다)의 전액
    2. 수강자가 교재대금 또는 실습재료비를 납부한 경우에는 그 교재대금 또는 실습재료비의 전액. 다만, 수강자가 반환하지 않거나 훼손시킨 교재의 대금 또는 재료의 비용은 환급하지 않습니다.

  ④ 수강자가 교습개시일 이후에 수강신청을 철회한 경우에는 수강증을 학원에 반환하고, 학원은 지체없이 다음 각호의 금액을 수강자에게 환급합니다.
    1.
                                                철회시까지의 교습시간수
 기납부 수량료의 전액 - 기납부 수량료의 전액 ×
                                                    전체 교습시간수

    2. 수강자가 교재대금을 납부한 경우에는 그 교재대금.  다만, 수강자가 반환하지 않거나 훼손시킨 교재의 대금은 환급하지 않습니다.
    3. 수강자가 실습재료비를 납부한 경우에는 그 실습재료비의 전액(실습을 하지 않은 경우), 또는 실습을 하지 아니한 부분의 재료비(실습을 일부한 경우). 다만, 수강자가 실습을 하지 아니한 재료로서 반환하지 않거나 훼손시킨 재료의 비용은 환급하지 않습니다.

제11조(계약의 중도해지)

  ① 수강자가 학원에 대한 행정처분(인가?등록의 취소, 일정 기간의 교습정지 등), 학원의 이전, 폐강 등 학원의 귀책사유에 의하여 수강을 계속할 수 없게 된 경우이거나, 학원의 강의시간 또는 강사의 변경으로 인해 제7조제3항 또는 제8조제2항 단서의 규정에 의하여 계약을 해지한 경우에는, 수강증을 학원에 반환하고 학원은 지체없이 다음 각호의 금액을 수강자에게 환급합니다.
    1.
 기납부 수강료의 전액
                           당해 사유 발생시 또는 해지시까지의 교습시간수
 - 기납부 수강료의 전액 ×
                                        전체 교습시간수

    2. 제10조 제4항 제2호와 제3호의 규정에 의한 교재대금과 실습재료비

  ② 수강자가 질병, 주거지의 이전, 여행 등 그의 귀책사유에 의하여 수강 포기의 의사를 표시한 경우에는 수강증을 학원에 반환하고, 학원은 지체없이 다음 각호의 금액을 수강자에게 환급합니다.
    1.
 기납부 수강료의 전액
                           수강포기 의사표시시까지의 교습월수
 - 기납부 수강료의 전액 ×
                                        전체 교습월수

    2. 제10조 제4항 제3호의 규정에 의한 실습재료비

제12조(계약의 해제)

  ① 수강자는 다음 각호의 사유가 있을 때에는 계약을 해제할 수 있습니다.

    1. 허위사실 또는 허위광고 등에 의한 계약의 체결
    2. 정원을 초과한 수강자의 교습
    3. 무자격 또는 자격미달의 강사에 의한 교습
    4. 수강료등의 허위게시 또는 초과징수
    5. 기타 수강을 현저히 곤란하게 할 정도의 부당한 교습

  ② 수강자가 제1항 각호의 사유(제4호의 사유 제외)로 인하여 계약을 해제한 경우에는 수강증을 학원에 반환하고, 학원은 지체없이 다음 각호의 금액을 수강자에게 환급합니다.

    1. 기납부 수강료의 전액(당해사유를 안후 지체없이 해제한 경우) 또는 다음의 금액(당해사유를 알고서도 계속 수강을 하다가 해제한 경우)
    1.
 기납부 수강료의 전액
                            해제시까지의 교습시간수
 - 기납부 수강료의 전액 ×
                                 전체 교습시간수

    2. 제10조 제4항 제2호와 제3호의 규정에 의한 교재대금과 실습재료비

  ③ 수강자가 제1항 제4호(수강료등의 허위게시 또는 초과징수)의 사유에 의하여 계약을 해제한 경우에는 수강증을 학원에 반환하고, 학원은 지체없이 다음 각호의 금액을 수강자에게 환급합니다.

    1. 수강자가 당해 사유를 안 후 지체없이 해제한 경우

 기납부 수강료등의 전액
 - 정당한 교재대금
 - 실습을 한 부분의 정당한 실습재료비
 - 실습을 하지 아니한 부분의 정당한 실습재료비

       다만, “정당한 교재대금”은 수강자가 당해 교재를 반환하지 않거나 훼손시킨 경우에 한하여 공제하며, “실습을 하지 아니한 부분의 정당한 실습재료비”는 수강자가 당해 실습재료를 반화하지 않거나 훼손시킨 경우에 한하여 공제합니다.
    2. 수강자가 당해 사유를 알고서도 계속 수강을 하다가 해제한 경우
       : 제1호의 규정에 의하여 산정된 금액에서 추가로 다시 다음의 금액을 공제한 금액

                         해제시까지의 교습시간수
 정당한 수강료의 전액 ×
                              전체 교습시간수


제13조(퇴학)

  ① 학원은 다음 각호의 수강자에 대하여 퇴학을 명할 수 있습니다.
     1. 강사의 교육지도에 따르지 않으며 학원 내부의 질서를 문란하게 하는 사람
     2. 품행이 불량하여 다른 수강자의 교육에 지장을 초래하는 사람
     3. 정당한 사유 없이 결석이 잦고 수강을 태만히 하는 사람
     4. 수강증을 타인에게 빌려주거나 부당하게 사용하는 사람

  ② 학원은 퇴학을 명할 경우 그 수강자로부터 수강증을 반환받고 지체없이 다음 각호의 금액을 환급합니다.

기납부 수강료의 전액
                              퇴학시까지의 교습월수
  - 기납부 수강료의 전액 ×
                                   전체 교습월수

    1.


    2. 제10조 제4항 제3호의 규정에 의한 실습재료비

제14조(손해배상)

  ① 수강자가 제12조 제2항 또는 제3항의 규정에 의한 환급금을 받은 경우에도 제12조 제1항 각호의 사유로 인한 손해가 있을 때에는 학원은 그 손해를 배상합니다.

  ② 수강자가 고의 또는 과실로 학원의 시설이나 교습기자재를 멸실?훼손한 경우에는 이로 인한 학원의 손해를 배상하여야 합니다.

제15조(천재지변등)

  ① 천재지변등 불가항력적인 사유가 발생한 경우에는 학원은 임시휴강을 하거나 교습을 중단할 수 있습니다. 이 경우 수강자는 제4항의 규정에 의한 환급금 이외에 별도의 손해배상을 청구할 수 없습니다.

  ② 학원이 임시휴강을 한 경우에는 당해 불가항력적 사유가 종료한 후에 보강을 실시하며, 수강자는 보강 실시 전에 계약을 해지할 수 있습니다.

  ③ 학원은 임시휴강을 한 경우에도 당해 불가항력적 사유가 상당 기간 지속되거나 보강을 실시하기가 어려운 경우에는 교습을 중단할 수 있습니다.

  ④ 학원이 임시휴강을 한 경우에는 수강자가 계약을 해지한 때 지체없이 다음 각호의 금액을 환급하며, 학원이 교습을 중단하기로 결정한 경우에는 그 결정한 때 지체없이 다음의 각호의 금액을 환급합니다.

 기납부 수강료의 전액
                           불가항력적인 사유 발생시까지의 교습시간수
 - 기납부 수강료의 전액 ×
                                      전체 교습시간수

    1.


     2. 제10조 제4항 제2호와 제3호의 규정에 의한 교재대금과 실습재료비

제16조(관할법원) 학원과 수강자간의 분쟁에 관한 소송은 민사소송법상의 관할에 관한 규정에 따릅니다.

                </textarea>        
        <div id="privacy">
          
            <div id="id"><b>ID</b>&nbsp;&nbsp;&nbsp;
            <input id="idin" name="idin" type="text" size="16" value="">
            <button type="button" id="" onclick="idcheck();">중복확인</button>        
            </div>
            
            <div class="pw"><b>PW</b>&nbsp;&nbsp;&nbsp;
            <input id="pw1" name="pw1" type="password" size="16"></div>    
            
            <div class="pw2"><b>PW확인</b>&nbsp;&nbsp;&nbsp;
            <input id="pw2" name="pw2" type="password" size="16"></div>
            
            <div class="name"><b>이름</b>&nbsp;&nbsp;&nbsp;
            <input id="name" name="name" type="text"  size="16"></div>
            
            <div class="tel"><b>전화번호</b>&nbsp;&nbsp;&nbsp;
            <input id="tel1" name="tel1" type="text" size="1"><b>-</b>
            <input id="tel2" name="tel2" type="text" size="1" onkeypress="nextgo();"><b>-</b>
            <input id="tel3" name="tel3" type="text" size="1"></div>
            
            <div class="birth"><b>생년월일</b>&nbsp;&nbsp;&nbsp;
            <input id="bir1" name="bir1" type="text" size="1"><b>년</b>
            <input id="bir2" name="bir2" type="text" size="1"><b>월</b>
            <input id="bir3" name="bir3" type="text" size="1"><b>일</b></div>
       
            <div class="button">
                 <button class="btn1" type="button" onclick="join();">확 인</button>
                 <button class="btn2" type="reset"> 취 소 </button>
            </div>
           
                </div>
         

</form>
</body>
</html>