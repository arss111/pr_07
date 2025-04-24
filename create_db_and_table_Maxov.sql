 # Создание таблицы Hospital
    create_table_query = '''
    CREATE TABLE Hospital (
        Hospital_Id serial NOT NULL PRIMARY KEY,
        Hospital_Name VARCHAR (100) NOT NULL,
        Bed_Count serial
    );
    '''

#Создание таблицы докторов 

CREATE TABLE Doctor (
    Doctor_Id serial NOT NULL PRIMARY KEY,
    Doctor_Name VARCHAR (100) NOT NULL,
    Hospital_Id serial NOT NULL,
    Joining_Date DATE NOT NULL,
    Speciality VARCHAR (100) NOT NULL,
    Salary INTEGER NOT NULL,
    Experience SMALLINT
);

-- Вставка данных о докторах
INSERT INTO Doctor (Doctor_Id, Doctor_Name, Hospital_Id, Joining_Date, Speciality, Salary, Experience)
VALUES
('101', 'David', '1', '2005-02-10', 'Pediatric', 40000, NULL),
('102', 'Michael', '1', '2018-07-23', 'Oncologist', 20000, NULL),
('103', 'Susan', '2', '2016-05-19', 'Garnacologist', 25000, NULL),
('104', 'Robert', '2', '2017-12-28', 'Pediatric', 28000, NULL),
('105', 'Linda', '3', '2004-06-04', 'Garnacologist', 42000, NULL),
('106', 'William', '3', '2012-09-11', 'Dermatologist', 30000, NULL),
('107', 'Richard', '4', '2014-08-21', 'Garnacologist', 32000, NULL),
('108', 'Karen', '4', '2011-10-17', 'Radiologist', 30000, NULL),
('109', 'James', '1', '2022-01-15', 'Cardiologist', 45000, 5),
('110', 'Emily', '1', '2023-04-10', 'Orthopedic Surgeon', 50000, 3),
('111', 'Olivia', '2', '2021-09-05', 'Neurologist', 42000, 4),
('112', 'John', '2', '2024-02-18', 'Surgeon', 60000, 2),
('113', 'Sophia', '3', '2022-07-30', 'Urologist', 38000, 6),
('114', 'Daniel', '3', '2025-03-22', 'Pulmonologist', 47000, 1),
('115', 'Isabella', '4', '2023-11-01', 'Pediatrician', 41000, 3),
('116', 'Liam', '4', '2022-05-25', 'Dermatologist', 35000, 4),
('117', 'Mia', '1', '2024-06-17', 'Gastroenterologist', 53000, 2),
('118', 'Lucas', '2', '2023-01-12', 'Anesthesiologist', 46000, 3);

#Создание таблицы пациентов

create_table_query = '''CREATE TABLE patient
          (id INT PRIMARY KEY NOT NULL,
          name VARCHAR(100) NOT NULL,
          age INT,
          diagnosis VARCHAR(100)
          ); '''
#Вставка данных в таблицу

 insert_query = '''INSERT INTO Patient (ID, NAME, AGE, DIAGNOSIS) VALUES
 (1, 'Иванов Иван Иванович', 45, 'Гипертоническая болезнь'),
 (2, 'Петрова Мария Сергеевна', 32, 'Сахарный диабет 2 типа'),
 (3, 'Сидоров Алексей Владимирович', 28, 'Острый бронхит'),
 (4, 'Кузнецова Елена Дмитриевна', 56, 'Остеоартроз коленных суставов'),
 (5, 'Смирнов Дмитрий Петрович', 61, 'ИБС: Стенокардия напряжения'),
 (6, 'Федорова Анна Михайловна', 24, 'Атопический дерматит'),
 (7, 'Николаев Артем Игоревич', 19, 'Острый гастрит'),
 (8, 'Павлова Ольга Александровна', 42, 'Хронический пиелонефрит'),
 (9, 'Волков Сергей Николаевич', 37, 'Язвенная болезнь желудка'),
 (10, 'Козлова Ирина Викторовна', 29, 'Бронхиальная астма'),
 (11, 'Лебедев Михаил Олегович', 53, 'ХОБЛ'),
 (12, 'Соколова Наталья Валерьевна', 48, 'Желчнокаменная болезнь'),
 (13, 'Орлов Андрей Сергеевич', 65, 'Артериальная гипертензия'),
 (14, 'Антонова Юлия Дмитриевна', 31, 'Хронический тонзиллит'); '''

# Печать данных о докторе после обновления
        select_query = """SELECT Doctor_Id, Doctor_Name, Hospital_Id, Joining_Date, Speciality, Salary, Experience
                          FROM Doctor WHERE Doctor_Id = %s"""

 # SQL-запрос для получения списка врачей с зарплатой выше указанной
        sql_select_query = """SELECT * FROM Doctor WHERE Salary > %s ORDER BY Salary DESC"""

# Запрос для получения средних зарплат по больницам
        query = """
        SELECT h.Hospital_Name, AVG(d.Salary) as Avg_Salary
        FROM Doctor d
        JOIN Hospital h ON d.Hospital_Id = h.Hospital_Id
        GROUP BY h.Hospital_Name
        ORDER BY Avg_Salary DESC
        """