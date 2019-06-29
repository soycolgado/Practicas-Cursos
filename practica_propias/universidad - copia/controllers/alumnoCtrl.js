app.controller('alumnoCtrl',['$scope','$http','$routeParams', function($scope,$http,$routeParams){
	var codigo = $routeParams.codigo;
	console.log(codigo);
	$scope.alumno = {};
	$http.get('php/servicios/alumnos.getAlumno.php?c='+codigo).then(function(data){
		$scope.alumno = data.data;
		console.log($scope.alumno);
	});
}]);