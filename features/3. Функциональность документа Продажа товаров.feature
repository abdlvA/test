﻿#language: ru

@tree

Функционал: Функциональность документа Продажа товаров

Как Администратор я хочу
протестировать работу документа Продажа товаров
чтобы проверить его функциональность   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Функциональность документа Продажа товаров
И Заполнение шапки Продажи товара
* Заполнение табличной части
    Когда открылось окно 'Продажа товара (создание) *'
    И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
    И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Молоко'
    И я перехожу к следующему реквизиту
    И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
    И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5,00'       
* Проверка заполнения суммы
    Тогда таблица "Товары" стала равной:
        | 'N' | 'Товар'  | 'Цена'  | 'Количество' | 'Сумма'  |
        | '1' | 'Молоко' | '45,00' | '5,00'       | '225,00' |

  