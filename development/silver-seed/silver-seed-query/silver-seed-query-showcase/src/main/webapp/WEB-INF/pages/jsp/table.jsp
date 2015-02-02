<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div ng-controller="TableAndViewController" class="main">
    <div class="page-header">
        <h2>Query Setting</h2>
    </div>
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation"><a href="#basic">Basic Setting</a></li>
        <li role="presentation" class="active"><a href="#">Table & View</a></li>
        <li role="presentation"><a href="#">Parameter</a></li>
        <li role="presentation"><a href="#">Field</a></li>
    </ul>

    <form class="form-horizontal" role="form" method="POST"
          action="${ctx}/query/store-basic-and-forward">

        <div class="panel panel-default" style="margin-top: 10px;">
            <div class="panel-heading">可选</div>
            <div class="control-section">
                <select ng-model="selected">
                    <option ng-repeat="table in tables">{{table}}</option>
                </select>
            </div>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>表名</th>
                    <th>别名</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr ng-repeat="t in tablesSelected">
                    <td>{{t.name}}</td>
                    <td>{{t.alias}}</td>
                    <td>
                        <button type="button" class="btn btn-primary btn-block" ng-click="delete(t.name)">Delete
                        </button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">关联字段</div>
            <div class="btn-group" role="group" style="padding:10px;">
                <button type="button" class="btn btn-default">新增</button>
                <button type="button" class="btn btn-default">删除</button>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-2">
                <button type="button" class="btn btn-primary btn-block" ng-click="submit()">Next</button>
            </div>
        </div>
    </form>
</div>
