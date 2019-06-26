
	// creacion del modulo
	var app = angular.module('uniApp', ['ngRoute']);
	// creacion del controlador principal
	app.controller('mainCtrl', ['$scope', function($scope){
		
		// Referencia al menubar
		$scope.menu = 'templates/menu.html';
		//Referencia Footer
		$scope.footer = 'templates/footer.html';

		$scope.setActive = function(Option){
			$scope.mInicio = "";
			$scope.mAlumnos = "";
			$scope.mProfesores = "";

			$scope[Option] = 'active';
		}
	}]);

