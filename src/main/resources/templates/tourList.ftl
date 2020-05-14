<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>

    <h2 class="text-center">Список туров </h2>

    <table class="table">
    <thead class="thead-dark">
    <tr>
    <th>Номер</th>
    <th>Название</th>
    <th>Описание</th>
    <th>Количество дней</th>
    <th>Стоимость</th>
<th>Действие</th>
</tr>
    </thead>
    <tbody>
    <#list tours as tour>
        <tr>
        <td>${tour.idtour}</td>

        <td>${tour.name}</td>
        <td>${tour.description}</td>
        <td>${tour.days}</td>
        <td>${tour.cost}</td>
        <td>
            <form method="post" action="/tour/tourDelete">
                <input type="hidden" value="${tour.idtour}" name="id">
                <input type="hidden" value="${_csrf.token}" name="_csrf">
                <button class="btn btn-outline-danger" type="submit">Удалить</button>
            </form>
        </td>
        </tr>
    </#list>
    </tbody>
    </table>
    <div class="form-row text-center">
        <div class="col-12">
            <a class="btn btn-outline-secondary btn-lg m-3" href="/tour/tourAdd" role="button">Новый тур</a>
        </div>
    </div>

</@c.page>