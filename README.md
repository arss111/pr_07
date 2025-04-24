## Практическая работа №7. Работа с внешними приложениями
## Цель:
научиться импортировать и экспортировать данные в базу данных SQL, освоить загрузку данных из внешних источников в таблицы базы данных, а также экспорт данных из базы данных в различные форматы,  научиться работать с внешними данными, преобразовывать их в нужный формат и интегрировать с существующими таблицами в базе данных.


1.	Загружаем и импортируем библиотеки psycopg2
 ![image](https://github.com/user-attachments/assets/d47e4e66-a254-43ea-99ca-e3de57ebbe76)

2.	После подключение к серверу базы данных и создадим таблицу Hospital, заполняем ее данными , не забываем закрывать соединение 
 ![image](https://github.com/user-attachments/assets/b206a57d-6a7c-4073-8c47-bf57ab2023c2)

3.	SQL-запросом создаем таблицу  докторов, заполняем ее
 
![image](https://github.com/user-attachments/assets/0c95cdc7-e174-4f89-ac9e-e1ec030c2f4e)

## Вариант 15
## Выполнены все индивидуальные задания, решения прикреплены в репозиторий
1.	Создайте таблицу "Patient" с полями "ID", "NAME", "AGE", "DIAGNOSIS".
 
 ![image](https://github.com/user-attachments/assets/494724b2-3d6d-42df-9ef1-58b4c492cc49)

![image](https://github.com/user-attachments/assets/8154fe8d-2bb3-416f-b78c-63a4e758ba3e)

2.	Вставьте 14 записей о пациентах
 ![image](https://github.com/user-attachments/assets/f8be7c37-e40e-4f20-beeb-c4d1e2f399f3)

Проверим наличие данных в таблице:
 ![image](https://github.com/user-attachments/assets/c515dfcc-78ef-441a-9e2f-86fa087e516a)

3.	Обновите стаж врача с ID=110 на 4 года.
 
 ![image](https://github.com/user-attachments/assets/bf37d94d-267d-49ed-9e7d-d529fc39e1cf)
 ![image](https://github.com/user-attachments/assets/e1d12749-740c-43e3-8f09-bdafd06649ee)


4.	Выведите список всех врачей с зарплатой выше 45000.
 
 ![image](https://github.com/user-attachments/assets/7eafeaee-465c-4749-ae5f-0c928a026967)
![image](https://github.com/user-attachments/assets/05bc4967-6c24-4e05-b559-b8e18cad7fcc)


Задание 5. Создайте столбчатую диаграмму для анализа зарплат врачей по больницам.
 ![image](https://github.com/user-attachments/assets/69c82e4b-9d14-4058-b05a-2c3e004c39a7)


## Вывод: 
в ходе работы были освоены способы экспорта, импорта данных, работа с новыми библиотеками , навык преобразовывать данные  в нужный формат и интеграция с существующими таблицами в базе данных.







