app.controller('alumnosCtrl', ['$scope','$http', function ($scope,$http) {
	$scope.setActive('mAlumnos');

	$scope.datosAlumnos = {};

	$http.get('php/servicios/alumnos.listado.php').success(function(data){
		$scope.datosAlumnos = data;
	});
}]);