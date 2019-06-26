app.config(function($routeProvider) {
	$routeProvider.when('/inicio', {
		templateUrl: 'templates/inicio.html',
		controller: 'inicioCtrl'
	}).when('/alumnos', {
		templateUrl: 'templates/alumnos.html',
		controller: 'alumnosCtrl'
	}).when('/profesores', {
		templateUrl: 'templates/profesores.html',
		controller: 'profesoresCtrl'
	}).otherwise({ redirectTo: '/inicio' })
});