<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path" value="<%=request.getContextPath() %>" />

<%-- 수정 완료 --%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>회원가입</title>
    <%@include file="/setting/head.jsp"%>

    <style>
        .breadcrumb-section {background-image: url("${path }/img/breadcrumb.jpg");}
    </style>

</head>
<%--항상 따라다니는 사이드 메뉴--%>
<%@include file="/layout/AllAround_SideMenu.jsp"%>

<!-- Humberger Begin -->
<%@include file="/layout/header_top.jsp"%>
<!-- Humberger End -->

<!-- Header Section Begin -->
<%@include file="/layout/header.jsp"%>
<!-- Header Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>회원가입</h2>
                    <div class="breadcrumb__option">
                        <a href="${path }">Home</a>
                        <span>회원가입</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->


<!-- 회원가입 양식 시작 -->
<section class="shoping-cart spad" >
    <div class="d-flex justify-content-center">
        <div class="row">
            <form name="frm1" id="frm1" action="${path }/JoinPro.do" method="post" onsubmit="return joinCheck(this)">
                <div class="d-flex justify-content-center" style="width:800px;">
                    <div class="row">
                        <div class="checkout__input">
                            <p>아이디<span>*</span></p>
                            <input type="text" name="id" id="id" placeholder="영문소문자 및 숫자를 혼용하여 아이디 입력" style="width:350px;"pattern="^[a-z0-9]{8,16}" maxlength="16" autofocus required />
                            <input type="button" class="site-btn" value="아이디 중복 확인" style="margin-left: 20px; width:200px;" onclick="idCheck()">
                            <input type="hidden" name="idck" id="idck" value="no">
                        </div>
                        <div class="col-lg-12 ">
                            <c:if test="${empty qid }">
                                <p id="msg" style="padding-left:0.5rem">아직 아이디 중복 체크를 하지 않으셨습니다.</p>
                            </c:if>
                            <c:if test="${not empty qid }">
                                <p id="msg" style="padding-left:0.5rem">아이디 중복 체크후 수정하였습니다.</p>
                            </c:if>
                        </div>
                        <div class="checkout__input" >
                            <p>비밀번호<span>*</span></p>
                            <input type="password" name="pw" id="pw" placeholder="비밀번호 입력" style="width: 600px;" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" maxlength="16" required />
                            <p>비밀번호는 최소 8자리에서 최대 16자리까지 숫자, 영문, 특수문자 각 1개 이상 포함되어야 함</p>
                        </div>
                        <div class="checkout__input " style="width:600px;">
                            <p>비밀번호 확인<span>*</span></p>
                            <input type="password" name="pw2" id="pw2" placeholder="비밀번호  확인 입력" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" maxlength="16" required />
                        </div>
                        <div class="checkout__input " style="width:600px;">
                            <p>이름<span>*</span></p>
                            <input type="text" name="name" id="name" placeholder="이름 입력" class="form-control" required />
                        </div>
                        <div class="checkout__input" style="width:600px;">
                            <p>이메일<span>*</span></p>
                            <input type="email" name="email" id="email" placeholder="이메일 입력" class="form-control" required>
                        </div>
                        <div class="checkout__input" style="width:600px;">
                            <p>생년월일<span>*</span></p>
                            <input type="date" name="birth" id="birth" placeholder="생년월일 입력" class="form-control" required>
                        </div>
                        <div class="checkout__input" style="width:600px;">
                            <p>연락처<span>*</span></p>
                            <input type="tel" name="tel" id="tel" maxlength="11" placeholder="전화번호 숫자만 입력 00000000000" class="form-control" required>
                        </div>
                        <div class="checkout__input" style="width:600px;">
                            <p>주소<span>*</span></p>
                            <input type="text" name="address3" id="address3" style="margin-bottom: 20px; width:400px;"  placeholder="우편번호" required>
                            <button type="button" id="post_btn" onclick="findAddr()" style="margin-left: 20px;" class="site-btn" >우편번호 검색</button>
                            <input type="text" name="address1" id="address1"  placeholder="기본 주소 입력" class="checkout__input__add" required /><br>
                            <input type="text" name="address2" id="address2" placeholder="상세 주소 입력" required /><br>
                        </div>
                    </div>
                </div>
                <div class="btn-group">
                    <input type="submit" name="submit-btn" class="site-btn" value="회원가입">
                    <input type="reset" name="reset-btn" style="margin-left:20px; " class="site-btn" value="취소">
                    <a href="${path}/Login.do" style="margin-left:20px;" class="site-btn">로그인</a>
                </div>
            </form>
            <script>
                $(document).ready(function(){
                    $("#id").keyup(function(){
                        $("#idck").val("no");
                        if($(this).val()!=""){
                            $("#msg").html("<strong>아이디 입력중입니다.</strong>");
                            $("#id").focus();
                        } else {
                            $("#msg").html("아직 아이디 중복 체크를 하지 않으셨습니다.");
                        }
                    });
                });
                function idCheck(){
                    if($("#id").val()==""){
                        alert("아이디를 입력하지 않았습니다.");
                        $("#id").focus();                return;
                    }
                    var params = { id:$("#id").val() }
                    $.ajax({
                        url:"${path }/IdCheck.do",
                        type:"post",
                        dataType:"json",
                        data:params,
                        success:function(data){   //console.log(data.result);
                            var idPass = data.result;
                            if(idPass==false){
                                $("#idck").val("no");
                                $("#msg").html("<strong style='color:red'>기존에 사용되고 있는 아이디입니다. 다시 입력하시기 바랍니다.</strong>");
                                $("#id").focus();
                            } else if(idPass==true){
                                $("#idck").val("yes");
                                $("#msg").html("<strong style='color:red'>사용 가능한 아이디입니다.</strong>");
                            } else if(idPass==""){
                                $("#msg").text("<strong style='color:blue'>아이디가 확인되지 않았습니다. 다시 시도하시기 바랍니다.</strong>");
                            }
                        }
                    });
                }
            </script>
            <script>
                function joinCheck(f){
                    if(f.pw.value!=f.pw2.value){
                        alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
                        f.pw.focus();
                        return false;
                    }
                    if(f.idck.value!="yes"){
                        alert("아이디 중복 체크를 하지 않으셨습니다.");
                        return false;
                    }
                }
                function findAddr(){
                    new daum.Postcode({
                        oncomplete:function(data){
                            console.log(data);
                            var roadAddr = data.roadAddress;
                            var jibunAddr = data.jibunAddress;
                            document.getElementById("address3").value = data.zonecode;
                            if(roadAddr !== ''){
                                document.getElementById("address1").value = roadAddr;
                            } else if(jibunAddr !== ''){
                                document.getElementById("address1").value = jibunAddr;
                            }
                            document.getElementById("address2").focus();
                        }
                    }).open();
                }
            </script>
            <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        </div>
    </div>
</section>
<!-- 회원가입 양식 끝 -->


<%@ include file="/layout/footer.jsp" %>
</body>
</html>