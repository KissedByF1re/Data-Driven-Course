# Nextflow Pipeline 

## Структура
1. `main.nf`: Главный скрипт пайплайна
2. `samples.csv`: Файл с сэмплами
3. `nextflow.config`: Конфигурация для пайплайна (параметры)
4. `test_input`: Входные данные
5. `test_output`: Выходные данные

## Порядок действий
1. Создали окружение

```
conda create -n nextflow_env nextflow=24 -c bioconda -c conda-forge
```

2. Загрузили файлы в `test_input`.

3. Активировали окружение

```
conda activate nextflow_env
```
4. Запустили пайплайн

```
nextflow run main.nf --with-docker
```
