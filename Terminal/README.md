# Terminal Linux

### Основные команды терминала

|#|Задание|Решение|
|:--|:--|:--|
|1|Посмотреть в какой директории находишься|`pwd`|
|2|Создать папку|`mkdir hw_tasks`|
|3|Зайти в папку|`cd hw_tasks`|
|4|Создать 3 папки|`mkdir dir1 dir2 dir3`|
|5|Зайти в любую папку|`cd dir1`|
|6|Создать 5 файлов (3 txt, 2 json)|`touch text1.txt text2.txt text3.txt json1.json json2.json`|
|7|Создать 3 папки|`mkdir folder-01 folder-02 folder-03`|
|8|Вывести список содержимого папки|`ls -la`|
|9|Открыть любой txt файл|`vim text1.txt`|
|10|Написать туда что-нибудь|`Hello World!`|
|11|Сохранить и выйти|нажать `:wq`|
|12|Выйти из папки на уровень выше|`cd ..`|
|13|Переместить любые 2 файла, которые создали, в любую другую папку|`mv dir1/text2.txt dir1/json2.json dir2`|
|14|Скопировать любые 2 файла, которые создали, в любую другую папку|`cp dir1/text1.txt dir1/json1.json dir3`|
|15|Найти файл по имени|`find . -name "json1.json"`|
|16|Посмотреть содержимое в реальном времени|`tail -f text1.txt \| grep "hello"`|
|17|Вывести несколько первых строк из текстового файла|`head -n 3 text1.txt`|
|18|Вывести последние несколько строк из тектового файла|`tail -n 3 text1.txt`|
|19|Просмотреть содержимое длинного файла|`less text1.txt`|
|20|Вывести дату и время|`date; date +%D`|
|21|Отправить http запрос на сервер <http://162.55.220.72:5005/terminal-hw-request>|`curl http://162.55.220.72:5005/terminal-hw-request` *|
|22|Написать скрипт, который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13|[Ссылка на файл](https://github.com/zakharov-dmitriy/terminal/blob/main/script.sh) **|

#### * полученный ответ от сервера: 
```
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<title>404 Not Found</title>
<h1>Not Found</h1>
<p>The requested URL was not found on the server. 
If you entered the URL manually please check your spelling and try again.</p>
```

 #### ** как запустить скрипт: 
 1. Для удобства необходимо находиться в той же директории с файлом скрипта script.sh
 2. В терминале написать команду `./script.sh`
 3. Если далее последует сообщение об отказе в доступе, выполнить команду `chmod +x script.sh` и снова запустить команду из пункта 2