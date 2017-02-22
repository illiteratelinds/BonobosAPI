'use strict';

angular.module('BonobosApp.home', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/home', {
    templateUrl: 'home/home.html',
    controller: 'HomeCtrl',
    resolve: {
      products: function($http){
        return $http.get("http://localhost:3000/products")
        .then(function(response){
          // debugger;
          return response.data.data;
        })
      }
    }
  });
}])

.controller('HomeCtrl', function($scope, products) {
  $scope.products = products;
  console.log(products);
})

.filter('unique', function() {
  return function(collection, keyname) {
    var output = [], 
    keys = [];

    angular.forEach(collection, function(item) {
      var key = item[keyname];
      if(keys.indexOf(key) === -1) {
        keys.push(key);
        output.push(item);
      }
    });
    return output;
  };
});
