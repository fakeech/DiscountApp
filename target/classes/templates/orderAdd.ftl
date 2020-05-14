<#import "parts/common.ftl" as c>

<@c.page>
    <h2 xmlns="http://www.w3.org/1999/html">Заказать тур</h2>
    <form action="/order/addOrder" method="post">
    <div class="form-group row">
    <label for="_model" class="col-sm-2 col-form-label">Название тура</label>
    <div class="col-sm-10">
    ${tours.name}
<input type="hidden" name="idtour" id="idtour" class="form-control" value="${tours.idtour}">
    </div>
    </div>

    <div class="form-group row">
<label for="_description" class="col-sm-2 col-form-label">Описание</label>
    <div class="col-sm-10">
    ${tours.description}
<input type="hidden" name="_description" id="_description" class="form-control" value="${tours.description}">
    </div>
    </div>

    <div class="form-group row">
<label for="_price" class="col-sm-2 col-form-label">Цена</label>
    <div class="col-sm-10">
    ${tours.cost}$
<input type="hidden" name="_price" id="_price" class="form-control" value="${tours.cost}">
    </div>
    </div>

<div class="form-group row">
    <label for="date" class="col-sm-2 col-form-label">Введите дату</label>
    <div class="col-sm-10">
        <input type="date" name="date" id="date" class="form-control">
    </div>
</div>

<div class="form-group row">
    <label for="fioClient" class="col-sm-2 col-form-label">Количество человек</label>
    <div class="col-sm-10">
        <input type="number" name="people" id="people" class="form-control">
    </div>
</div>

<div class="form-group row">
    <label for="fioClient" class="col-sm-2 col-form-label">ФИО</label>
    <div class="col-sm-10">
        <input type="text" name="fioClient" id="fioClient" class="form-control">
    </div>
</div>

<div class="form-group row">
    <label for="phoneClient" class="col-sm-2 col-form-label">Номер телефона</label>
    <div class="col-sm-10">
        <input type="text" name="phoneClient" id="phoneClient" class="form-control">
    </div>
</div>

<div class="form-group row">
    <label for="emailClient" class="col-sm-2 col-form-label">Почта</label>
    <div class="col-sm-10">
        <input type="text" name="emailClient" id="emailClient" class="form-control">
    </div>
</div>


    <div class="form-group row">
<label for="_address" class="col-sm-2 col-form-label">Сопровождающий:</label>
    <select name="idworker" class="selectpicker" data-style="btn-info">
    <#list workers as worker>
        <option value="${worker.idworker}" name="idworker">${worker.fio}</option>
    </#list>

    </select>
    </div>

    <div class="form-group row">
<label for="_address" class="col-sm-2 col-form-label">Выберите транспорт:</label>
    <select name="idtransport" class="selectpicker">
    <#list transports as transport>
        <option value="${transport.idtransport}" name="idtransport">${transport.type}</option>
    </#list>

    </select>
    </div>

    <div>
<input type="hidden" value="${_csrf.token}" name="_csrf">
    <div class="form-row text-center m-3">
        <div class="col-sm-10">
            <button type="submit" class="btn btn-outline-success btn-lg">Заказать</button>
        </div>
    </form>
</@c.page>