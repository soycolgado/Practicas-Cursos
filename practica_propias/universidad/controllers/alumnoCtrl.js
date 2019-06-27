app.controller('alumnoCtrl', ['$scope','$routeParams','$http', function ($scope,$routeParams,$http) {
	var codigo = $routeParams.codigo;
	$scope.alumno = {};
	$scope.mostrarGuardado = false;
	$scope.creado = false;

	if(codigo == 'crear'){
		$scope.creado = true;
	}else{
		$http.get('php/servicios/alumnos.getAlumno.php?c='+codigo).then(function(data){
			$scope.alumno = data.data;
		})

	}


	

	$scope.editar = function(){
		if($scope.creado){
			$http.post('php/servicios/alumnos.crear.php',$scope.alumno).then(function(data){
				console.log(data);
				if(data.data.err === false){
					$scope.mostrarGuardado = true;
					setTimeout(function(){
						$scope.mostrarGuardado = false;
						$scope.$apply();
					},3500);
				}
			});

		}else{
			$http.post('php/servicios/alumnos.guardar.php',$scope.alumno).then(function(data){
				console.log(data);
				if(data.data.err === false){
					$scope.mostrarGuardado = true;
					setTimeout(function(){
						$scope.mostrarGuardado = false;
						$scope.$apply();
					},3500);
				}
			});
		}
	};

}])