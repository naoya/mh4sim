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
  $scope.total_resists = total_resists

  $scope.selectItem = (item) ->
    if item.checked
      # 選択済みの部位と被ってたら前のを選択解除
      if prev = selected_items[item.region]
        prev.checked = false
        
      selected_items[item.region] = item
    else
      selected_items[item.region] = null

    $scope.calcTotalResists()

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

  $scope.selectedItemByRegion = (region) ->
    return selected_items[region]

  $scope.totalResistByElement = (element) ->
    return $scope.total_resists[element]
    
  $scope.selectedSkills = ->
    skills = {}
    angular.forEach selected_items, (item, region) ->
      if item?
        angular.forEach item.skills, (skill) ->
          skills[skill.name] ||= 0
          skills[skill.name] += skill.value
    return skills

  $scope.selectedMaterials = ->
    materials = {}
    angular.forEach selected_items, (item, region) ->
      if item?
        angular.forEach item.materials, (material) ->
          materials[material.name] ||= 0
          materials[material.name] += material.amount
    return materials

  $scope.totalArmorValue = ->
    armor = 0
    angular.forEach selected_items, (item, region) ->
      if item?
        armor += item.armor
    return armor

  $scope.orderedTotalresists = ->
    result = []
    ["火", "水", "雷", "氷", "龍"].map (e) ->
      console.log e
      # result.push element:e, value:$scope.totalResistByElement(e)
      result.push element:e, value:$scope.totalResistByElement(e)
    return result

skillCtrl = app.controller 'SkillCtrl', ($scope) ->
  $scope.hasPositiveEffect = () ->
    return $scope.value >= 10

  $scope.hasNegativeEffect = () ->
    return $scope.value <= -10

# resistCtrl = app.controller 'ResistCtrl', ($scope) ->

itemsCtrl.$inject = ['$scope', '$filter', 'items', 'selected_items', 'total_resists']
skillCtrl.$inject = ['$scope']
