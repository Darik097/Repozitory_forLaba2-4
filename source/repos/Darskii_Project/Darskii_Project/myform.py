from bottle import post, request
import re
import datetime

@post('/home', method='post')
def my_form():
    # Получение данных из формы
    mail = request.forms.get('ADRESS')
    question = request.forms.get('QUEST')
    
    # Проверка заполненности полей формы
    if not mail or not question:
        return "Please fill in all the fields."

    # Проверка адреса электронной почты
    if not re.match(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$", mail):
        return "Invalid email address."

    # Получение имени пользователя из адреса электронной почты
    username = mail.split('@')[0]

    # Формирование даты обращения
    access_date = datetime.datetime.now().strftime('%Y-%m-%d')

    # Формирование результирующего сообщения
    result_message = "Thanks, %s! The answer will be sent to the mail %s. Access Date: %s" % (username, mail, access_date)

    return result_message
