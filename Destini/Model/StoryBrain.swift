//
//  StoryBrain.swift
//  Destini
//
//  Created by Valery Keplin on 10.06.22.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(title: "Вы пробили колесо в машине в незнакомой глухомани, где даже нет мобильной связи. Вы решаете ехать дальше автостопом. Начинаете голосовать, и через полчаса ржавая жига с грохотом останавливается рядом с Вами. Угрюмый мужик, имеющий необычайно стеклянный взгляд, в спортивном костюме с тёмными пятнами, открывает пассажирскую дверь и спрашивает: <<Чё, подкинуть?>>",
              choiceOne: "Конечно сяду. Спасибо, Дядь, за помощь!", choiceOneDestination: 2,
              choiceTwo: "Сразу спрошу не грохнул ли он кого часом.", choiceTwoDestination: 1),
        Story(title: "Он медленно кивает, подтверждая мои догадки...",
              choiceOne: "Ну по крайней мере он честен. Лезу в жигу.", choiceOneDestination: 2,
              choiceTwo: "Стой, я вспомнил как заменить колесо.", choiceTwoDestination: 3),
        Story(title: "Как только вы тронулись, мужик начинает рассказывать о своих отношениях с матерью. С каждой минутой рассказа он становится всё злее и неадекватнее. Он просит Вас открыть бардачок. Открываете, внутри окровавленный нож, два отрезанных пальца и диск <<Руки Вверх>>. Мужик тянется к бардачку...",
              choiceOne: "Обожаю Серёгу Жукова! Передаю диск", choiceOneDestination: 5,
              choiceTwo: "Или я или он! Хватаю нож и бью!", choiceTwoDestination: 4),
        Story(title: "Что? Это просто отмазка! Знаете ли Вы, Дорогой, что дорожно-транспортные происшествия являются второй основной причиной смерти от несчастных случаев для большинства взрослых дядь и тёть?",
              choiceOne: "Вот такой вот конец...", choiceOneDestination: 0,
              choiceTwo: "", choiceTwoDestination: 0),
        Story(title: "Когда вы вылетаете в овраг, пробивая отбойник, и летите вниз, Вы размышляете о сомнительной идеи нанесения ножевого ранения кому-либо, когда он управляет автомобилем, в котором Вы находитесь.",
              choiceOne: "Вот такой вот конец...", choiceOneDestination: 0,
              choiceTwo: "", choiceTwoDestination: 0),
        Story(title: "Вы прямо зафрендили с этим дядей, распевая <<Он Тебя Целует>>. Он подкидывает Вас в ближайший г.п. Перед тем как тронуться, он спрашивает: <<Может есть мысля где спрятать труп?>> Отвечаете: <<Попробуй овраг, что проезжали :)>>",
              choiceOne: "Вот такой вот конец...", choiceOneDestination: 0,
              choiceTwo: "", choiceTwoDestination: 0)
    ]
    
    func getStoryText() -> String {
        return stories[storyNumber].title
    }
    
    func getChoiceOneText() -> String {
        return stories[storyNumber].choiceOne
    }
    
    func getChoiceTwoText() -> String {
        return stories[storyNumber].choiceTwo
    }
    
    mutating func nextStory(userChoice: String) -> Int {
        if userChoice == stories[storyNumber].choiceOne {
            storyNumber = stories[storyNumber].choiceOneDestination
            return storyNumber
        } else {
            storyNumber = stories[storyNumber].choiceTwoDestination
            return storyNumber
        }
    }
}
