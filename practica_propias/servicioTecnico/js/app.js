var app = angular.module('mainApp', ['ngRoute']);

app.controller('mainCtrl', ['$scope', function ($scope) {
	
	$scope.menu = 'templates/menu.html';
	$scope.footer = 'templates/footer.html';
}]);