'use strict';

// Declare app level module which depends on homes, and components
angular.module('BonobosApp', [
  'ngRoute',
  'BonobosApp.home'
  // 'BonobosApp.version'
]).
config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
  $locationProvider.hashPrefix('!');

  $routeProvider.otherwise({redirectTo: '/home'});
}]);
