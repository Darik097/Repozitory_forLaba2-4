from wsgiref import validate
from xmlrpc.client import DateTime
from bottle import post, request
import datetime
import pdb

@post('/home', method='post')  # обработка post-запросов
# функция для обработки post-запросов
def my_form():
    # получение значения параметра с именем NAME
    name = request.forms.get('NAME')
    # получение значения параметра с именем ADRESS
    mail = request.forms.get('ADRESS')
    # получение занчения параметра с именем QUEST
    question = request.forms.get('QUEST')
    # создание словаря
    questions = {mail : question}
    pdb.set_trace()
    # возвращаемое сообщение
    return "Thanks, %s! The answer will be sent to the mail %s. Access date: %s" % (name, mail, datetime.date.today())
