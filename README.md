Pre-requites: Newman and allure are already installed.
To run tests, please execute run.cmd in a current folder.

Тестовое задание 

Имеется сервис https://restful-booker.herokuapp.com/apidoc/index.html, который предоставляет REST-API для СRUD операций.

Требуется изучить API — документацию(https://restful-booker.herokuapp.com/apidoc/index.html ), потом составить позитивные и негативные тест-кейсы(в удобном для Вас формате, например xlsx файл) для следующих http эндпоинтов:

/auth(POST)

/booking (POST)

/booking с параметрами запроса(firstname,lastname,checkin,checkout)(GET)

/booking/:id (GET,PUT,PATCH,DELETE)

/ping (GET)

Затем следует создать Postman колекцию , в которую требуется перенести созданные тест-кейсы , добавив необходимые проверки во вкладку Tests.

Сервис может содержать различные баги , при их обнаружении создайте баг-репорт , содержащий необходимые разделы(шаги воспроизведения, ожидаемый результат, фактический результат и т.д) в удобном для вас формате, например xlsx файл.

Результатом выполнения задания должен являться проект на GitHub, содержащий:
	- Экспортированную Postman коллекцию в json формате
	- Файл с тест-кейсами
	- Баг-репорт(при обнаружении багов)




