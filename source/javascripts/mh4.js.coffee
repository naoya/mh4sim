app = angular.module('mh4App', [])

app.value 'selected_items', {
  "頭": null
  "胴": null
  "腕": null
  "腰": null
  "足": null
}

itemsCtrl = app.controller 'ItemsCtrl', ($scope, $filter, items, selected_items) ->
  $scope.items = items
  $scope.selected_items = selected_items

  $scope.selectItem = (item) ->
    if item.checked
      # 選択済みの部位と被ってたら前のを選択解除
      if prev = selected_items[item.region]
        prev.checked = false
        
      selected_items[item.region] = item
    else
      selected_items[item.region] = null

  $scope.selectedItemByRegion = (region) ->
    return selected_items[region]
    
  $scope.selectedSkills = () ->
    skills = {}
    angular.forEach selected_items, (item, region) ->
      if item?
        angular.forEach item.skills, (skill) ->
          skills[skill.name] ||= 0
          skills[skill.name] += skill.value
    return skills

  $scope.selectedMaterials = () ->
    materials = {}
    angular.forEach selected_items, (item, region) ->
      if item?
        angular.forEach item.materials, (material) ->
          materials[material.name] ||= 0
          materials[material.name] += material.amount
    return materials

  $scope.totalArmorValue = () ->
    armor = 0
    angular.forEach selected_items, (item, region) ->
      if item?
        armor += item.armor
    return armor

itemsCtrl.$inject = ['$scope', '$filter', 'items', 'selected_items']
