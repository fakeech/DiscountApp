<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <ul class="nav navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link text-white" href="/">Turist.by<span class="sr-only">(current)</span></a>
        </li>
        <#if isAdmin>
        <li class="nav-item">
            <a class="nav-link text-white" href="/client">Клиенты</a>
        </li>

        <li class="nav-item">
            <a class="nav-link text-white" href="/tour">Туры</a>
        </li>
            <li class="nav-item">
            <a class="nav-link text-white" href="/worker">Штат сопровождающих</a>
        </li>
        </#if>

        <li class="nav-item">
            <a class="nav-link text-white" href="/about">Об агенстве</a>
        </li>
        <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link text-white" href="/user">Аккаунты</a>
            </li>
         <li class="nav-item">
             <a class="nav-link text-white" href="/order">Заказы</a>
         </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="/transport">Транспорт</a>
            </li>
        </#if>

    </ul>
        <#if name == "unknown">
            <a class="btn btn-outline-info" href="/login"> Войти </a>
        <#else>
            <div class="mr-4">${name}</div>
            <@l.logout />
        </#if>
    <nav class="navbar navbar-dark bg-dark">

        <form class="form-inline my-2 my-md-0" method="post" action="/filterMain">
            <input class="form-control mr-sm-2" name="filterMain" type="search" placeholder="Поиск" aria-label="Search">
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Найти</button>
        </form>
    </nav>
    </ul>
</nav>