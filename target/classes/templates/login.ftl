<#--<#import "parts/common.ftl" as c>-->
<#--<#import "parts/login.ftl" as l>-->

<#--<@c.page>-->
<#--Login page-->
<#--<@l.login "/login" false/>-->
<#--<a href="/registrationClientInfo">Add new user</a>-->
<#--</@c.page>-->


<#import "parts/common.ftl" as c>
<@c.page><!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <h2 class="text-center">Авторизация </h2>
                <div class="panel-body">
                <#if logout>
                    <div class="alert alert-info" role="alert">Вы вышли из системы!</div>
                </#if>
                <#if error>
                    <div class="alert alert-danger" role="alert">Неверный логин или пароль!</div>
                </#if>
                    <form class="form-horizontal" role="form"  method="post">
                        <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
                        <div class="form-group">
                            <label for="username" class="col-sm-2 control-label">Логин</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="username" placeholder="Логин"
                                   name="username">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-2 control-label">Пароль</label>
                            <div class="col-sm-10">
                            <input type="password" class="form-control" id="password" placeholder="Пароль"
                                   name="password">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary ml-5"">Войти</button>
                        <a href="registration">Зарегистрироваться</a>
                    </form>
    <br>
                </div>

        </div>
    </div>
</div>
</body>
</html>
</@c.page>