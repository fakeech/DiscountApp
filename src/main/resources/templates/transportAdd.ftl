<#import "parts/common.ftl" as c>

<@c.page>
    <h2>Добавление транспорта</h2>
    <h5> </h5>
    <form method="post" action="/transport/addTransport">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Вид транспорта:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="type"/>
        </div>
    </div>

    <div class="form-group row">
    <label class="col-sm-2 col-form-label"><h5>Выберите тур:</h5></label>

    <select name="idtour" class="selectpicker" data-style="btn-info">
    <#list tours as tour>
        <option value="${tour.idtour}" name="idtour">${tour.name}</option>
    </#list>

    </select>
    </div>
    <div class="form-row text-center m-3">
    <div class="col-sm-10">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit" class="btn btn-outline-success">Добавить</button>
    </div>
    </div>
    </form>
</@c.page>