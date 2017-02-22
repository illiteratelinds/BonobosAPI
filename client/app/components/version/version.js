'use strict';

angular.module('BonobosApp.version', [
  'BonobosApp.version.interpolate-filter',
  'BonobosApp.version.version-directive'
])

.value('version', '0.1');
