<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<!-- Bootstrap -->
    <link href="<c:url value='/resources/assets/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/bootstrap/css/font-awesome.min.css' />" media="screen" title="no title" charset="utf-8">
    <!-- <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title" charset="utf-8"> -->
    <!-- Custom style -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/bootstrap/css/style.css' />" media="screen" title="no title" charset="utf-8">
    <!-- <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8"> -->
</head>
<body>


      <article class="container">
        <div class="page-header">
          <h1>ȸ������ <small>basic form</small></h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
          <form role="form">
            <div class="form-group">
              <label for="InputEmail">�̸��� �ּ�</label>
              <input type="email" class="form-control" id="InputEmail" placeholder="�̸��� �ּ�">
            </div>
            <div class="form-group">
              <label for="InputPassword1">��й�ȣ</label>
              <input type="password" class="form-control" id="InputPassword1" placeholder="��й�ȣ">
            </div>
            <div class="form-group">
              <label for="InputPassword2">��й�ȣ Ȯ��</label>
              <input type="password" class="form-control" id="InputPassword2" placeholder="��й�ȣ Ȯ��">
              <p class="help-block">��й�ȣ Ȯ���� ���� �ٽ��ѹ� �Է� �� �ּ���</p>
            </div>
            <div class="form-group">
              <label for="username">�̸�</label>
              <input type="text" class="form-control" id="username" placeholder="�̸��� �Է��� �ּ���">
            </div>
            <div class="form-group">
              <label for="username">�޴��� ����</label>
              <div class="input-group">
                <input type="tel" class="form-control" id="username" placeholder="- ���� �Է��� �ּ���">
                <span class="input-group-btn">
                  <button class="btn btn-success">������ȣ ����<i class="fa fa-mail-forward spaceLeft"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
              <label for="username">������ȣ �Է�</label>
              <div class="input-group">
                <input type="text" class="form-control" id="username" placeholder="������ȣ">
                <span class="input-group-btn">
                  <button class="btn btn-success">������ȣ �Է�<i class="fa fa-edit spaceLeft"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
                <label>��� ����</label>
              <div data-toggle="buttons">
              <label class="btn btn-primary active">
                  <span class="fa fa-check"></span>
                  <input id="agree" type="checkbox" autocomplete="off" checked>
              </label>
              <a href="#">�̿���</a>�� �����մϴ�.
              </div>
            </div>
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info">ȸ������<i class="fa fa-check spaceLeft"></i></button>
              <button type="submit" class="btn btn-warning">�������<i class="fa fa-times spaceLeft"></i></button>
            </div>
          </form>
        </div>
	</article>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value='/resources/assets/bootstrap/js/bootstrap.min.js' />"></script>
  </body>
</html>