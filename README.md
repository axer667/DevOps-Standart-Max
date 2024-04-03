## Сборка web-сервера
Упарываемся (проксируем Nginx через Apache).

### Используем:
- Apache
- NGINX
- PHP
- MySQL
- PostgreSQL

### Дополнительно развернуты контейнеры 
- PHPMyAdmin
- PgAdmin

### Из интересного:
- При старте контейнеров с БД будут выполнены миграции из каталогов db-data/migrations/mysql-migrations, db-data/migrations/postgres-migrations