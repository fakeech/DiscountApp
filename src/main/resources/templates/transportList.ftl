<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>

    <h2 class="text-center">Транстпорт </h2>
    <table class="table">
    <thead class="thead-dark">
    <tr>
        <th>Номер</th>
        <th>Вид транспорта</th>
        <th>Название тура</th>
        <th>Действие</th>
    </tr>
    </thead>
    <tbody>
    <#list transports as transport>
        <tr>
        <td>${transport.idtransport}</td>

        <td>${transport.type}</td>
        <td>${transport.getTour().getName()}</td>

        <td>
            <form method="post" action="/transport/transportDelete">
                <input type="hidden" value="${transport.idtransport}" name="id">
                <input type="hidden" value="${_csrf.token}" name="_csrf">
                <button class="btn btn-danger" type="submit">Удалить</button>
            </form>
        </td>
        </tr>
    </#list>
    </tbody>
    </table>
    <div class="form-row text-center">
        <div class="col-12">
            <a class="btn btn-outline-secondary m-3" href="/transport/transportAdd" role="button">Добавить трансопрт для тура</a>
        </div>
    </div>
</@c.page>