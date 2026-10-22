#!/usr/bin/env sh
# Arranque estándar simplificado para GitHub Actions
DIR=$(dirname "$0")
JAR="$DIR/gradle/wrapper/gradle-wrapper.jar"
if [ -r "$JAR" ]; then
    java -jar "$JAR" "$@"
else
    echo "Error: No se encuentra gradle-wrapper.jar"
    exit 1
fi
