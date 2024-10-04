#!/bin/bash

# Создаем папку ".Saturn" в домашней папке пользователя
mkdir -p ~/.Saturn

# Определяем директорию, где находится сам скрипт
SCRIPT_DIR=$(dirname "\$0")

# Копируем файл "jars/Saturn.jar", папку "language/std" и исполняемый скрипт в директорию ".Saturn"
cp -r "$SCRIPT_DIR/jars/Saturn.jar" "$SCRIPT_DIR/language/std" ~/.Saturn/
cp -r "$SCRIPT_DIR/saturn.sh" ~/.Saturn/
chmod +x ~/.Saturn/saturn.sh

# Добавляем директорию ".Saturn" в PATH
echo "export PATH=$PATH:~/.Saturn" > ~/.bashrc
echo "export PATH=$PATH:~/.Saturn" > ~/.zshrc

# Удаляем git-репозиторий
cd ..
rm -rf Saturn
