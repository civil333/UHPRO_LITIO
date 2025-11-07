#!/bin/bash

#############################################
# EXTRACT AUDIO FROM VIDEO
# Extrae audio de videos para transcripción
#############################################

# Colores
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

# Banner
echo ""
echo "========================================"
echo "  EXTRACT AUDIO FROM VIDEO"
echo "========================================"
echo ""

# Verificar argumentos
if [ $# -eq 0 ]; then
    echo -e "${RED}Error: No se especificó archivo de video${NC}"
    echo ""
    echo "Uso:"
    echo "  $0 video.mp4"
    echo ""
    echo "El archivo de salida será: video_audio.mp3"
    echo "Formato: MP3, 40kbps, 32kHz, Mono (optimizado para Whisper)"
    echo ""
    exit 1
fi

VIDEO_FILE="$1"

# Verificar que el archivo existe
if [ ! -f "$VIDEO_FILE" ]; then
    echo -e "${RED}Error: El archivo no existe: $VIDEO_FILE${NC}"
    exit 1
fi

# Verificar que ffmpeg está instalado
if ! command -v ffmpeg &> /dev/null; then
    echo -e "${RED}Error: ffmpeg no está instalado${NC}"
    echo ""
    echo "Para instalar ffmpeg:"
    echo "  brew install ffmpeg"
    echo ""
    exit 1
fi

# Generar nombre de archivo de salida
BASENAME="${VIDEO_FILE%.*}"
AUDIO_FILE="${BASENAME}_audio.mp3"

echo -e "${BLUE}📹 Video: $(basename "$VIDEO_FILE")${NC}"
echo -e "${BLUE}🎵 Audio: $(basename "$AUDIO_FILE")${NC}"
echo ""

# Obtener tamaño del video
VIDEO_SIZE=$(du -h "$VIDEO_FILE" | cut -f1)
echo -e "${BLUE}📊 Tamaño video: $VIDEO_SIZE${NC}"
echo ""

echo -e "${YELLOW}⏱️  Extrayendo audio...${NC}"
echo ""

# Extraer audio con ffmpeg
# -vn: no video
# -acodec libmp3lame: codec MP3
# -ab 40k: bitrate 40kbps (suficiente para voz)
# -ar 32000: sample rate 32kHz (óptimo para Whisper)
# -ac 1: mono (reducir tamaño, voz no necesita stereo)

if ffmpeg -i "$VIDEO_FILE" \
    -vn \
    -acodec libmp3lame \
    -ab 40k \
    -ar 32000 \
    -ac 1 \
    "$AUDIO_FILE" \
    -y \
    -loglevel warning -stats; then

    echo ""
    echo -e "${GREEN}✅ Audio extraído exitosamente${NC}"
    echo ""

    # Mostrar estadísticas del archivo de salida
    AUDIO_SIZE=$(du -h "$AUDIO_FILE" | cut -f1)
    echo -e "${BLUE}📄 Archivo generado: $AUDIO_FILE${NC}"
    echo -e "${BLUE}📊 Tamaño audio: $AUDIO_SIZE${NC}"
    echo ""

    # Calcular reducción de tamaño
    VIDEO_BYTES=$(stat -f%z "$VIDEO_FILE" 2>/dev/null || stat -c%s "$VIDEO_FILE" 2>/dev/null)
    AUDIO_BYTES=$(stat -f%z "$AUDIO_FILE" 2>/dev/null || stat -c%s "$AUDIO_FILE" 2>/dev/null)

    if [ -n "$VIDEO_BYTES" ] && [ -n "$AUDIO_BYTES" ]; then
        REDUCTION=$((100 - (AUDIO_BYTES * 100 / VIDEO_BYTES)))
        echo -e "${GREEN}💾 Reducción de tamaño: ~${REDUCTION}%${NC}"
        echo ""
    fi

    echo -e "${YELLOW}📝 Siguiente paso:${NC}"
    echo "  ./transcribir_optimizado.sh \"$AUDIO_FILE\" es"
    echo ""

else
    echo ""
    echo -e "${RED}❌ Error al extraer audio${NC}"
    echo ""
    exit 1
fi
