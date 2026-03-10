# Как собрать мод

## Вариант 1: Автоматическая сборка на GitHub (РЕКОМЕНДУЕТСЯ)

Мод автоматически собирается на GitHub Actions при каждом push!

1. Зайди на https://github.com/Xcatstudio/TEXPACK/actions
2. Дождись завершения сборки (зелёная галочка)
3. Скачай готовый `.geode` файл из Artifacts
4. Помести его в папку `geode/mods` в Geometry Dash
5. Готово!

## Вариант 2: Локальная сборка

### Что нужно установить:

1. **CMake** - https://cmake.org/download/
   - Скачай "Windows x64 Installer"
   - При установке выбери "Add CMake to system PATH"

2. **Visual Studio 2022** (Community Edition бесплатная)
   - https://visualstudio.microsoft.com/downloads/
   - При установке выбери "Desktop development with C++"

3. **Geode CLI**
   - Открой PowerShell от администратора
   - Выполни: `iwr https://geode-sdk.org/install.ps1 -useb | iex`

### Сборка:

После установки всего выше, выполни в папке проекта:

```bash
geode build
```

Или используй наш скрипт:
```bash
build.bat
```

Готовый `.geode` файл будет в папке `build/`

## Вариант 3: Скачать готовый мод

Если не хочешь собирать сам:
1. Зайди в Releases: https://github.com/Xcatstudio/TEXPACK/releases
2. Скачай последнюю версию `.geode` файла
3. Помести в `geode/mods`

## Проблемы?

- **CMake не найден** - Перезагрузи компьютер после установки
- **Geode CLI не работает** - Убедись что PowerShell запущен от администратора
- **Ошибки компиляции** - Проверь что установлен Visual Studio с C++ компонентами
