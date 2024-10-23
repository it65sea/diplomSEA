
#Область ОбработчикиСобытийФормы
// Замечание Серегина М. №6
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Адрес = Параметры.Адрес; 
    ОтпускаСотрудников = ПолучитьИзВременногоХранилища(Адрес); 
    
    Для каждого Элемент Из ОтпускаСотрудников Цикл
    
    	 Точка = АнализОтпусков.УстановитьТочку(Элемент.Имя); 
         Серия = АнализОтпусков.УстановитьСерию("Отпуск"); 
         ЗначениеДГ = АнализОтпусков.ПолучитьЗначение(Точка, Серия);  
               
         Интервал = ЗначениеДГ.Добавить(); 
         Интервал.Начало = Элемент.Начало; 
         Интервал.Конец = Элемент.Конец; 

    КонецЦикла;
 
КонецПроцедуры
 

#КонецОбласти
