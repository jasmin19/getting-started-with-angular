app = angular.module "starter.services", []

app.factory "storageService", ($window) ->

    set: (key, value) ->
        $window.localStorage.setItem key, value

    get: (key) ->
        $window.localStorage.getItem key
