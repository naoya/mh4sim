app = angular.module('mh4App')
app.value 'items', [
  ## アカムト
  {
    region:"頭"
    rare:7
    name:"アカムトサクパケ"
    roma: "akamutosakupake"
    armor: 65
    skills: [
      { name:'匠', value:1 }
      { name:'達人', value:4 }
      { name:'聴覚保護', value:2 }
      { name:'切れ味', value:-2 }
    ]
    materials: [
      { name:'覇竜の大棘', amount:3 }
      { name:'覇竜の上鱗', amount:4 }
      { name:'覇竜の堅殻', amount:6 } 
      { name:'轟竜のアギト', amount:1 }
    ]
  }
  {
    region:"胴"
    rare:7
    name:"アカムトウルンテ"
    roma: "akamutourunte"
    armor: 65
    skills: [
      { name:'匠', value:2 }
      { name:'達人', value:3 }
      { name:'聴覚保護', value:1 }
      { name:'切れ味', value:-2 }
    ]
    materials: [
      { name:'覇竜の大牙', amount:3 }
      { name:'覇竜の大棘', amount:2 }
      { name:'覇竜の上鱗', amount:4 } 
      { name:'火竜の紅玉', amount:1 }
    ]
  }
  {
    region:"腰"
    rare:7
    name:"アカムトイッケク"
    roma:"akamutoikkeku"
    armor:65
    skills: [
      { name:'匠', value:2 }
      { name:'達人', value:2 }
      { name:'聴覚保護', value:1 }
      { name:'切れ味', value:-2 }
    ]
    materials: [
      { name:'覇竜の堅殻', amount:5 }
      { name:'覇竜の大牙', amount:3 }
      { name:'覇竜の尻尾', amount:1 } 
      { name:'雌火竜の紅玉', amount:1 }
    ]
  }
  ## シルバーソル
  {
    region:"頭"
    rare:7
    name:"シルバーソルヘルム"
    roma: "sirubasoruherumu"
    armor: 81
    skills: [
      { name:"痛撃", value:2 }
      { name:"切れ味", value:3 }
      { name:"火属性攻撃", value:4 }
      { name:"回復量", value:-3 }
    ]
    materials: [
      { name:'銀火竜の上鱗', amount:5 }
      { name:'古龍の血', amount:1 }
      { name:'火竜の煌液', amount:3 }
      { name:'ノヴァクリスタル', amount:1 }
    ]
  }
  {
    region:"腰"
    rare:7
    armor: 81
    name:"シルバーソルコイル"
    roma: "sirubasorukoiru"
    skills: [
      { name:"痛撃", value:2 }
      { name:"斬れ味", value:1 }
      { name:"火属性攻撃", value:5 }
      { name:"回復量", value:-3 }
    ]
    materials: [
      { name:'銀火竜の堅殻', amount:5 }
      { name:'火竜の翼', amount:3 }
      { name:'火竜の紅玉', amount:2 }
      { name:'爆炎袋', amount:3 }
    ]
  } 
]
