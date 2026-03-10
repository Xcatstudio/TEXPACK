# Как загрузить на GitHub

## Шаг 1: Инициализация Git репозитория

Открой терминал в папке проекта и выполни:

```bash
git init
git add .
git commit -m "Initial commit: Texture Loader mod for GD 2.206"
```

## Шаг 2: Создай репозиторий на GitHub

1. Зайди на https://github.com
2. Нажми "New repository" (зелёная кнопка)
3. Название: `gd-texture-loader` (или любое другое)
4. Описание: `Texture Loader mod for Geometry Dash 2.206 (Geode 4.10.2)`
5. Выбери Public или Private
6. НЕ добавляй README, .gitignore или LICENSE (они уже есть)
7. Нажми "Create repository"

## Шаг 3: Загрузи код на GitHub

GitHub покажет команды, выполни их:

```bash
git remote add origin https://github.com/ТвойUsername/gd-texture-loader.git
git branch -M main
git push -u origin main
```

Замени `ТвойUsername` на свой username на GitHub!

## Шаг 4: Готово!

Теперь твой мод на GitHub! Можешь поделиться ссылкой с другими.

## Обновление кода

Когда внесёшь изменения:

```bash
git add .
git commit -m "Описание изменений"
git push
```

## Альтернатива: GitHub Desktop

Если не хочешь использовать командную строку:
1. Скачай GitHub Desktop: https://desktop.github.com/
2. Открой папку проекта через GitHub Desktop
3. Нажми "Publish repository"
4. Готово!
