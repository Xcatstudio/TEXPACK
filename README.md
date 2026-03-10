# Texture Loader для Geometry Dash

Мод для Geometry Dash v2.206 на Geode 4.10.2, который позволяет загружать кастомные текстуры.

## Установка

1. Убедитесь, что у вас установлен Geode 4.10.2
2. Скомпилируйте мод или скачайте готовый .geode файл
3. Поместите файл в папку `geode/mods`

## Использование

1. Создайте папку `textures` в директории ресурсов мода
2. Поместите туда свои текстуры с теми же именами, что и оригинальные файлы GD
3. Включите мод в настройках Geode
4. Запустите игру

## Настройки

- **Enable Texture Loader**: Включить/выключить загрузку текстур
- **Texture Folder Path**: Путь к папке с текстурами (по умолчанию "textures")

## Сборка

```bash
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
```

## Требования

- Geometry Dash v2.206
- Geode v4.10.2
- CMake 3.21+
