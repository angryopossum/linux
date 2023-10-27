#!/bin/bash

# Путь к директории с файлами
directory="/tmp/t1"

# Регулярное выражение для поиска соответствующих паттернов
pattern="(_abc_[0-9])"

# Перебираем файлы в директории
for file in "$directory"/*; do
    # Получаем имя файла без пути
    filename=$(basename "$file")

    # Ищем совпадения с регулярным выражением в имени файла
    if [[ $filename =~ $pattern ]]; then
        # Сохраняем совпавшую часть имени файла
        match="${BASH_REMATCH[1]}"

        # Заменяем совпавшую часть на пустую строку в имени файла
        new_filename="${filename//$match/}"

        # Полный путь к новому файлу
        new_filepath="$directory/$new_filename"

        # Переименовываем файл
        mv "$file" "$new_filepath"

        echo "Переименован файл: $filename -> $new_filename"
    fi
done

