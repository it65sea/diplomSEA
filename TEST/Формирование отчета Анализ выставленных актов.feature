﻿#language: ru

@tree

Функционал: Формирование отчёта Анализ выставленных актов

Как тестировщик я хочу
показать процесс создания простого сценария тестирования 
чтобы разобрать процесс создания отчета    

Сценарий: Формирование отчёта Анализ выставленных актов
И я подключаю TestClient "DiplomУправлениеITФирмой" логин "Главный бухгалтер" пароль ""
И В командном интерфейсе я выбираю 'Добавленные объекты' 'Анализ выставленных актов'
Тогда открылось окно 'Анализ выставленных актов'
И в поле с именем 'Период1ДатаНачала' я ввожу текст '01.09.2024'
И в поле с именем 'Период1ДатаОкончания' я ввожу текст '30.09.2024'
И в табличном документе 'ОтчетТабличныйДокумент' я перехожу к ячейке "R11C4"
И я нажимаю на кнопку с именем 'СформироватьОтчет'
И в табличном документе 'ОтчетТабличныйДокумент' я перехожу к ячейке "R11C4"

				   
