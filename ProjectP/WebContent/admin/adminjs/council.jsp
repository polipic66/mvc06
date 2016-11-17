<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리 > LMS 상담 페이지</title>
<link rel="stylesheet" href="admin/admincss/council.css">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript"> 
  $(document).ready(function(){
	 $("#question").attr("style","display:none;");
	 $("#tbl .tr .titletd").attr("style","cursor:hand;cursor:pointer;");
	 $("#tbl .tr .titletd").on("click",function(){
		    $("#question").attr("style","display:block;");
		    
		    var url = "couitem.do";
		    
		    var content = $(this).html();
			//alert(content);
		    var str  = content.split("아이디xxx");
	        var str1 = '</span>';
	        var paramval = str[1].replace(str1,"");

			//alert(paramval);
		    
		    //alert(content);
		    //alert(contenttemp[1]);
		    
		    //var paramval = contenttemp[1].replace(str1,"");
		    var params = "idx="+paramval;
		    
		    //alert(contenttemp[1]);
		    //alert(paramval);
		    //alert(params);
		    $.ajax({ 
		    	type:"POST",
		    	url:url,
		    	data:params,
				dataType: 'text',
				success:function(data){
					//alert(data);
					$("#question").html(data);
					//var text = data;
					//data = text.substring(text.indexOf('<body>')+'<body>'.length,text.indexOf('</body>'));
					//alert(data);
					//$('.content>div').append(data);
				}, 
				error:function(e){
					alert(e.responseText);
				}
			});
		    
	    }); 
	 
	 $("#tbl .tr td #contentViewCou").on("click",function(){
		 $("#tbl .tr .titletd").attr("style","cursor:hand;cursor:pointer;");
		 $("#tbl .tr .titletd").on("click",function(){
			    $("#question").attr("style","display:block;");
			    
			    var url = "couitem.do";
			    
			    var content = $(this).html();
				//alert(content);
			    var str  = content.split("아이디xxx");
		        var str1 = '</span>';
		        var paramval = str[1].replace(str1,"");

				//alert(paramval);
			    
			    //alert(content);
			    //alert(contenttemp[1]);
			    
			    //var paramval = contenttemp[1].replace(str1,"");
			    var params = "idx="+paramval;
			    
			    //alert(contenttemp[1]);
			    //alert(paramval);
			    //alert(params);
			    $.ajax({ 
			    	type:"POST",
			    	url:url,
			    	data:params,
					dataType: 'text',
					success:function(data){
						//alert(data);
						$("#question").html(data);
						//var text = data;
						//data = text.substring(text.indexOf('<body>')+'<body>'.length,text.indexOf('</body>'));
						//alert(data);
						//$('.content>div').append(data);
					}, 
					error:function(e){
						alert(e.responseText);
					}
				});
			    
		    }); 
		 
			//alert($(this).html());
			var content = $(this).html();
			//alert(content);
			//var contentre = content.replace("내용보기","내용닫기");
			//contentre.replace('style="display:none;"','style="display:table-cell;"');
			//var contentre = content.replace("내용닫기","내용보기");
			//contentre.replace('style="display:table-cell;"','style="display:none;"');
     	//var str1 = '내용보기<span style="display:none">';
			//var str2 = '</span>';
			
			var str  = content.split("아이디xxx");
			var str1 = '</span>';
			var strpno = str[1].split("페이지xxx");
			var pagenum = strpno[1].replace(str1,"");
			//alert(str[0]);
			//alert(str[1]);
			//alert(strpno[0]);
			//alert(strpno[1]);
	        var paramval = strpno[0];

			//alert(paramval);
			//alert($("#trView"+paramval2).css("display"));
	        /*if($("#trViewCou"+paramval).css("display")=='none'){
				   $("#trViewCou"+paramval).attr("style","display:;");
				   var contentre = content.replace("답변하기","답변닫기");
				   contentre.replace('style="display:none;"','style="display:table-cell;"');
				   $(this).html(contentre);
				   //alert($("#trView"+paramval).css("display"));
			}else{
	    	  	    $("#trViewCou"+paramval).attr("style","display:none;");
	    	  		var contentre = content.replace("답변닫기","답변하기");
					contentre.replace('style="display:table-cell;"','style="display:none;"');
					$(this).html(contentre)
	    	  	   //$(this).text('내용보기');
	    	  	   //alert($("#trView"+paramval).css("display"));
			}*/
				
			if($("#trViewCou"+paramval).css("display")=='none'){
			   $("#trViewCou"+paramval).attr("style","display:;");
			   var contentre = content.replace("답변하기","답변닫기");
			   contentre.replace('style="display:none;"','style="display:table-cell;"');
			   $(this).html(contentre);
			   //alert($("#trView"+paramval).css("display"));
			}else{
    	  	    $("#trViewCou"+paramval).attr("style","display:none;");
    	  		var contentre = content.replace("답변닫기","답변하기");
				contentre.replace('style="display:table-cell;"','style="display:none;"');
				$(this).html(contentre)
    	  	   //$(this).text('내용보기');
    	  	   //alert($("#trView"+paramval).css("display"));
		    }
			
			$("#tbl tr #trViewCou"+paramval+" #okbtn").on("click",function(){
				var txt = $("#txt"+paramval).val();
				var url = "couanswer.do";
				var params = "idx="+paramval+"&acontent="+txt+"&pagenum="+pagenum;
				//alert(txt);
				//alert(params);
				
				$.ajax({ 
			    	type:"POST",
			    	url:url,
			    	data:params,
					dataType: 'text',
					success:function(data){
						//alert(data);
						$("#question").html(data);
						$("#question").attr("style","display:;");
						//$("#tr"+paramval).attr("style","display:;");
						//$(".acontent"+paramval).attr("style","display:;");
						//var text = data;
						//data = text.substring(text.indexOf('<body>')+'<body>'.length,text.indexOf('</body>'));
						//alert(data);
						//$('.content>div').append(data);
						var url2 = "coulist.do";
						//var params = "idx="+paramval;
						var params2 = "idx="+paramval+"&pagenum="+pagenum;
						//alert(params2);
						$.ajax({ 
					    	type:"POST",
					    	url:url2,
					    	data:params2,
							dataType: 'text',
							success:function(data){
								//alert(data);
								$("#list").html(data);
								$("#trViewCou"+paramval).attr("style","display:;");
								//var text = data;
								//data = text.substring(text.indexOf('<body>')+'<body>'.length,text.indexOf('</body>'));
								//alert(data);
								//$('.content>div').append(data);
							}, 
							error:function(e){
								alert(e.responseText);
							}
						});
						
					}, 
					error:function(e){
						alert(e.responseText);
					}
				});
				
			});
			
			$("#tbl tr #trViewCou"+paramval+" #okreset").on("click",function(){
				$("#txt"+paramval).val('');
			});
			
		});
    
	});
   
  
</script>
</head>
<body>     
   <div id="cou">
   		<header id="couheader">
   			<h2>1:1 문의답변</h2>
   		</header>    
   		<div id="coucontent">
   			<section id="question">
   			   <!-- ul>
   			     <li>
	   				<div class="title">
	   					<div><label class="label">질문 제목</label><span class="text">${couitem.wtitle }</span></div>
	   					<div><label class="label">질문자</label><span class="text">${couitem.wname }</span></div>
	   					<div><label class="label">질문자ID</label><span class="text">${couitem.wid }</span></div>
	   					<div><label class="label">질문자Email</label><span class="text">${couitem.wemail }</span></div>
	   					<div><label class="label">질문자 연락처</label><span class="text">${couitem.wtel }</span></div>
	   					<div><label class="label">질문일시</label><span class="text"></span></div>
	   				</div>
	   			  </li>
	   			  <li>
	   				<div class="content">
	   					<label class="label">질문내용</label>
	   					<div class="textarea">${couitem.wcontent }</div>
	   				</div>
	   			   </li>
	   			   <!-- li>
	   				<div class="date">
	   					<label class="label">질문일시</label><span class="text">2016-11-08</span>
	   				</div>
	   			   </li>		
   				</ul-->
   			</section>
   			<section id="list">
   				<table id="tbl">
   					<tr id="th">
   						<th class="tblcol1">번호</th>
   						<th class="tblcol2">질문자</th>
   						<th class="tblcol3">질문제목</th>
   						<th class="tblcol4">답변여부</th>
   						<th style="display:none;">답변여부</th>
   						<th class="tblcol5">답변작성</th>
   					</tr>
   					<c:if test="${!empty couList }">
   					<c:set var="i" value="${pageset.total-(pageset.curpage-1)*pageset.pagesize }"/>
   					<c:forEach items="${couList }" var="cou">
   					<tr class="tr" id="tr${idx }">
   						<td class="titletd">${i}<span style="display:none">아이디xxx${cou.idx }</span></td>
   						<td class="titletd">${cou.wname }<span style="display:none">아이디xxx${cou.idx }</span></td>
   						<td class="titletd">${cou.wtitle }<span style="display:none">아이디xxx${cou.idx }</span></td>
   						<td class="titletd">${cou.state }<span style="display:none">아이디xxx${cou.idx }</span></td>
   						<td id="hiddenidx" style="display:none;">${cou.idx }</td>
   						<td><!-- button>답변하기</button-->
   						<c:if test="${cou.state eq '접수중'}">
   							<button id="contentViewCou">답변하기<span style="display:none">아이디xxx${cou.idx }페이지xxx${pageset.curpage}</span></button>
   						</c:if>
   						<c:if test="${cou.state eq '답변완료'}">
   							<button id="contentViewCou">답변보기<span style="display:none">아이디xxx${cou.idx }페이지xxx${pageset.curpage}</span></button>
   						</c:if>
   						</td>
   						
   					</tr>
   					<tr>
   						<td class="acontent${idx}" id="trViewCou${cou.idx }" colspan="6" style="display:none;">
   						<c:if test="${cou.state eq '접수중'}">
   							<textarea id="txt${cou.idx }" style="margin:10px;overflow-y:scroll;" cols="60" rows="8" >${cou.acontent }</textarea>
   							<div style="padding-top:0px;text-align:right;padding-right:100px;padding-bottom:10px;"><button id="okbtn">전송<span style="display:none">아이디${cou.idx }</span></button>&nbsp;&nbsp;<button id="okreset">취소<span style="display:none">아이디${cou.idx }</span></button></div>
   						</c:if>
   						<c:if test="${cou.state eq '답변완료'}">
   							<textarea id="txt${cou.idx }" style="margin:10px;overflow-y:scroll;background-color:#FFFFCC;" cols="60" rows="8" readonly >${cou.acontent }</textarea>
   						</c:if> 
   						</td>  						
   					</tr>
   					<c:set var="i" value="${i-1 }"/>
   					</c:forEach>  	
   					<tr>
   						<td colspan="6" id="paging">
   						<c:set var="startpage" value="${(pageset.pagesetno-1)*pageset.pagesetsize+1 }"/>
   						<c:set var="endpage" value="${startpage + pageset.pagesetsize - 1}"/>
   						<c:if test="${endpage gt pageset.pagecount}">
   							<c:set var="endpage" value="${pageset.pagecount}"/>
   						</c:if>
   						<c:if test="${startpage gt pageset.pagesetsize}">
   							<a href="cou.do?pagenum=${startpage-pageset.pagesetsize}">◀</a>&nbsp;
   						</c:if>
   						<c:forEach var="pageno" step="1" begin="${startpage }" end="${endpage }">
   						  <a href="cou.do?pagenum=${pageno}">
   						  <c:if test="${pageno eq pageset.curpage}">
   						  <span style="color:blue;font-size:18px;">${pageno }</span>
   						  </c:if>
   						  <c:if test="${pageno ne pageset.curpage}">
   						  	${pageno }
   						  </c:if>
   						  </a>&nbsp;
   						</c:forEach>
   						<c:if test="${endpage lt pageset.pagecount}">
   							<a href="cou.do?pagenum=${endpage+1}">▶</a>&nbsp;
   						</c:if>
   						</td>
   						<!-- ◀ 1 2 3 4 5 6 7 8 9 10 ▶-->
   					</tr>
   					</c:if>
   					<c:if test="${empty couList }">
   					<tr>
   						<td colspan="6" style="align:center;"><!-- center-->데이터가 없습니다<!--/center--></td>
   					</tr>
   					</c:if>
   				</table>
   			</section>
   		</div>
           
    </div>
</body>
</html>