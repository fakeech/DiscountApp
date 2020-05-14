<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>

    <h2 class="text-center">Список клиентов </h2>

    <table class="table">
    <thead class="thead-dark">
    <tr>
        <th>Номер</th>
        <th>ФИО</th>
        <th>Телефон</th>
        <th>Почта</th>
    </tr>
    </thead>
    <tbody>
    <#list clients as client>
        <tr>
        <td>${client.idclient}</td>

        <td>${client.fio}</td>
        <td>${client.phone}</td>
        <td>${client.email}</td>



        </tr>
    </#list>
    </tbody>
    </table>
</@c.page>