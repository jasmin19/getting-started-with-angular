app = angular.module "starter.directives", []


app.directive "helloFromAngular", () ->
    return {
        restrict:   "E" # only match element name
        controller: ($scope) ->
            $scope.name = "Name"
        templateUrl: "templates/hello.html"
    }
