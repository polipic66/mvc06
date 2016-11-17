<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="fproject.admin.model.PagingSet" %>
<% PagingSet pagingset =(PagingSet)request.getAttribute("pageset");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리 > LMS 메인 페이지</title>
<link rel="stylesheet" href="admin/admincss/admin.css">

<script type="text/javascript">
   /*var url = "memberadmin.do";
   var params = "";
	 $.ajax({ 
	type:"POST",
	url:url,
	data:params,
	dataType: 'text',
	success:function(data){
		//alert(data);
		$("#list1").html(data);
		//var text = data;
		//data = text.substring(text.indexOf('<body>')+'<body>'.length,text.indexOf('</body>'));
		//alert(data);
		//$('.content>div').append(data);
	}, 
	error:function(e){
		alert(e.responseText);
	}
   });*/
	 
   var loadflag = 1;
   
   $(document).ready(function(){
	       //alert('1');  
	       
	       if(loadflag>0){
	         var url = "memberadmin.do";
	   	     var params = "";
		   	 $.ajax({ 
		    	type:"POST",
		    	url:url,
		    	data:params,
				dataType: 'text',
				success:function(data){
					//alert(data);
					$("#list1").html(data);
					//var text = data;
					//data = text.substring(text.indexOf('<body>')+'<body>'.length,text.indexOf('</body>'));
					//alert(data);
					//$('.content>div').append(data);
				}, 
				error:function(e){
					alert(e.responseText);
				}
			 });
		   	 loadflag=0;
	       }
	       
		   	var count1=0;
		    $("#list1").on("mouseover", function() {
			$("#list1 #pno").on("click", function() {
				 count1++;
				 if(count1==1){
				 	//alert($(this).html()+"페이지");
				 var pno = $(this).html();
				 var url = "memberadmin.do";
			     var params = "pagenum="+pno;
			     //alert("pno:"+pno);
				 $.ajax({ 
				   type:"POST",
				   url:url,
				   data:params,
				   dataType: 'text',
				   success:function(data){
					//alert(data);
					$("#list1").html(data);
				    }, 
				    error:function(e){
					  alert(e.responseText);
				    }
				  });
				 count1=0;
				}
			  });
			
			$("#tbl1 tr #permitY").on("click",function(){
		  		//alert($(this).html());
		  		
	            var url = "mempermit.do";
			    
			    var content = $(this).html();
				 
			    var str  = content.split("승인");
			    var strpg1 = '<span id="curpg" style="display:none;">';
			    var strpg2 = '</span>';
			    var paramval1 = str[0].replace(strpg1,"").replace(strpg2,"");
			    var stridx1 = '<span id="userididx" style="display:none;">';
			    var stridx2 = '</span>';
			    var paramval2 = str[1].replace(stridx1,"").replace(stridx2,"");
			
			    var params = "permit=Y&idx="+paramval2+"&pagenum="+paramval1;
			    
			    //alert(params);
			    $.ajax({ 
			    	type:"POST",
			    	url:url,
			    	data:params,
					dataType: 'text',
					success:function(data){
						//alert(data);
						$("#list1").html(data);
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
			  
				
			   
			
			   $("#tbl1 tr #permitN").on("click",function(){
			    	//alert($(this).html());
					var url = "mempermit.do";
				    
				    var content = $(this).html();
					 
				    var str  = content.split("미승인");
				    var strpg1 = '<span id="curpg" style="display:none;">';
				    var strpg2 = '</span>';
				    var paramval1 = str[0].replace(strpg1,"").replace(strpg2,"");
				    var stridx1 = '<span id="userididx" style="display:none;">';
				    var stridx2 = '</span>';
				    var paramval2 = str[1].replace(stridx1,"").replace(stridx2,"");
				
				    var params = "permit=N&idx="+paramval2+"&pagenum="+paramval1;
				    
				    //alert(params);
				    $.ajax({ 
				    	type:"POST",
				    	url:url,
				    	data:params,
						dataType: 'text',
						success:function(data){
							//alert(data);
							$("#list1").html(data);
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
		    });
		   
		 	var count2=0;
		    $("#list2").on("mouseover", function() {
			$("#list2 #pno").on("click", function() {
				 count2++;
				 if(count2==1){
				 	//alert($(this).html()+"페이지");
				 var pno = $(this).html();
				 var url = "lectureadmin.do";
			     var params = "pagenum="+pno;
			     //alert("pno:"+pno);
				 $.ajax({ 
				   type:"POST",
				   url:url,
				   data:params,
				   dataType: 'text',
				   success:function(data){
					//alert(data);
					$("#list2").html(data);
				    }, 
				    error:function(e){
					  alert(e.responseText);
				    }
				  });
				 count2=0;
				}
			  });
			
            
			
			$("#tbl2 tr #permitYlec").on("click",function(){
		  		//alert($(this).html());
		  		
	            var url = "lecpermit.do";
			    
			    var content = $(this).html();
				 
			    var str  = content.split("승인");
			    var strpg1 = '<span id="curpg" style="display:none;">';
			    var strpg2 = '</span>';
			    var paramval1 = str[0].replace(strpg1,"").replace(strpg2,"");
			    var stridx1 = '<span id="userididx" style="display:none;">';
			    var stridx2 = '</span>';
			    var paramval2 = str[1].replace(stridx1,"").replace(stridx2,"");
			
			    var params = "permit=Y&idx="+paramval2+"&pagenum="+paramval1;
			    
			  
			    //alert(params);
			    $.ajax({ 
			    	type:"POST",
			    	url:url,
			    	data:params,
					dataType: 'text',
					success:function(data){
						//alert(data);
						$("#list2").html(data);
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
			  
				
			   
			
			   $("#tbl2 tr #permitNlec").on("click",function(){
			    	//alert($(this).html());
			    	
					var url = "lecpermit.do";
				    
				    var content = $(this).html();
					 
				    var str  = content.split("미승인");
				    var strpg1 = '<span id="curpg" style="display:none;">';
				    var strpg2 = '</span>';
				    var paramval1 = str[0].replace(strpg1,"").replace(strpg2,"");
				    var stridx1 = '<span id="userididx" style="display:none;">';
				    var stridx2 = '</span>';
				    var paramval2 = str[1].replace(stridx1,"").replace(stridx2,"");
				
				    var params = "permit=N&idx="+paramval2+"&pagenum="+paramval1;
				    
				    
				    //alert(params);
				    $.ajax({ 
				    	type:"POST",
				    	url:url,
				    	data:params,
						dataType: 'text',
						success:function(data){
							//alert(data);
							$("#list2").html(data);
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
			  
			   $("#tbl2 tr td #contentView").on("click",function(){
					//alert($(this).html());
					var content = $(this).html();
					
					//var contentre = content.replace("내용보기","내용닫기");
					//contentre.replace('style="display:none;"','style="display:table-cell;"');
					//var contentre = content.replace("내용닫기","내용보기");
					//contentre.replace('style="display:table-cell;"','style="display:none;"');
		        	//var str1 = '내용보기<span style="display:none">';
					//var str2 = '</span>';
					
					var str  = content.split("아이디");
			        var str1 = '</span>';
			        var paramval = str[1].replace(str1,"");
		
					//alert(paramval);
					//alert($("#trView"+paramval2).css("display"));
					if($("#trView"+paramval).css("display")=='none'){
					   $("#trView"+paramval).attr("style","display:;");
					   var contentre = content.replace("내용보기","내용닫기");
					   contentre.replace('style="display:none;"','style="display:table-cell;"');
					   $(this).html(contentre);
					   //alert($("#trView"+paramval).css("display"));
					}else{
	           	  	    $("#trView"+paramval).attr("style","display:none;");
	           	  		var contentre = content.replace("내용닫기","내용보기");
						contentre.replace('style="display:table-cell;"','style="display:none;"');
						$(this).html(contentre)
	           	  	   //$(this).text('내용보기');
	           	  	   //alert($("#trView"+paramval).css("display"));
				    }
					
				});
		       
			});
		    
		    var count3=0;
		    $("#list3").on("mouseover", function() {
			$("#list3 #pno").on("click", function() {
				 count3++;
				 if(count3==1){
				 	//alert($(this).html()+"페이지");
				 var pno = $(this).html();
				 var url = "lecappadmin.do";
			     var params = "pagenum="+pno;
			     //alert("pno:"+pno);
				 $.ajax({ 
				   type:"POST",
				   url:url,
				   data:params,
				   dataType: 'text',
				   success:function(data){
					//alert(data);
					$("#list3").html(data);
				    }, 
				    error:function(e){
					  alert(e.responseText);
				    }
				  });
				 count3=0;
				}
			  });
			});
		    
    
	     $("#cyberbtn #li1").attr("style","cursor:hand;cursor:pointer;");
	     $("#cyberbtn #li2").attr("style","cursor:hand;cursor:pointer;");
	     $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#7EA6E0;color:white;");
    	 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
   		 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
   		 $("#tab #tab1").on( "mouseover", function() {
	    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#7EA6E0;color:white;");
	    	 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
	    	 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
	     });
	     $("#tab #tab2").on( "mouseover", function() {
	    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#7EA6E0;color:white;");
	    	 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#D5E8D4;color:black;");
	    	 //$("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;")
	   		 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
		 });
	     $("#tab #tab3").on( "mouseover", function() {
	    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#7EA6E0;color:white;");
	    	 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#FFB570;color:black;");
	    	 //$("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;")
	   		 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
		 });
	     
	     //클릭시
	   	 $("#tab #tab1").on( "click", function() { //alert('tab1');
	   	 
	    
	   	     var url = "memberadmin.do";
	   	     var params = "";
		   	 $.ajax({ 
		    	type:"POST",
		    	url:url,
		    	data:params,
				dataType: 'text',
				success:function(data){
					//alert(data);
					$("#list1").html(data);
					//var text = data;
					//data = text.substring(text.indexOf('<body>')+'<body>'.length,text.indexOf('</body>'));
					//alert(data);
					//$('.content>div').append(data);
				}, 
				error:function(e){
					alert(e.responseText);
				}
			 });
		   	 
		   	//alert('2');
			  
		    		    
	   		 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#7EA6E0;color:white;");
	   		 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
	   		 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
		     $("#list1").attr("style","display:block;");
		     $("#list2").attr("style","display:none;");
		     $("#list3").attr("style","display:none;");
		     $("#tab #tab1").on( "mouseover", function() {
		    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#7EA6E0;color:white;");
		    	 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
		    	 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
		     });
		     $("#tab #tab2").on( "mouseover", function() {
		    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#7EA6E0;color:white;");
		    	 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#D5E8D4;color:black;");
		    	 //$("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;")
		   		 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
			 });
		     $("#tab #tab3").on( "mouseover", function() {
		    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#7EA6E0;color:white;");
		    	 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#FFB570;color:black;");
		    	 //$("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;")
		   		 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
			 });
		 });
	   	$("#tab #tab2").on("click", function() { //alert('tab2');
	   		 //alert($("#list2").css("height"));
	   	     //$("#list2").attr("height","500px");
	   	     
		   	 var url = "lectureadmin.do";
	  	     var params = "";
		   	 $.ajax({ 
		    	type:"POST",
		    	url:url,
		    	data:params,
				dataType: 'text',
				success:function(data){
					//alert(data);
					$("#list2").html(data);
					//var text = data;
					//data = text.substring(text.indexOf('<body>')+'<body>'.length,text.indexOf('</body>'));
					//alert(data);
					//$('.content>div').append(data);
				}, 
				error:function(e){
					alert(e.responseText);
				}
			 });
		   
		   	 
	   		 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
	   		 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#67AB9F;color:white;");
	   		 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
		     $("#list1").attr("style","display:none;");
		     $("#list2").attr("style","display:block;");
		     $("#list3").attr("style","display:none;");
		     $("#tab #tab1").on("mouseover", function(){
		    	 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#67AB9F;color:white;");
		    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#D4E1F5;color:black;");
		    	 //$("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;")
		   		 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
			 });
		     $("#tab #tab2").on("mouseover", function(){
		    	 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#67AB9F;color:white;");
		    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
		    	 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
		     });
		     $("#tab #tab3").on( "mouseover", function() {
		    	 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#67AB9F;color:white;");
		    	 $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#FFB570;color:black;");
		    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
		   		 //$("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;")
			 });
		 });
	   	$( "#tab #tab3" ).on("click", function() { //alert('tab3');
	   	
		   	 var url = "lecappadmin.do";
	  	     var params = "";
		   	 $.ajax({ 
		    	type:"POST",
		    	url:url,
		    	data:params,
				dataType: 'text',
				success:function(data){
					//alert(data);
					$("#list3").html(data);
					//var text = data;
					//data = text.substring(text.indexOf('<body>')+'<body>'.length,text.indexOf('</body>'));
					//alert(data);
					//$('.content>div').append(data);
				}, 
				error:function(e){
					alert(e.responseText);
				}
			  });
		   	 
		   	 
	   		  $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
	   		  $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
	   		  $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;cursor:hand;cursor:pointer;background-color:#CC6600;color:white;");
		      $("#list1").attr("style","display:none;");
		      $("#list2").attr("style","display:none;");
		      $("#list3").attr("style","display:block;");
		      $("#tab #tab1").on( "mouseover", function() {
		    	     $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;cursor:hand;cursor:pointer;background-color:#CC6600;color:white;");
			    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#D4E1F5;color:black;");
			    	 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
			   		 //$("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;")
			  });
			  $("#tab #tab2").on( "mouseover", function() {
				  $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;cursor:hand;cursor:pointer;background-color:#CC6600;color:white;");
			    	 $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#D5E8D4;color:black;");
			    	 $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
			   		 //$("#tab #tab3").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;")
		      });
			  $("#tab #tab3").on( "mouseover", function() {
				  $("#tab #tab3").attr("style","cursor:hand;cursor:pointer;cursor:hand;cursor:pointer;background-color:#CC6600;color:white;");
				  $("#tab #tab1").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
				  $("#tab #tab2").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;color:black;");
			  });		 
			  
		 });
    });
</script>
</head>
<body>     
   <div id="ad">
   		<!-- header id="adheader">
   			<h2>일반 관리</h2>
   		</header-->    
   		<div id="adcontent">
   			<ul class="bxslider">
	  			<li><a href="att.do"><img src="admin/adminimg/1admin.gif" title="출석통계" /></a></li>
	  			<li><a href="pro.do"><img src="admin/adminimg/2admin.gif" title="진도통계" /></a></li>
	  			<li><a href="gra.do"><img src="admin/adminimg/3admin.gif" title="성적통계" /></a></li>
			 </ul>
			 <div id="tabbox">
			 <div id="tab">
			 	<ul>
			 		<li id="tab1">회원관리</li>
			 		<li id="tab2">강의관리</li>
			 		<li id="tab3">수강관리</li>
			 	</ul>
			 </div>
   			 <section id="list1">
   				<!-- table id="tbl">
   					<tr id="th">
   						<th class="tblcol1">번호1</th>
   						<th class="tblcol2">이름</th>
   						<th class="tblcol3">아이디</th>
   						<th class="tblcol4">직책</th>
   						<th class="tblcol5">연락처</th>
   						<th class="tblcol6">상태</th>
   						<th class="tblcol7">승인</th>
   					</tr>
   					<tr class="tr">
   						<td>1</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>	
   					<tr class="tr">
   						<td>2</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>3</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>4</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>5</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>미승인</button></td>
   					</tr>
   					<tr>
   						<td colspan="7" id="paging"><center>◀ 1 2 3 4 5 6 7 8 9 10 ▶</center></td>
   					</tr>
   				</table-->
   			</section>
   			<section id="list2">
   				<!-- table id="tbl">
   					<tr id="th">
   						<th class="tblcol1">번호2</th>
   						<th class="tblcol2">이름</th>
   						<th class="tblcol3">아이디</th>
   						<th class="tblcol4">직책</th>
   						<th class="tblcol5">연락처</th>
   						<th class="tblcol6">상태</th>
   						<th class="tblcol7">승인</th>
   					</tr>
   					<tr class="tr">
   						<td>1</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>	
   					<tr class="tr">
   						<td>2</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>3</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>4</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>5</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>미승인</button></td>
   					</tr>
   					<tr>
   						<td colspan="7" id="paging"><center>◀ 1 2 3 4 5 6 7 8 9 10 ▶</center></td>
   					</tr>
   				</table-->
   			</section>
   			<section id="list3">
   				<!-- table id="tbl">
   					<tr id="th">
   						<th class="tblcol1">번호3</th>
   						<th class="tblcol2">이름</th>
   						<th class="tblcol3">아이디</th>
   						<th class="tblcol4">직책</th>
   						<th class="tblcol5">연락처</th>
   						<th class="tblcol6">상태</th>
   						<th class="tblcol7">승인</th>
   					</tr>
   					<tr class="tr">
   						<td>1</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>	
   					<tr class="tr">
   						<td>2</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>3</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>4</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>5</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>미승인</button></td>
   					</tr>
   					<tr>
   						<td colspan="7" id="paging"><center>◀ 1 2 3 4 5 6 7 8 9 10 ▶</center></td>
   					</tr>
   				</table-->
   			</section>
   			<ol id="cyberbtn">
			 	<li id="li1"><a href="cou.do">1:1문의답변</a></li>
			 	<li id="li2"><a href="ad.do">광고등록</a></li>
			 </ol>
			 </div>
   		</div>
    </div>
</body>
</html>