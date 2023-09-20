Requirements: PHP7.0, Phpmyadmin 4.9.11, MySQL 5.7.42, Composer 2.2

Commands to run after cloning:

php ../composer.phar install
php artisan storage:link
php artisan key:generate
php artisan cache:clear
php artisan config:clear
sudo chmod -R 777 storage
sudo chmod -R 777 public
