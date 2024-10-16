
&НаКлиенте
Процедура Заполнить(Команда)
    
    //использование механизма длительных операций БСП,
    ДлительнаяОперация = НачатьВыполнениеНаСервере(); 
    ОповещениеОЗавершении = Новый ОписаниеОповещения("ОбработатьРезультат", ЭтотОбъект); 
    ПараметрыОжидания = ДлительныеОперацииКлиент.ПараметрыОжидания(ЭтотОбъект); 
    ДлительныеОперацииКлиент.ОжидатьЗавершение(ДлительнаяОперация, ОповещениеОЗавершении, ПараметрыОжидания); 
    
КонецПроцедуры

&НаСервере
Функция НачатьВыполнениеНаСервере()

	 ПараметрыВыполнения = ДлительныеОперации.ПараметрыВыполненияФункции(УникальныйИдентификатор);
     Возврат ДлительныеОперации.ВыполнитьФункцию(ПараметрыВыполнения,"Обработки.ВКМ_МассовоеСозданиеАктов.СоздатьСписокНаСервере",
        Объект.Период.ДатаНачала, Объект.Период.ДатаОкончания); 

КонецФункции // ()  
    
&НаКлиенте
Процедура ОбработатьРезультат(Результат, ДополнительныеПараметры) Экспорт

	Если Результат = Неопределено Тогда
    
    	Возврат; 
    
    КонецЕсли;   
    
    СписокРеализацийМассив = ПолучитьИзВременногоХранилища(Результат.АдресРезультата); 
    ЗаполнитьСписокРеализаций(СписокРеализацийМассив); 

КонецПроцедуры  

&НаКлиенте
Процедура  ЗаполнитьСписокРеализаций(СписокРеализацийМассив)
    
     Объект.СписокРеализаций.Очистить();
     
     Для каждого Строка Из СписокРеализацийМассив Цикл
     
     	 НоваяСтрока = Объект.СписокРеализаций.Добавить(); 
         НоваяСтрока.Договор = Строка.Договор; 
         НоваяСтрока.Реализация = Строка.Реализация; 
     
     КонецЦикла;

	

КонецПроцедуры


