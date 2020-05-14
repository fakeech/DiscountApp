<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="card-columns">
    <#list tours as item>
        <div class="card text-white bg-dark mb-3 my-3" style="max-width: 18rem;">

        <div class="card-body">
        <h5 class="card-title">${item.name}</h5>

            <p class="card-text"">${item.description}</p>
        </div>

        <div class="card-footer">
<label class="control-label">
    <p class="font-weight-bold ml-3">Цена: ${item.cost}$</p>    </label>

        <a href="/order/${item.idtour}" class="btn btn-outline-success ml-3">Заказать</a>

        </div>
        </div>
    </#list>
    </div>
</@c.page>