#!/bin/bash

#############################################
# WHISPER BATCH TRANSCRIPTION
# Procesamiento por lotes de múltiples archivos
#############################################

# Colores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Banner
echo ""
echo "========================================"
echo "  WHISPER BATCH TRANSCRIPTION"
echo "  Procesamiento por Lotes"
echo "========================================"
echo ""

# Verificar argumentos
if [ $# -eq 0 ]; then
    echo -e "${RED}Error: No se especificaron archivos${NC}"
    echo ""
    echo "Uso:"
    echo "  $0 archivo1.mp3 archivo2.mp3 ..."
    echo "  $0 carpeta/*.mp3"
    echo "  $0 carpeta/*.{mp3,m4a,wav}"
    echo ""
    echo "Ejemplos:"
    echo "  $0 CLASES/*.mp3"
    echo "  $0 *.{mp3,wav,m4a}"
    echo ""
    exit 1
fi

# Idioma por defecto
IDIOMA="${BATCH_LANG:-es}"

# Contador de archivos
TOTAL=$#
CURRENT=0
SUCCESS=0
FAILED=0

# Ruta al script principal
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TRANSCRIBE_SCRIPT="$SCRIPT_DIR/transcribir_optimizado.sh"

# Verificar que existe el script principal
if [ ! -f "$TRANSCRIBE_SCRIPT" ]; then
    echo -e "${RED}Error: No se encuentra transcribir_optimizado.sh${NC}"
    echo "Ruta esperada: $TRANSCRIBE_SCRIPT"
    exit 1
fi

# Archivo de log
LOG_FILE="batch_transcription_$(date +%Y%m%d_%H%M%S).log"

echo -e "${BLUE}📊 Total de archivos: $TOTAL${NC}"
echo -e "${BLUE}🌍 Idioma: $IDIOMA${NC}"
echo -e "${BLUE}📝 Log: $LOG_FILE${NC}"
echo ""

# Función para procesar un archivo
process_file() {
    local file="$1"
    local index="$2"

    echo "========================================" | tee -a "$LOG_FILE"
    echo -e "${YELLOW}[$index/$TOTAL] Procesando: $(basename "$file")${NC}" | tee -a "$LOG_FILE"
    echo "========================================" | tee -a "$LOG_FILE"
    echo "" | tee -a "$LOG_FILE"

    # Tiempo de inicio
    START_TIME=$(date +%s)

    # Ejecutar transcripción
    if "$TRANSCRIBE_SCRIPT" "$file" "$IDIOMA" 2>&1 | tee -a "$LOG_FILE"; then
        END_TIME=$(date +%s)
        DURATION=$((END_TIME - START_TIME))
        echo "" | tee -a "$LOG_FILE"
        echo -e "${GREEN}✅ Completado en ${DURATION}s${NC}" | tee -a "$LOG_FILE"
        echo "" | tee -a "$LOG_FILE"
        ((SUCCESS++))
    else
        END_TIME=$(date +%s)
        DURATION=$((END_TIME - START_TIME))
        echo "" | tee -a "$LOG_FILE"
        echo -e "${RED}❌ Error después de ${DURATION}s${NC}" | tee -a "$LOG_FILE"
        echo "" | tee -a "$LOG_FILE"
        ((FAILED++))
    fi
}

# Procesar cada archivo
for file in "$@"; do
    # Verificar que el archivo existe
    if [ ! -f "$file" ]; then
        echo -e "${YELLOW}⚠️  Saltando (no existe): $file${NC}" | tee -a "$LOG_FILE"
        continue
    fi

    ((CURRENT++))
    process_file "$file" "$CURRENT"
done

# Resumen final
echo "========================================" | tee -a "$LOG_FILE"
echo -e "${BLUE}  RESUMEN FINAL${NC}" | tee -a "$LOG_FILE"
echo "========================================" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo -e "${GREEN}✅ Exitosos: $SUCCESS${NC}" | tee -a "$LOG_FILE"
echo -e "${RED}❌ Fallidos: $FAILED${NC}" | tee -a "$LOG_FILE"
echo -e "${BLUE}📊 Total procesados: $CURRENT de $TOTAL${NC}" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo -e "${BLUE}📝 Log completo: $LOG_FILE${NC}"
echo ""

# Exit code basado en resultados
if [ $FAILED -eq 0 ]; then
    exit 0
else
    exit 1
fi
