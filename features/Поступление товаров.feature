﻿#language: ru

@tree

Функционал: Поступление товаров

Как Администратор я хочу
создать, заполнить и провести поступление товаров
чтобы проверить его функциональность 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Поступление товаров
И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров'
Тогда открылось окно 'Поступления товаров'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Поступление товара (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
И я нажимаю кнопку выбора у поля с именем "Поставщик"
Тогда открылось окно 'Контрагенты'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000012' | 'Мосхлеб ОАО'  |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Поступление товара (создание) *'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И я нажимаю на кнопку с именем 'ФормаДерево'
И я нажимаю на кнопку с именем 'ФормаСписок'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000029' | 'Хлеб'         |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Поступление товара (создание) *'
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '30,00'
И в таблице "Товары" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Поступление товара (создание) *' в течение 20 секунд