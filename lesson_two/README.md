# Описание второй работы 
1) Устанавливаю виртуальную машину себе на ноутбук и разворачиваю туда образ debian
2) Создаю там двух пользователей: user1 и user2. Установливаю для них пароли 
3) Заблокирую ранее добавленную учетную запись пользователя user1, убеждаюсь в том, что пользователь действительно не может войти в систему. 
Потом разблокирую его

<a href="https://imgbb.com/"><img src="https://i.ibb.co/2knjZdD/1.png" alt="1" border="0"></a>
<a href="https://imgbb.com/"><img src="https://i.ibb.co/tBNr3cG/8.png" alt="8" border="0"></a>
<a href="https://imgbb.com/"><img src="https://i.ibb.co/VJrvKPM/2.png" alt="2" border="0"></a>

4)Создаю две новые группы group1 и group2. Добавляю учетную запись
user2 в обе эти группы

<a href="https://imgbb.com/"><img src="https://i.ibb.co/bbwzCrk/3.png" alt="3" border="0"></a>

5) Добавляю user2 в соответствующий файл, чтобы пользователь
имел возможность выполнять команды с привилегиями суперпользователя/root. Войдя
в систему как пользователь user2, создаю небольшой текстовый файл с любым
содержимым в каталоге /root
6) Вхожу в систему под именем пользователя root и создаю новый каталог в
домашнем каталоге пользователя root ‘filemaintenance’. Создаю там три файла: file1, file2 и file3. Возвращаюсь в родительский каталог
(домашний каталог root), а затем скопирую оттуда файлы, расположенные в filemaintenance,
в домашний каталог root

<a href="https://imgbb.com/"><img src="https://i.ibb.co/jhNjZJ8/5.png" alt="5" border="0"></a>

7) Возвращаюсь в домашний каталог пользователя root. Перемещаю каталог
«filemaintenance» и все его содержимое в другой каталог с именем «movedfiles»

8) Заблокирую учетную запись user1 еще раз и попытайтаюсь войти в систему три раза, используя недавно заблокированную учетную
запись пользователя user1. После третьей неудачной попытки вхожу в систему как
пользователь root и разблокирую пользователя. Смотрю соответствующие строки файла журнала в системе, которые будут отображать эти
неудачные попытки входа

<a href="https://imgbb.com/"><img src="https://i.ibb.co/tBNr3cG/8.png" alt="8" border="0"></a>
<a href="https://ibb.co/1ZkKBSm"><img src="https://i.ibb.co/5TPvC7R/Screenshot-from-2022-09-07-21-16-08.png" alt="Screenshot-from-2022-09-07-21-16-08" border="0"></a>

9) Вхожу в систему под учетной записью root, произвожу поиск в системе
файла конфигурации с названием «ld.so.conf» и вызоваю строку с его местоположением и адресом. Перенаправляю содержимое этого файла во второй файл
с именем ld.so.conf.out в домашнем каталоге

<a href="https://imgbb.com/"><img src="https://i.ibb.co/RHcmY0L/Screenshot-from-2022-09-07-21-25-28.png" alt="Screenshot-from-2022-09-07-21-25-28" border="0"></a>

10) Скопирую следующие файлы в домашний каталог пользователя root:

• /etc/hosts

• /var/log/ dmesg

• /usr/bin/whoami

<a href="https://ibb.co/Jtw0240"><img src="https://i.ibb.co/g9LHwpH/11.png" alt="11" border="0"></a>

Изменю права доступа каждого файла следующим образом:

• hosts — только пользователь-владелец файла может
читать/записывать/выполнять, нет прав доступа для группы и остальных
пользователей

• dmesg – пользователь-владелец может читать/записывать, группа и остальные
пользователи — читать/выполнять

• whoami — каждый имеет право на выполнение, никаких других разрешений

<a href="https://ibb.co/Xky3MfH"><img src="https://i.ibb.co/n83ntqp/12.png" alt="12" border="0"></a>

11) Изменяю владельца и группу всех файлов выше, чтобы они принадлежали
user2

<a href="https://ibb.co/wKnr56W"><img src="https://i.ibb.co/MRz5FNV/Screenshot-from-2022-09-08-11-43-06.png" alt="Screenshot-from-2022-09-08-11-43-06" border="0"></a>

12) Вхожу в систему как root, создаю задание cron, которое будет создавать список всех пользователей, каталоги которых имеются в
домашнем каталоге (home) каждый день в полдень и сохранять данный список в файле, называемом «cronoutput.out», который я создам в своей домашней
директории

<a href="https://ibb.co/mSyVg9n"><img src="https://i.ibb.co/hCdJwBG/14.png" alt="14" border="0"></a>
<a href="https://ibb.co/qxT50Zb"><img src="https://i.ibb.co/rvDsbWn/Screenshot-from-2022-09-08-11-48-32.png" alt="Screenshot-from-2022-09-08-11-48-32" border="0"></a>
<a href="https://ibb.co/C0LhTMX"><img src="https://i.ibb.co/tCR8WxN/13.png" alt="13" border="0"></a>

13) Создаю еще два задание cron, выполняющее тот же процесс, что и последний, только первое задание 15 минут каждого часа (0:15, 1:15, 2:15 и т.д), а второе задание каждые 3 минуты между полуночью и 1:00 каждого 1-го числа месяца
<a href="https://ibb.co/LZDzPKR"><img src="https://i.ibb.co/bKjg3tm/16.png" alt="16" border="0"></a>

14) Установливаю все доступные системные обновления для моей системы

<a href="https://ibb.co/7X2njWF"><img src="https://i.ibb.co/jTgybMF/17.png" alt="17" border="0"></a>





















