<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../common/header.jsp"%>

<h4>订单查询</h4>
<div class="row">
    <div class="col-sm-8 col-md-4 col-lg-3">
    <form  role="form" action="/recharge/query/cp/order">
        <input value="q" type="hidden" name="op">
        <div class="input-group form-group">
            <span class="input-group-addon">手机号</span>
            <input type="text" name="mobile" class="form-control" placeholder="手机号"  value="${mobile}">
        </div>
        <div class="input-group form-group">
            <span class="input-group-addon">CP订单号</span>
            <input type="text" name="orderno" class="form-control" placeholder="CP订单号"  value="${orderno}">
        </div>
        <div class="input-group form-group">
            <span class="input-group-addon">流水号</span>
            <input type="text" name="id" class="form-control" placeholder="流水号"  value="${id}">
        </div>
        <div class="input-group form-group">
            <span class="input-group-addon">开始时间</span>
            <input type="text" name="beginDate" class="form-control" placeholder="开始时间"  value="${beginDate}">
        </div>
        <div class="input-group form-group">
            <span class="input-group-addon">结束时间</span>
            <input type="text" name="endDate" class="form-control" placeholder="结束时间" value="${endDate}">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-block btn-primary">查询</button>
        </div>
    </form>
    </div>

    <div class="col-sm-4 col-md-8 col-lg-9">
    </div>
</div>

<c:if test="${not empty op}">

    <div class="table-responsive">
        <table class="table">
            <thead>
            <tr>
                <th>CP短码</th>
                <th>通道号</th>
                <th>订单号</th>
                <th>时间</th>
                <th>金额</th>
                <th>手机号</th>
                <th>状态</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${orders}" var="item">
                <tr>
                    <td>${item.shortcode}</td>
                    <td>${item.channel}</td>
                    <td>${item.orderno}</td>
                    <td>${item.createdDate}</td>
                    <td>${item.fee}</td>
                    <td>${item.mobile}</td>
                    <td>${item.state}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</c:if>
<%@include file="../common/footer.jsp"%>