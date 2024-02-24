Для работы с YC необходимо задать переменные окружения с чувствительной информацией:

```bash
export TF_VAR_yc_token=AQxxx_MySecretOAuthToken_here
export TF_VAR_yc_cloud_id=b1gfYC_Cloud_Id_Here
export TF_VAR_yc_folder_id=b1gd8xxxxxxxxxxx
export AWS_ACCESS_KEY_ID=YCAJExxxxxxxxxx
export AWS_SECRET_ACCESS_KEY=YCPZIxxxxxxxx
export ANSIBLE_HOST_KEY_CHECKING=False
```

Для работы с terraform из России также необходимо настроить работу с зеркалом в Яндекс:

```bash
cat ~/.terraformrc 
provider_installation {
 network_mirror {
   url = "https://terraform-mirror.yandexcloud.net/"
   include = ["registry.terraform.io/*/*"]
 }
 direct {
   exclude = ["registry.terraform.io/*/*"]
 }
}

```

Далее перечислены шаги и иллюстрации запуска и работы стенда.

# 1 Клонируем репозиторий

репозиторий codeby_diplom

# 2 Переходим в директорию terraform клонированного репозитория и запускаем:

```bash
terraform init
terraform workspace new stage
```

# 3 Запускаем terraform на создание инфраструктуры и подготовки ansible playbook'ов для стенда:

```bash
time terraform apply --auto-approve
```

# 4 После окончания запуска всех ВМ и инициализации всех служб переходим к проверке работы всех сервисов

[Сайт Wordpress](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_1.png): ![Скриншот1](diplom/images/Diplom_final_1.png)

[Сайт Wordpress, авторизация в Wordpress](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_2.png): ![Скриншот1](images/Diplom_final_2.png)

[Сайт Wordpress, backoffice](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_3.png): ![Скриншот1](images/Diplom_final_3.png)

[Gitlab, авторизация](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_4.png): ![Скриншот1](images/Diplom_final_4.png)

[Gitlab, создание вручную нового репозитория](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_5.png): ![Скриншот1](images/Diplom_final_5.png)

[Gitlab, простая демонстрация возможности автоматизированного ci/cd для деплоя при создании нового тега](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_6.png): ![Скриншот1](images/Diplom_final_6.png)

[Gitlab, создание тега](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_7.png): ![Скриншот1](images/Diplom_final_7.png)

[Gitlab, результат Job, автоматически отработавшей при создании тега](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_8.png): ![Скриншот1](images/Diplom_final_8.png)

[Gitlab, Протокол работы Job, автоматически отработавшей при создании тега](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_9.png): ![Скриншот1](images/Diplom_final_9.png)

[Gitlab, виден новый файл, переданный на сервер приложения](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_10.png): ![Скриншот1](images/Diplom_final_10.png)

[Grafana, настроенный источник данных из Prometheus](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_11.png): ![Скриншот1](images/Diplom_final_11.png)

[Grafana, работа dashboard'а для всех node_exporter'ов](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_12.png): ![Скриншот1](images/Diplom_final_12.png)

[Prometheus, статус всех подключенных источников данных-таргетов](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_13.png): ![Скриншот1](images/Diplom_final_13.png)

[Prometheus, видно наличие большого числа алертов](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_14.png): ![Скриншот1](images/Diplom_final_14.png)

[Prometheus, список алертов, отфильтрован только по сработавшим](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_15.png): ![Скриншот1](images/Diplom_final_15.png)

[Alertmanager, список сработавших алертов](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_16.png): ![Скриншот1](images/Diplom_final_16.png)

[Alertmanager, текущий статус и версия](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_17.png): ![Скриншот1](images/Diplom_final_17.png)

[YC-консоль](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_19.png): ![Скриншот1](images/Diplom_final_19.png)

[YC-консоль, список запущенных ВМ](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_20.png): ![Скриншот1](images/Diplom_final_20.png)

[Конечный результат запуска команды terraform apply](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_21.png): ![Скриншот1](images/Diplom_final_21.png)

[Конечный результат запуска команды terraform destroy](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_22.png): ![Скриншот1](images/Diplom_final_22.png)

[YC-консоль, после запуска команды terraform destroy](https://github.com/nickolas-black/codeby-devops/blob/diplom/diplom/images/Diplom_final_23.png): ![Скриншот1](images/Diplom_final_23.png)

# 5 выполнить команду, для выключения и удаления всей инфраструктуры

```bash
time terraform destroy --auto-approve
```