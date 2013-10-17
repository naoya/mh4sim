app = angular.module('mh4App', [])

app.value 'selected_items',
  頭: null
  胴: null
  腕: null
  腰: null
  脚: null

app.value 'total_resists',
  火: 0
  水: 0
  雷: 0
  氷: 0
  龍: 0

itemsCtrl = app.controller 'ItemsCtrl', ($scope, $filter, items, selected_items, total_resists) ->
  $scope.items = items
  $scope.selected_items = selected_items
  $scope.required_materials = {}
  $scope.total_resists = total_resists
  $scope.skills = {}

  $scope.getTotalArmorValue = ->
    armor = 0
    angular.forEach selected_items, (item, region) ->
      if item?
        armor += item.armor
    return armor

  $scope.selectItem = (item) ->
    if item.checked
      # 選択済みの部位と被ってたら前のを選択解除
      if prev = selected_items[item.region]
        prev.checked = false
        
      selected_items[item.region] = item
    else
      selected_items[item.region] = null

  $scope.calcTotalResists = ->
    resists =
      火: 0
      水: 0
      雷: 0
      氷: 0
      龍: 0
      
    angular.forEach selected_items, (item, region) ->
      if item?
        angular.forEach item.resist, (value, element) ->
          resists[element] ||= 0
          resists[element] += value

    angular.forEach resists, (value, key) ->
      $scope.total_resists[key] = value
  
  $scope.updateSkills = ->
    skills = {}
    angular.forEach selected_items, (item, region) ->
      if item?
        angular.forEach item.skills, (skill) ->
          skills[skill.name] ||= 0
          skills[skill.name] += skill.value
    $scope.skills = skills

  $scope.updateRequiredMaterials = ->
    materials = {}
    angular.forEach selected_items, (item, region) ->
      if item? and not item.approved
        angular.forEach item.materials, (material) ->
          materials[material.name] ||= 0
          materials[material.name] += material.amount
    $scope.required_materials = materials

  ## register observer
  $scope.$watchCollection 'selected_items', $scope.calcTotalResists
  $scope.$watchCollection 'selected_items', $scope.updateSkills
  $scope.$watch 'selected_items', $scope.updateRequiredMaterials, true

## itemCtrl extends itemsCtrl
# itemCtrl = app.controller 'ItemCtrl', ($scope) ->
#   $scope.$watch 'item.approved', $scope.updateRequiredMaterials

skillCtrl = app.controller 'SkillCtrl', ($scope) ->
  $scope.hasPositiveEffect = () ->
    return $scope.value >= 10

  $scope.hasNegativeEffect = () ->
    return $scope.value <= -10

itemsCtrl.$inject = ['$scope', '$filter', 'items', 'selected_items', 'total_resists']
# itemCtrl.$inject  = ['$scope']
skillCtrl.$inject = ['$scope']
