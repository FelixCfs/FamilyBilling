<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<div class="jumbotron text-left">
	<h2>分类管理</h2>
	<select ng-model="category" ng-options="category.displayname for category in categories track by category.id" class="form-control">
		<option value="">--请选择--</option>
	</select>
	<div>
		<table class="table table-striped">
			<tr>
				<th>类名</th>
				<th>操作</th>
			</tr>
			<tr ng-repeat="expenseType in filtered = (expenseTypes | filter:{'category_id':category.id})" ng-class-even="'even'"
				ng-class-odd="'odd'">
				<td>{{expenseType.id}} - {{expenseType.displayname}} </td>
				<td><a class="btn btn-danger" ng-click="deleteExpenseType(expenseType)">删除</a></td>
			</tr>
		</table>
		</br>
		总数: {{ filtered.length }}
		<table class="table table-striped">
			<tr>
				<td>新类别：<input type="text"	ng-model="newType.displayname" />&nbsp; 
					<a class="btn btn-primary" ng-click="addType()">添加</a>
				</td>
			</tr>
		</table>
	</div>
</div>