<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>

    <h2 class="text-center">Список Допуслуг</h2>

    <table class="table">
    <thead class="thead-dark">
    <tr>
        <th>Название</th>
        <th>Стоимость</th>
        <th>Действие</th>
    </tr>
    </thead>
    <tbody>
    <#list services as service>
        <tr>


        <td>${service.name}</td>

        <td>${service.cost}</td>

        </tr>
    </#list>
    </tbody>
    </table>
</@c.page>