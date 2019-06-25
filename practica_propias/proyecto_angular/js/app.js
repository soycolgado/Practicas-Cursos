

	// Modulo
	var app = angular.module('uniApp', ['ngRoute']);
	
	// Controlador
	app.controller('ejemploCtrl', ['$scope', '$http', function ($scope,$http) {

		$scope.menuPrincipal = 'templates/menuPrincipal.html';

		$scope.setActive = function(Option){
			$scope.mInicio = "";
			$scope.mAlumnos = "";
			$scope.mProfesores = "";

			$scope[Option] = "active";
		};

	}]);

	app.filter("telefono",function(){
		return function(numero){
			return numero.substring(0, 3)+"-"+numero.substring(3);
		};
	});

	

		


	

