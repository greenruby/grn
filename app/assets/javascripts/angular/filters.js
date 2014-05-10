'use strict';

var grnFilters = angular.module('grnFilters', []);

grnFilters.filter('short_date', function() {
  return function(input) {
    var date = new Date(input);
    return date.short_format();
  };
});
