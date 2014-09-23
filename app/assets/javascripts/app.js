window.App = angular.module('App', [

	'ngRoute',
	'ngResource'

]).config([

	'$routeProvider',
	'$locationProvider',
	'$httpProvider', 

	function($routeProvider, $locationProvider, $httpProvider){

		$httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
	
		$routeProvider
			.when('/', {
				templateUrl: '/template/home/main',
			})
			.otherwise({ redirectTo : '/' });

		$locationProvider.html5Mode(true);
	}
]);