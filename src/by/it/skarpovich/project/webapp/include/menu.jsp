<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div class="navbar-nav"><img src="img/header.jpg"></div>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <a class="navbar-brand" href=".">Главная</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
        <c:choose>
          <c:when test="${userRole==1}">
<a class="nav-item nav-link" href="do?command=Profile">Профиль</a>
                <a class="nav-item nav-link" href="do?command=editusers">Пользователи</a>
                <a class="nav-item nav-link" href="do?command=editorders">Заказы</a>
                <a class="nav-item nav-link" href="do?command=editprojects">Проекты</a>
                <a class="nav-item nav-link" href="do?command=addproject">Добавить проект</a>
                <a class="nav-item nav-link" href="logout.jsp">Выход</a>
                <a class="nav-item nav-link" href="do?command=reset">Сброс</a>
                                </c:when>

                  <c:when test="${userRole==2}">
         <a class="nav-item nav-link" href="do?command=profile">Профиль</a>
         <a class="nav-item nav-link" href="do?command=orders">Мои Заказы</a>
         <a class="nav-item nav-link" href="logout.jsp">Выход</a>
                  <a class="nav-item nav-link" href="do?command=reset">Сброс</a>
                                        </c:when>

            <c:otherwise>
                           <a class="nav-item nav-link" href="do?command=login">Авторизация</a>
                           <a class="nav-item nav-link" href="do?command=signUp">Регистрация</a>
                           <a class="nav-item nav-link" href="do?command=reset">Сброс</a>
                        </c:otherwise>

        </c:choose>
        </div>
    </div>
</nav>
