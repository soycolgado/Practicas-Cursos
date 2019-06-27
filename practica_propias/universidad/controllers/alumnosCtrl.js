app.controller('alumnosCtrl', ['$scope','$http', function ($scope,$http) {
	$scope.setActive('mAlumnos');

	$scope.cantidad = 5;

	$scope.alumnos = {};
	$http.get('php/servicios/alumnos.listado.php').then(function(data){
		$scope.alumnos = data.data;
	});

	$scope.siguiente = function(){
		if($scope.cantidad < $scope.alumnos.length){

		$scope.cantidad+=5;
		}
	}

	$scope.anterior = function(){
		if($scope.cantidad > 5){
			$scope.cantidad-=5;

		}
	}
}])