<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>

    <h2 class="text-center">Штат сопровождающих</h2>


    <table class="table">
    <thead class="thead-dark">
    <tr>
        <th>Номер</th>
        <th>ФИО</th>
        <th>Должность</th>
        <th>Телефон</th>
        <th>Действие</th>
    </tr>
    </thead>
    <tbody>
    <#list workers as worker>
        <tr>
        <td>${worker.idworker}</td>

        <td>${worker.fio}</td>
        <td>${worker.position}</td>
        <td>${worker.phone}</td>

    <td>
    <form method="post" action="/worker/workerDelete">
<input type="hidden" value="${worker.idworker}" name="id">
<input type="hidden" value="${_csrf.token}" name="_csrf">
    <button class="btn btn-outline-danger" type="submit">Уволить</button>
    </form>
    </td>

        </tr>
    </#list>
    </tbody>
    </table>
    <div class="form-row text-center">
        <div class="col-12">
            <a class="btn btn-outline-secondary btn-lg m-3" href="/worker/workerAdd" role="button">Новый сопровождающий</a>
        </div>
    </div>
</@c.page>