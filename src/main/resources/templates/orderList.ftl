<#import "parts/common.ftl" as c>

<@c.page>

<h2 class="text-center">Список заказов</h2>
    <h6> </h6>

<table class="table">
    <thead class="thead-dark">
    <tr>
        <th>Номер заказа</th>
        <th>Дата</th>
        <th>Количство человек</th>
        <th>Транспорт</th>
        <th>Название тура</th>
        <th>Сопровождающий</th>
        <th>ФИО клиента</th>
        <th>Действие</th>
    </tr>
    </thead>
    <tbody>
    <#list orders as order>
    <tr>
        <td>${order.idorder}</td>
        <td>${order.date}</td>
        <td>${order.people}</td>
        <td>${order.getTransport().getType()}</td>
        <td>${order.getTour().getName()}</td>
        <td>${order.getWorker().getFio()}</td>
        <td>${order.getClient().getFio()}</td>
    <td>



    <form method="post" action="/order/orderDelete">
        <input type="hidden" value="${order.idorder}" name="id">
        <input type="hidden" value="${order.getClient().getIdclient()}" name="idclient">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button class="btn btn-outline-danger btn-sm" type="submit">     Удалить    </button>
    </form>
    </td>

    </tr>
    </#list>
    </tbody>
</table>
    <div class="form-row text-center">
        <div class="col-12">
        <button type="button" class="btn btn-outline-primary m-3" data-toggle="modal" data-target="#modal">Дополнительная информация</button>
    </div>
</div>
</@c.page>


<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle">Дополнительная программа</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th></th>
                        <th>Тур</th>
                        <th>Программа</th>
                        <th>Стоимость</th>

                    </tr>
                    </thead>
                    <tbody>
        <#list services as service>

                        <tr>
                        <td>Заказ №${service.getOrder().getIdorder()}</td>
                        <td>${service.getOrder().getTour().getName()}</td>
                        <td>${service.name}</td>
                        <td>${service.cost}$</td>


                        </tr>

    </#list>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
            </div>
        </div>
    </div>
</div>
