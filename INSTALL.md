# Инструкция по установке и сборке

## Что нужно установить

### 1. CMake
Скачай и установи CMake:
- Сайт: https://cmake.org/download/
- Выбери "Windows x64 Installer"
- При установке выбери "Add CMake to system PATH"

### 2. Visual Studio Build Tools
Скачай и установи Visual Studio Build Tools:
- Сайт: https://visualstudio.microsoft.com/downloads/
- Выбери "Build Tools for Visual Studio 2022"
- При установке выбери "Desktop development with C++"

### 3. Geode SDK
Установи Geode SDK:
- Сайт: https://github.com/geode-sdk/geode
- Следуй инструкциям по установке
- Создай переменную окружения GEODE_SDK:
  1. Нажми Win + R
  2. Введи: sysdm.cpl
  3. Вкладка "Дополнительно" → "Переменные среды"
  4. Создай новую переменную:
     - Имя: GEODE_SDK
     - Значение: путь к папке Geode SDK (например: C:\geode-sdk)

## Сборка мода

### Автоматическая сборка
Просто запусти файл:
```
build.bat
```

### Ручная сборка
```bash
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
```

## Установка мода

1. Найди файл `.geode` в папке `build/Release/`
2. Скопируй его в папку `geode/mods` в директории Geometry Dash
3. Запусти игру

## Использование

1. Создай папку `textures` в ресурсах мода
2. Помести туда свои текстуры (PNG/JPG)
3. Имена файлов должны совпадать с оригинальными текстурами GD
4. Включи мод в настройках Geode

## Проблемы?

- **CMake не найден**: Перезапусти компьютер после установки CMake
- **GEODE_SDK не найден**: Проверь переменную окружения
- **Ошибки компиляции**: Убедись, что установлены Visual Studio Build Tools
