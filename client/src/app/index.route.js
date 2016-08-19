export function routerConfig ($stateProvider, $urlRouterProvider) {
  'ngInject';
  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'app/main/main.html',
      controller: 'MainController',
      controllerAs: 'main'
    })
    .state('jobs', {
      url: '/jobs',
      templateUrl: 'app/jobs/jobs.html',
      controller: 'JobsController',
      controllerAs: 'jobs'
    });

  $urlRouterProvider.otherwise('/');
}
