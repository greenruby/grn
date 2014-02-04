'use strict';

var grnServices = angular.module('grnServices', ['ngResource']);

grnServices.factory('Edition',
  ['$resource',
    function($resource) {
      function Edition() {
        this.service = $resource('/api/grn-:title', {title: '@title'});
        this.all = $resource('/api/editions').query();
      };
      return new Edition;
    }
  ]
)
