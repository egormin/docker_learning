### Cloud Native Applications

#### Ключевые атрибуты Cloud Native Applications:
- Должны быть пакетизированы как легковесный контейнер
- Разработаны с использованием наиболее подходящих языков и фрэймворков (каждый сервис может быть написан на любом языке)
- Разработан с минимальной информацией о других сервисах, независимо, как с 3rd-party сервисами
- Сервисы общаются на основе легковесных API (REST, jrpc, nats)
- Архитектура должна явно разделяться на stateless и statefull сервисы
- Приложение должно быть изолировано от сервера и зависимостей ОС (не должно зависеть от ОС)
- Приложение должно иметь возможность легко деплоиться в нужную инфраструктуру
- Должно управляться через гибкие DevOps процессы
- Должна быть легкая автоматизация, масштабирование и т.д.
- Разделение ресурсов по командам (проц, память)

***Links:***

https://www.cncf.io/blog/2017/05/15/developing-cloud-native-applications/

https://pivotal.io/cloud-native

### 12 Факторное приложение: (сборник рекомендаций для построения приложений типа software-as-a-service)
1) ***Codebase*** - One codebase tracked in revision control, many deploys. Одно приложение - один репозиторий.
2) ***Dependencies*** - Explicitly declare and isolate dependencies. Все зависимости должны быть чётко определены и изолированы.
3) ***Config*** - Store config in the environment. Конфигурация должна храниться в энвайронменте
4) ***Backing services*** - Treat backing services as attached resources. Приложение расссматривавет все сервисы как 3rd-party.
5) ***Build, release, run*** - Strictly separate build and run stages. Нужно разделять фазы между собой.
6) ***Processes*** - Execute the app as one or more stateless processes. Приложение должно строиться как stateless процесс.
7) ***Port binding*** - Export services via port binding. Процесс должен выходить наружу через порты. Сокеты и расшаренные системы не очень хорошо.
8) ***Concurrency*** - Scale out via the process model. Приложение должно легко масштабироваться.
9) ***Disposability*** - Maximize robustness with fast startup and graceful shutdown. Каждый процесс должен быть одноразовым, быстро стартовать и всё за собой очизать (порты, файлы).
10) ***Dev/prod parity*** - Keep development, staging, and production as similar as possible. Энвайронменты должны быть максимально схожи.
11) ***Logs*** - Treat logs as event streams. Логи доги должны писаться в поток, stdout, stderr. Сборкой логов должны заниматься другие сервисы (ELK, SPLUNK, Logentries)
12) ***Admin processes*** - Run admin/management tasks as one-off processes. Админ процессы должны быть одноразовыми.

***Links:***

https://12factor.net/

https://github.com/docker/labs/tree/master/12factor  (пример имплементафии 12 факторности)
