
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	НачалоПериода = НачалоМесяца(ТекущаяДатаСеанса()); 
	КонецПериода = КонецМесяца(ТекущаяДатаСеанса());
	Планировщик.ТекущиеПериодыОтображения.Добавить(НачалоПериода, КонецПериода);
	
	
КонецПроцедуры
