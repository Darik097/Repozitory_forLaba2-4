from bottle import post, request
import datetime
import json
import re

def validate_email(email):
        # Проверка адреса электронной почты
        pattern = r"[a-zA-Z.\-_]{3,20}@[a-zA-Z]{3,10}(\.{1}[a-z]{2,5}){1,5}"
        return re.match(pattern, email)

@post('/home', method='POST')  # обработка post-запросов
def my_form():
    # получение значения параметра с именем NAME
    name = request.forms.get('NAME')
    # проверка наличия имени
    if not name:
        return "Name is required."

    # получение значения параметра с именем ADRESS
    mail = request.forms.get('ADRESS')
    # проверка наличия почты
    if not mail:
        return "Email is required."


    # получение занчения параметра с именем QUEST
    question = request.forms.get('QUEST')
    # проверка на количество символов в вопросе (должно быть более 3-х)
    if len(question) <= 3:
        return "Question should be longer than 3 characters."


    if not re.match(r"^[a-zA-Z\d]{3,}.*?$", question) or question.isdigit() or not any(char.isalpha() or char.isspace() for char in question) or question.count('?') > 1:
        return "Please enter a valid question. Your question should be in English, contain at least one letter, and be at least 3 characters long."


    # проверка наличия только цифр в вопросе
    if question.isdigit():
        return "Question should not consist only of digits."


    # загрузка данных из файла при его наличии
    try:
        with open('questions.json', 'r') as read_json:
            questions = json.load(read_json)
    except FileNotFoundError:
        questions = {}
    except:
        return "Unknown error"

    if mail in questions:
        # вывод сообщения об ошибке, если имя отличается от указанного в словаре для данной почты
        if name.lower() != questions[mail][0].lower():
            return "Error! The name is different from the one you specified earlier!"
        
        # добавление нового вопроса в список, если вопросы не совпадают (с учетом регистра)
        if question.lower() in [q.lower() for q in questions[mail][1:]]:
            return "Error! This question has already been asked."
        else:
            questions[mail].append(question)
    # создание новой записи в словаре при отсутствии данной почты
    else:
        questions[mail] = [name, question]

    # запись данных в json
    with open('questions.json', 'w') as file:
        json.dump(questions, file, indent=4)  # 4 отступа для сериализации

    # возвращаемое сообщение
    today = datetime.date.today().strftime("%Y-%m-%d")
    return "Thanks, {}! The answer will be sent to the mail {}. Access date: {}".format(name, mail, today)