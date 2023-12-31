﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIBuild

Функционал: Заполнение шапки Продажи товара

Как Администратор я хочу
заполнить шапку Продажи товара
чтобы протестировать его работу  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение шапки Продажи товара
* Открытие документа
    И В командном интерфейсе я выбираю 'Продажи' 'Продажа'
* Заполнение шапки
    Когда открылось окно 'Продажа товара (создание)'
    И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
    И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Обувь"'
    И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
            