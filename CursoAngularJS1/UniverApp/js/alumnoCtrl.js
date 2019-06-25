app.controller('alumnoCtrl',['$scope','$routeParams','$http',function($scope,$routeParams,$http){
	$scope.setActive('mAlumnos');

	var codigo = $routeParams.codigo;
	$scope.alumno = {};
	$http.get('php/servicios/alumnos.getAlumno.php?c='+codigo).success(function(data){

		if(data.err !== undefined){
			window.location = '#/alumnos'
			return;
		}

		$scope.alumno = data;
	});

	$scope.guardarAlumno = function(){
		$http.post('php/servicios/alumnos.guardar.php',$scope.alumno).success(function(data){
			console.log(data);
		});
	};
}]);