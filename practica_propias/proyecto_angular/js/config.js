app.config(function($routeProvider) {
	$routeProvider.
	when('/', {
		templateUrl: 'templates/home.html',
		controller: 'homeCtrl'
	}).when('/alumnos', {
		templateUrl: 'templates/alumnos.html',
		controller: 'alumnosCtrl'
	}).when('/profesores', {
		templateUrl: 'templates/profesores.html',
		controller: 'profesoresCtrl'
	}).otherwise({ redirectTo: '/' });
});