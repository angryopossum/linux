#!/bin/bash

# Путь к директории с файлами
directory="/tmp/t1/"

# Целевое слово для удаления из имени файлов
target="_abc"

# Перебираем файлы в директории
for file in "$directory"/*; do
    # Получаем имя файла без пути
    filename=$(basename "$file")

    # Проверяем, содержит ли имя файла целевое слово
    if [[ $filename == *"$target"* ]]; then
        # Удаляем целевое слово из имени файла и формируем новое имя
        new_filename="${filename//$target/}"

        # Полный путь к новому файлу
        new_filepath="$directory/$new_filename"

        # Переименовываем файл
        mv "$file" "$new_filepath"

        echo "Переименован файл: $filename -> $new_filename"
    fi
done

