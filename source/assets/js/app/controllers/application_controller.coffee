#= require app/app

@palavaPortal.controller('ApplicationController', ['$scope', '$log', '$routeParams', '$location', '$translate', ($scope, $log, $routeParams, $location, $translate) ->

  ## private functions ##
  setupLogger = ->
    $scope.log = ->
      $log.log   'DEBUG', arguments
    $scope.log_info  = ->
      $log.info  'INFO', arguments
    $scope.log_warn  = ->
      $log.warning 'WARNING', arguments
    $scope.log_error = ->
      $log.error 'ERROR', arguments

  ## public functions ##
  $scope.palavaAlert = (message) ->
    $('#palava-alert .alert-content').html(message)
    $('#palava-alert').show()

  $scope.goHome = ->
    $location.path "/"
    setTimeout ->
      $('.modal').modal 'hide'
    , 1

  $scope.changeLanguage = (key)->
    $translate.use(key)

  ## init ##
  setupLogger()
])
