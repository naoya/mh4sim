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
    resist:
      火: 4
      水: 0
      雷: -3
      氷: 2
      龍: -5
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
    resist:
      火: 4
      水: 0
      雷: -3
      氷: 2
      龍: -5
  }
  {
    region:"腕"
    rare:7
    name:"アカムトサンクンペ"
    roma:"akamutosakunnpe"
    armor: 65
    skills: [
      { name:'匠', value:2 }
      { name:'達人', value:1 }
      { name:'聴覚保護', value:1 }
      { name:'切れ味', value:-2 }
    ]
    materials: [
      { name:'覇竜の剛爪', amount:5 }
      { name:'覇竜の上鱗', amount:4 }
      { name:'覇竜の宝玉', amount:1 } 
      { name:'鎧竜の延髄', amount:2 }
    ]
    resist:
      火: 4
      水: 0
      雷: -3
      氷: 2
      龍: -5
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
    resist:
      火: 4
      水: 0
      雷: -3
      氷: 2
      龍: -5
  }
  {
    region:"脚"
    rare:7
    name:"アカムトケマル"
    roma:"akamutokemaru"
    armor:65
    skills: [
      { name:'匠', value:3 }
      { name:'達人', value:3 }
      { name:'聴覚保護', value:1 }
      { name:'切れ味', value:-3 }
    ]
    materials: [
      { name:'覇竜の上鱗', amount:5 }
      { name:'覇竜の剛爪', amount:5 }
      { name:'覇竜の堅殻', amount:5 } 
      { name:'砕竜の宝玉', amount:1 }
    ]
    resist:
      火: 4
      水: 0
      雷: -3
      氷: 2
      龍: -5
  }
  ## シルバーソル
  {
    region:"頭"
    rare:7
    name:"シルバーソルヘルム"
    roma: "siruba-soruherumu"
    armor: 81
    skills: [
      { name:"痛撃", value:2 }
      { name:"斬れ味", value:3 }
      { name:"火属性攻撃", value:4 }
      { name:"回復量", value:-3 }
    ]
    materials: [
      { name:'銀火竜の上鱗', amount:5 }
      { name:'古龍の血', amount:1 }
      { name:'火竜の煌液', amount:3 }
      { name:'ノヴァクリスタル', amount:1 }
    ]
    resist:
      火: 2
      水: -7
      雷: -4
      氷: 0
      龍: 4
  }
  {
    region:"頭"
    rare:7
    name:"シルバーソルメイル"
    roma: "siruba-sorumeiru"
    armor: 81
    skills: [
      { name:"痛撃", value:1 }
      { name:"斬れ味", value:2 }
      { name:"回復量", value:-2 }
    ]
    materials: [
      { name:'銀火竜の堅殻', amount:5 }
      { name:'銀火竜の上鱗', amount:6 }
      { name:'火竜の翼', amount:3 }
      { name:'堅竜骨', amount:3 }
    ]
    resist:
      火: 2
      水: -7
      雷: -4
      氷: 0
      龍: 4
  }
  {
    region:"腕"
    rare:7
    name:"シルバーソルアーム"
    roma: "siruba-sorua-mu"
    armor: 81
    skills: [
      { name:"痛撃", value:2 }
      { name:"斬れ味", value:1 }
      { name:"火属性攻撃", value:4 }      
      { name:"回復量", value:-3 }
    ]
    materials: [
      { name:'銀火竜の尻尾', amount:1 }
      { name:'火竜の延髄', amount:2 }
      { name:'火竜の翼爪', amount:4 }
      { name:'獄炎石', amount:3 }
    ]
    resist:
      火: 2
      水: -7
      雷: -4
      氷: 0
      龍: 4
  }  
  {
    region:"腰"
    rare:7
    armor: 81
    name:"シルバーソルコイル"
    roma: "siruba-sorukoiru"
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
    resist:
      火: 2
      水: -7
      雷: -4
      氷: 0
      龍: 4
  }
  {
    region:"脚"
    rare:7
    armor: 81
    name:"シルバーソルグリーヴ"
    roma: "siruba-soruguri-bu"
    skills: [
      { name:"痛撃", value:3 }
      { name:"斬れ味", value:3 }
      { name:"火属性攻撃", value:4 }
      { name:"回復量", value:-2 }
    ]
    materials: [
      { name:'銀火竜の堅殻', amount:3 }
      { name:'銀火竜の上鱗', amount:5 }
      { name:'火竜の煌液', amount:4 }
      { name:'ノヴァクリスタル', amount:1 }
    ]
    resist:
      火: 2
      水: -7
      雷: -4
      氷: 0
      龍: 4
  } 
]
