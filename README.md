# lackros_infra
Lackros Infra repository

# Выполнено ДЗ по Лекции №5: Знакомство с облачной инфраструктурой Yandex.Cloud

 - [ ] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - Создано облако YC
 - Созданы VM bastion и someinternalhost
 - Для подключения к someinternalhost в одну строку на локальной машине создаем файлик ~/.ssh/config с содержимым:
Host 'внешний IP bastion'
  User appuser
  IdentityFile /home/dpp/.ssh/appuser
Host 'внутренний IP someinternalhost'
User appuser
  ProxyCommand ssh -W %h:%p 'внешний IP bastion'
  IdentityFile /home/dpp/.ssh/appuser
 - для подключения использует команду ssh -i ~/.ssh/appuser appuser@'внутренний ip someinternalhost'
 - для подключения по алиасу someinternalhost прописываем его в файл hosts ''внутренний-ip-адресэ' someinternalhost'
и затем в файле ~/.ssh/config указываем 'Host someinternalhost'

bastion_IP = 51.250.9.204
someinternalhost_IP = 10.128.0.4

# Выполнено ДЗ по Лекции №6: Основные сервисы Yandex Cloud

## В процессе сделано:
 - Установлена YC CLI
 - Через YC CLI развернута ВМ с задеплоенным приложением (пройдена практика)
 - Написаны скрипты развертывания приложения
 - Написан манифест для автомтического развертывания VM с установкой приложения

testapp_IP = 51.250.12.241
testapp_port = 9292

# Выполнено ДЗ по Лекции №7: Подготовка образов с помощью Packer

## В процессе сделано:
 - Установлен Packer
 - Проделана вся практика
 - Создан образ для дальнейшей работы


# Выполнено ДЗ по Лекции №8: Знакомство с Terraform

## В процессе сделано:
 - Установлен Terraform
 - Установлена утилита tfswitch для переключения между версиями tf
 - Проделана практика
 - Сделана самостоятельная работа с добавлением переменных
