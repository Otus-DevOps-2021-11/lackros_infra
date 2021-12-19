# lackros_infra
lackros Infra repository

# Выполнено ДЗ № Лекция №5: Знакомство с облачной инфраструктурой Yandex.Cloud

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
