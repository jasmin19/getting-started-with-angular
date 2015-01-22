app = angular.module 'starter', ['ui.router', 'starter.controllers', 'starter.directives', 'starter.services']

# configure existing services inside initialization blocks.
app.config ($stateProvider, $urlRouterProvider) ->

    $stateProvider.state "demo",
        url: "/"
        views:
            '':
                template: "Foo"
            'other':
                template: "bar"

    $urlRouterProvider.otherwise "/"
