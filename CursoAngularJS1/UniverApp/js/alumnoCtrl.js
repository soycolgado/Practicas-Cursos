app.controller('alumnoCtrl',['$scope','$routeParams','$http',function($scope,$routeParams,$http){
	$scope.setActive('mAlumnos');

	var codigo = $routeParams.codigo;
	$scope.alumno = {};
	$scope.mensaje = false;

	$scope.creado = false;

	if(codigo == 'nuevo'){
		$scope.creado = true;
	}else{
		$http.get('php/servicios/alumnos.getAlumno.php?c='+codigo).success(function(data){

			if(data.err !== undefined){
				window.location = '#/alumnos'
				return;
			}

			$scope.alumno = data;
		});

	}


	$scope.guardarAlumno = function(){

		if($scope.creado){
			$http.post('php/servicios/alumnos.crear.php',$scope.alumno).success(function(data){
				if(data.err === false){
					$scope.mensaje = true;
					setTimeout(function(){
						$scope.mensaje = false;
						$scope.$apply();
					},3500);
				}

			});
		}else{
			$http.post('php/servicios/alumnos.guardar.php',$scope.alumno).success(function(data){
				if(data.err === false){
					$scope.mensaje = true;
					setTimeout(function(){
						$scope.mensaje = false;
						$scope.$apply();
					},3500);
				}

			});
		}

	};
}]);