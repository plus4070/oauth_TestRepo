<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<script>
  //검색창에서 엔터키 누를경우
  $(function() {
    $("#searchBar").keydown(function(key) {
      if (key.keyCode == 13) {
        alert($("#searchBar").val());
        $("#searchBar").val("");
      }
    });

  });

  //홈으로 이동
  function toHome() {
    alert('move to Home page');
    location.href = "http://localhost:8080/oauth/index.do";
  }

  //search버튼 누를경우 검색어
  function search() {
    var search = document.getElementById("searchBar");
    alert(search.value);
    search.value = "";
  }
</script>
<style>
.bar-search {
  width: 150px;
  float: right;
  margin-right: 8px;
  margin-top: -8px;
}

.btn-search {
  margin-top: 25px;
  float: right;
  width: 100px;
  height: 36px;
  margin-right: 15px;
}
</style>
</head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
  href="<c:url value='/css/bootstrap/bootstrap.min.css'/>" />

<!-- jQuery -->
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>" charset="utf-8"></script>

<title>RabbitFeed</title>
<body>
  <c:url value="/showMessage.html" var="messageUrl" />
  <a href="${messageUrl}">Click to enter</a>
  <header id="header">
    <form>
      <div class="description">
        <button type="button" class="btn btn-default" onclick="toHome()">Home</button>
        <button type="button" class="btn btn-primary btn-lg"
          data-toggle="modal" data-target="#myModal" id="btn-login">Login</button>
        <button type="button" class="btn btn-default btn-search"
          onclick="search()">search</button>
        <div class="search-wrapper">
          <input type="text" class="form-control bar-search"
            id="searchBar" />
        </div>
      </div>
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"
                aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
              <h4 class="modal-title" id="myModalLabel">로그인할 계정을
                선택하세요</h4>
            </div>
            <div class="modal-body">
              <a href="#" class="btn-primary login-sns-btn">페이스북</a> <a
                href="#" class="btn-primary login-sns-btn">트위터</a> <a
                href="#" class="btn-danger login-sns-btn">Payco</a>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default"
                data-dismiss="modal">닫기</button>
              <button type="button" class="btn btn-primary">로그인</button>
            </div>
          </div>
        </div>
      </div>
    </form>
  </header>
</body>
</html>
