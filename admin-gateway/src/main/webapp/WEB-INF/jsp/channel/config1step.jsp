<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/header.jsp"%>
<div class="row">


    <div class="col-sm-8 col-md-4 col-lg-3">
        <h1 style="text-align: center">
            新建cp配置
        </h1>
        <form  role="form" method="post" action="/channel/doconfig1step">
            <div class="input-group form-group input-group-lg">
                <span class="input-group-addon">cp名称</span>
                <input type="text" name="cpName" class="form-control" placeholder="cp名称" value="${cpName}">
            </div>
            <div class="input-group form-group input-group-lg">
                <span class="input-group-addon">短码</span>
                <input type="text" name="shortcode" class="form-control" placeholder="短码" maxlength="3" value="${shortcode}">
            </div>
            <div class="input-group form-group input-group-lg">
                <span class="input-group-addon">交易通知接口</span>
                <input type="text" name="noticeurl" class="form-control" placeholder="交易通知接口" value="${noticeurl}">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-block btn-primary">提交</button>
            </div>
        </form>
    </div>
    <div class="col-sm-4 col-md-8 col-lg-9">
    </div>
</div>
<%@include file="../common/footer.jsp"%>