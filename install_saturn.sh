#!/bin/bash

# Создаем папку ".Saturn" в домашней папке пользователя
mkdir -p ~/.Saturn

# Определяем директорию, где находится сам скрипт
SCRIPT_DIR=$(dirname "\$0")

# Копируем файл "jars/Saturn.jar" и папку "language/std" в директорию ".Saturn"
cp -r "$SCRIPT_DIR/jars/Saturn.jar" "$SCRIPT_DIR/language/std" ~/.Saturn/

# Добавляем директорию ".Saturn" в PATH
echo "export PATH=$PATH:~/.Saturn" >> ~/.bashrc
echo "export PATH=$PATH:~/.Saturn" >> ~/.zshrc
