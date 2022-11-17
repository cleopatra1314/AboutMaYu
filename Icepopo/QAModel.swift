//
//  QAModel.swift
//  Icepopo
//
//  Created by 黃郁雯 on 2022/11/7.
//

import Foundation

//typealias QAData = (question: String, optionA: String, optionB: String, optionC: String, optionD: String, answer: String, score: Int)

struct QA{
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let answer: String
    let score: Int
}

var QAArray = [
QA(question: "我曾有過什麼夢想？", optionA: "去中東當戰地記者", optionB: "當一位家庭主婦 aka 賢妻良母", optionC: "當一位為人民喉舌的政客", optionD: "做一位教育英才的老師", answer: "去中東當戰地記者", score: 10),
QA(question: "以下哪件事是事實？", optionA: "私底下很搞笑，喜歡動來動去", optionB: "喜歡可愛療癒小物", optionC: "是個追星迷妹", optionD: "很懶，可以不做事就不做事", answer: "私底下很搞笑，喜歡動來動去", score: 10),
QA(question: "我有怎樣的飲食習慣？", optionA: "每樣東西都要最熱，燙到舌頭也沒關係", optionB: "吃東西很大聲，尤其是好吃的食物", optionC: "食物一來就是先給它放涼", optionD: "就算會變肥，也要吃很甜的甜食", answer: "每樣東西都要最熱，燙到舌頭也沒關係", score: 10),
QA(question: "以下我去過哪個國家？", optionA: "美國", optionB: "以色列", optionC: "加拿大", optionD: "印度", answer: "以色列", score: 10),
QA(question: "我的身份其實是？", optionA: "有錢人", optionB: "澎湖人", optionC: "家中排行最小", optionD: "變性人", answer: "澎湖人", score: 10),
QA(question: "哪個不是我的綽號？", optionA: "阿馬", optionB: "阿雯", optionC: "小風紀", optionD: "馬郁", answer: "阿雯", score: 10),
QA(question: "哪個不是我有的收藏？", optionA: "各式大大小小復古普普風電視", optionB: "世界各地的星巴克馬克杯", optionC: "保特瓶裝充滿細菌的撒哈拉沙漠沙子", optionD: "五年份鸚鵡羽毛", answer: "世界各地的星巴克馬克杯", score: 10),
QA(question: "最喜歡的電影？", optionA: "蜘蛛人", optionB: "鐵達尼號", optionC: "古惑仔系列電影", optionD: "厲陰宅", answer: "古惑仔系列電影", score: 10),
QA(question: "喜歡的電影角色？", optionA: "鐵達尼號李奧納多", optionB: "不可能任務阿湯哥", optionC: "銅鑼灣扛霸子浩南哥", optionD: "四大天王郭富城", answer: "銅鑼灣扛霸子浩南哥", score: 10),
QA(question: "關於我何者有誤？", optionA: "可以騎20分鐘車，為了吃好吃早餐", optionB: "可以正餐吃一根香腸跟米腸", optionC: "可以睡一整天不做事", optionD: "可以餐餐都有海鮮，冰箱的海鮮從沒空過", answer: "可以睡一整天不做事", score: 10),
QA(question: "哪個是我的技能？", optionA: "打蟑螂", optionB: "得過金氏世界紀錄", optionC: "耍火舞", optionD: "用單腳著地騎重機", answer: "用單腳著地騎重機", score: 10),
QA(question: "我與動物的故事，何者有誤？", optionA: "打蚊子都用拖鞋先打暈在地上才敢用腳踩死", optionB: "用大菜刀殺了一隻豬", optionC: "用手捏螞蟻", optionD: "扛過活生生的鱷魚", answer: "用手捏螞蟻", score: 10),
QA(question: "在國外遇過的事，何者有誤？", optionA: "遇到暴動，看到催淚瓦斯彈從眼前飛過", optionB: "跟當地認識的朋友一起駕車私闖金字塔區，結果車拋錨被警察發現", optionC: "手機被搶走，過著沒手機的一個多月", optionD: "以上皆非", answer: "以上皆非", score: 10),
QA(question: "如果只能帶一樣東西去無人島，我會帶？", optionA: "打火機", optionB: "手機", optionC: "刀", optionD: "衛生紙", answer: "衛生紙", score: 10),
QA(question: "我斜槓了什麼工作？", optionA: "Podcast廣播主", optionB: "專欄作家", optionC: "YouTuber", optionD: "刺青師", answer: "刺青師", score: 10),
QA(question: "我不能忍受？", optionA: "騎車一天跨三個縣市", optionB: "下雨天騎車", optionC: "有人說我胖", optionD: "一天不打程式", answer: "一天不打程式", score: 10)
]
    


