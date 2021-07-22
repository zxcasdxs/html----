<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
<!DOCTYPE html>
<html>
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="html5">
  <meta name="author" content="kim young">
  
<title> [note.jsp]</title>
   <style type="text/css">
      * {
         font-size: 16pt; 
         font-weight: bold; 
         font-family: Comic Sans MS ; 
         margin-left:10px;
        }
      
	  .input_group{
	     height: 50px;
	     border-bottom: 1px dotted #AACC;  
	   }
   </style>
   
   
 <script type="text/javascript">
    var flag=false;  //전역변수
 
 	function  move(){
 	   var dname=myform.user_name.value;
 	   if(dname=="" || dname==null){
 		   alert("유저의 이름을 입력하세요\n이름데이터 입력은 필수사항입니다");
 		   myform.user_name.focus();
 		   return false;
 	   }else{ myform.user_pwd.focus(); }
 	   
 	  var dpwd=myform.user_pwd.value;
 	  if(dpwd=="" || dpwd==null){
		   alert("비밀번호를 입력하세요");
		   myform.user_pwd.focus();
		   return false;
	   }
 	   
	   //비밀번호=주민번호 자릿수 6자릿수체크 
	   var dpwd_size=myform.user_pwd.value.length;
	   if(dpwd_size != 6){
		   alert("주민번호 자릿수는 6자릿수입니다");
		   myform.user_pwd.value=""; 
		   myform.user_pwd.focus();
		   return false;
	   } 
 /////////////////////////////////////////////////////////////////////////
 	   if(myform.gender[0].checked==false  && myform.gender[1].checked==false){
 		  alert("성별을 선택해주세요"); 
 		  myform.gender[0].focus();
 		  return false ;
 	   }
 	   
 	   //직업선택 selectedIndex 1번째 시작
 	   if(myform.job.selectedIndex <1 ){
 		   alert("직업을 항목을 선택하세요");
 		   myform.job.focus();
 		   return false;
 	   }
 	   
 	   //취미생활체크 도전 
 	   var chk=false;
 	   var size=myform.hobby.length;
 	   for(var i=0; i<size; i++){
 		   if(myform.hobby[i].checked==true){
 			   chk=true;break;
 		   }
 	   }
 	   
 	   if(chk==false){
 		 alert("취미생활 하나선택은 필수옵션입니다");
 		 myform.hobby[0].focus();
 		 return false; 
 	   }
 	   
 	   if(confirm("입력한 데이터 내용이 맞습니까")==true){
 		  myform.submit(); 
 	   }
 	}//end===================================================
 	
 		
 	function pwdNumber(){
 	   var pwd=myform.user_pwd.value;   //84b입력
 	   var size=myform.user_pwd.value.length;
 	   for(var i=0; i<size; i++){
 	    if(pwd.charAt(i)<'0' || pwd.charAt(i)>'9'){
 	      alert("정확한 숫자를 입력하세요");
 	      //myform.user_pwd.value=pwd.substring(0,i);
 	      myform.user_pwd.value=pwd.substr(0,i);
 	      myform.user_pwd.focus();
 	    }
 	   }//for end
 	}//end===================================================	
 		
 		
 	function info(){
 		
 	}//end====================================================
 </script>
</head>

<body>
<div style="width:800px">
  <form name="myform"  action="noteSave.jsp">
    <fieldset>
    	<legend>Membmer Register</legend>
    	<div class="input_group">
    		<label>이름:</label>
    		<input type=text name="user_name" value="dong" />
    	</div>
    	
    	<div class="input_group">
    		<label>주번:</label>
    		<input type=text name="user_pwd"  value="123456" onkeyup="pwdNumber()"  />
    	</div>
    	
    	<div class="input_group">
    		<label>성별:</label>
    		<label> <input type="radio" name="gender" value="M"> 남자</label>
    		<label> <input type="radio" name="gender" value="W"  checked="checked"> 여자</label>
    	</div>
    	<div class="input_group">
        	<label>직업:</label>
        	<select name="job">
        	  <option>----선택하세요----</option>
        	  <option value="dev">프로그램개발자 </option>
        	  <option value="coder" selected="selected">coder</option>
        	  <option value="pub">퍼블리셔 </option>
        	  <option value="DBA">DB관리자 </option>
        	</select>
    	</div>
    	
    	<div class="input_group">
    		<label>취미:</label>
    		<label> <input type="checkbox" name="hobby" value="play"> 축구</label>
    		<label> <input type="checkbox" name="hobby" value="movie"> 영화보기</label>
    		<label> <input type="checkbox" name="hobby" value="study" checked="checked"> 공부하기</label>
    	</div>
    	
    	<div class="input_group">
    		<label> &nbsp;&nbsp;&nbsp; </label>
    		<input type="button" onclick="move();" value="버튼전송" >
    		<input type="reset" value="입력취소" >
    	</div>
    </fieldset>
  </form>
 </div>
  
</body>
</html>
