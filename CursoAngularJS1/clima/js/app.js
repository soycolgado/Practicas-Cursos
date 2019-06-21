(function(){
	var app = angular.module("ejemplosApp",[]);
	app.controller("mainCtrl",["$scope","$http",function($scope,$http){
		$scope.clima = {};

		$http.jsonp('http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&callback=JSON_CALLBACK&appid=9f50a805aa0089a1edd1829a5db029f0').success(function(data){
			$scope.clima = data;
		});

		$scope.KelvinCelsius = function(k){
			var c = k - 273.15;
			c = Math.round(c*100)/100;
			return c;
		}

	}])
}());