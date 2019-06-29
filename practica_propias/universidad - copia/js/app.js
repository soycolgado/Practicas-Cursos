var app = angular.module('mainApp', ['ngRoute']);

app.controller('mainCtrl', ['$scope', function ($scope) {
	$scope.menuPrincipal = "templates/menu.html";


	$scope.setActive = function(Option){
		$scope.mInicio = "";
		$scope.mAlumnos ="";
		$scope.mProfesores ="";
		$scope[Option] = "active";
	};

}]);