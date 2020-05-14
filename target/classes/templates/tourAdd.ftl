<#import "parts/common.ftl" as c>

<@c.page>
    <h2>Добавление тура</h2>
    <h5> </h5>
    <form method="post" action="/tour/addTour">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Название:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Описание:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="description"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Цена:</h5></label>
        <div class="col-sm-10">
            <input type="number" class="form-control" name="cost"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Количество дней:</h5></label>
        <div class="col-sm-10">
            <input type="number" class="form-control" name="days" />
        </div>
    </div>
    <div class="form-row text-center">
    <div class="col-12">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit" class="btn btn-outline-success">Добавить</button>
    </div>
    </div>
    <h2> </h2>
    </form>
</@c.page>