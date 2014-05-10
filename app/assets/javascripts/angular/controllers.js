'use strict';

var grnControllers = angular.module('grnControllers', []);

grnControllers.controller('GrnListCtrl',
  ['$scope', 'Edition',
    function($scope, Edition) {
      $scope.editions = Edition.all;
    }
]
);
