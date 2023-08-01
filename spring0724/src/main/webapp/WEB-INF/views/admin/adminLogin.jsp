<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="/css/admin_login.css">
</head>

<body>
  <header>
    <div id="header-left">LMS <span>Enterprise</span> Type</div>
    <div id="header-right">Administrator</div>
  </header>

  <main>
    <form action="/login" method="POST">
      <div id="loginArea">
        <div id="loginBox">
          <table>
            <tr>
              <td class="input-box">
                <input type="text" name="id" id="id" size="27" value="admin">
              </td>
              <td class="login-button" rowspan="2">
                <button>LOGIN</button>
              </td>
            </tr>
            <tr>
              <td class="input-box">
                <input type="password" name="pw" id="pw" size="27" value="admin">
              </td>
            </tr>
          </table>
        </div>
      </div>
    </form>
  </main>

  <footer>
    <p id="copyright">Copyright © 2019 <strong>LMS ADMIN</strong>. All rights reserved.</p>
  </footer>

</body>
</html>