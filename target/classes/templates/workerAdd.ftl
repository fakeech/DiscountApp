<#import "parts/common.ftl" as c>

<@c.page>
    <h2>Добавление нового сопровождающего</h2>
    <h5> </h5>
    <form method="post" action="/worker/addWorker">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>ФИО:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="fio"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Должность:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="position"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Телефон:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="phone"/>
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