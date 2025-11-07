#!/bin/bash

# Script de transcripción optimizado para Apple Silicon (M4)
# Usa whisper.cpp con aceleración Metal/Core ML

# Colores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  WHISPER OPTIMIZADO PARA APPLE M4${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# Verificar argumentos
if [ -z "$1" ]; then
    echo -e "${YELLOW}Uso: $0 <archivo_audio> [idioma]${NC}"
    echo ""
    echo "Ejemplos:"
    echo "  $0 audio.mp3 es          # Español"
    echo "  $0 audio.mp3 en          # Inglés"
    echo "  $0 audio.mp3 auto        # Auto-detectar"
    echo ""
    exit 1
fi

AUDIO_FILE="$1"
LANGUAGE="${2:-es}"  # Default: español
MODEL_PATH="$HOME/.whisper-models/ggml-medium.bin"

# Verificar archivo existe
if [ ! -f "$AUDIO_FILE" ]; then
    echo -e "${YELLOW}Error: Archivo '$AUDIO_FILE' no encontrado${NC}"
    exit 1
fi

# Verificar modelo existe
if [ ! -f "$MODEL_PATH" ]; then
    echo -e "${YELLOW}Error: Modelo no encontrado en $MODEL_PATH${NC}"
    echo "Ejecuta: brew install whisper-cpp y descarga el modelo"
    exit 1
fi

# Obtener nombre base sin extensión
BASENAME="${AUDIO_FILE%.*}"
OUTPUT_FILE="${BASENAME}"

echo -e "${GREEN}📂 Archivo de entrada:${NC} $AUDIO_FILE"
echo -e "${GREEN}🌍 Idioma:${NC} $LANGUAGE"
echo -e "${GREEN}🤖 Modelo:${NC} medium (optimizado)"
echo -e "${GREEN}💾 Salida:${NC} ${OUTPUT_FILE}.txt"
echo ""

# Obtener tamaño del archivo
FILE_SIZE=$(du -h "$AUDIO_FILE" | cut -f1)
echo -e "${BLUE}📊 Tamaño archivo:${NC} $FILE_SIZE"

# Detectar núcleos disponibles
CORES=$(sysctl -n hw.ncpu)
THREADS=$((CORES - 2))  # Dejar 2 núcleos libres
echo -e "${BLUE}🔧 Usando:${NC} $THREADS threads de $CORES disponibles"
echo ""

echo -e "${GREEN}⏱️  Iniciando transcripción...${NC}"
START_TIME=$(date +%s)

# Ejecutar whisper.cpp optimizado
whisper-cli \
    -m "$MODEL_PATH" \
    -l "$LANGUAGE" \
    -t "$THREADS" \
    -f "$AUDIO_FILE" \
    -of "$OUTPUT_FILE" \
    -otxt \
    --print-progress

EXIT_CODE=$?
END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))

echo ""
if [ $EXIT_CODE -eq 0 ]; then
    echo -e "${GREEN}✅ Transcripción completada exitosamente${NC}"
    echo -e "${GREEN}⏱️  Tiempo total:${NC} ${DURATION}s"
    echo -e "${GREEN}📄 Archivo generado:${NC} ${OUTPUT_FILE}.txt"

    # Mostrar primeras líneas
    if [ -f "${OUTPUT_FILE}.txt" ]; then
        LINE_COUNT=$(wc -l < "${OUTPUT_FILE}.txt")
        WORD_COUNT=$(wc -w < "${OUTPUT_FILE}.txt")
        echo -e "${BLUE}📊 Estadísticas:${NC} $LINE_COUNT líneas, $WORD_COUNT palabras"
        echo ""
        echo -e "${BLUE}👀 Primeras líneas:${NC}"
        head -5 "${OUTPUT_FILE}.txt"
    fi
else
    echo -e "${YELLOW}❌ Error en transcripción (código: $EXIT_CODE)${NC}"
fi
