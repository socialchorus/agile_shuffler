function DevsListCtrl($scope, $http) {
  $http.get('/devs.json').success(function(data) {
    $scope.devs = data;
  });
}

//var getCheckedIds = function () {
//  var devIds = []
//  $scope('.open-story:checkbox:checked').each(function () {
//    devIds.push($(this).val());
//  });
//  debugger;
//  return devIds;
//}
