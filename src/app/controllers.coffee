app = angular.module "starter.controllers", []


app.controller "AppController", ["$scope", "storageService", ($scope, storageService) ->
    $scope.test = "This value is scoped"

    $scope.saveName = (name) ->
        storageService.set "name", name

    $scope.getName = ->
        storageService.get "name"
]
