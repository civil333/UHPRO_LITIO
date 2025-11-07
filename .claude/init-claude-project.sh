#!/bin/bash

#############################################
# INIT CLAUDE PROJECT
# Inicializa nuevo proyecto con configuración Claude
# Basado en: ANALISIS ESTADOS FINANCIEROS
#############################################

# Colores
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

# Banner
echo ""
echo -e "${BLUE}═══════════════════════════════════════════════${NC}"
echo -e "${BLUE}     Inicializador de Proyecto Claude${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════${NC}"
echo ""

# Verificar que estamos en un directorio
if [ ! -d "$(pwd)" ]; then
    echo -e "${RED}Error: No se encontró directorio actual${NC}"
    exit 1
fi

echo -e "${BLUE}📂 Directorio actual:${NC} $(pwd)"
echo ""

# Verificar si ya existe .claude
if [ -d ".claude" ]; then
    echo -e "${YELLOW}⚠️  Ya existe carpeta .claude en este proyecto${NC}"
    echo ""
    ls -lh .claude/
    echo ""
    read -p "¿Sobrescribir? (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${YELLOW}Operación cancelada${NC}"
        exit 0
    fi
    echo -e "${YELLOW}Eliminando .claude existente...${NC}"
    rm -rf .claude
fi

# Detectar ubicación del template
TEMPLATE_SOURCE=""

# Opción 1: Template en home
if [ -d "$HOME/claude-templates/default/.claude" ]; then
    TEMPLATE_SOURCE="$HOME/claude-templates/default/.claude"
    echo -e "${GREEN}✓${NC} Template encontrado en: ~/claude-templates/default/"
# Opción 2: Template en proyecto base (este mismo proyecto)
elif [ -d "/Volumes/home/Documentos NAS/CURSOR/ANALISIS ESTADOS FINANCIEROS/.claude" ]; then
    TEMPLATE_SOURCE="/Volumes/home/Documentos NAS/CURSOR/ANALISIS ESTADOS FINANCIEROS/.claude"
    echo -e "${GREEN}✓${NC} Usando template del proyecto base"
else
    echo -e "${RED}Error: No se encontró template de configuración${NC}"
    echo ""
    echo "Opciones:"
    echo "  1. Crear template en ~/claude-templates/default/.claude"
    echo "  2. O ejecutar desde el proyecto base"
    echo ""
    exit 1
fi

echo ""
echo -e "${BLUE}📦 Copiando configuración Claude...${NC}"

# Copiar desde template
cp -r "$TEMPLATE_SOURCE" .

# Limpiar archivos temporales
rm -f .claude/.DS_Store
rm -f .claude/*/.DS_Store

echo ""
echo -e "${GREEN}✅ Configuración Claude instalada exitosamente${NC}"
echo ""

# Mostrar resumen
echo -e "${BLUE}═══════════════════════════════════════════════${NC}"
echo -e "${BLUE}  RESUMEN DE INSTALACIÓN${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════${NC}"
echo ""

echo -e "${GREEN}📁 Estructura creada:${NC}"
echo ""
tree -L 2 .claude 2>/dev/null || find .claude -maxdepth 2 -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
echo ""

# Skills instaladas
if [ -d ".claude/skills" ]; then
    echo -e "${GREEN}🎯 Skills disponibles:${NC}"
    for skill in .claude/skills/*/; do
        if [ -d "$skill" ]; then
            skill_name=$(basename "$skill")
            if [ -f "$skill/skill.json" ]; then
                desc=$(grep -o '"description":.*' "$skill/skill.json" | head -1 | cut -d'"' -f4 | cut -c1-60)
                echo "   • $skill_name"
                echo "     $desc..."
            else
                echo "   • $skill_name"
            fi
        fi
    done
    echo ""
fi

# Output style
if [ -f ".claude/settings.local.json" ]; then
    OUTPUT_STYLE=$(grep -o '"outputStyle":.*' .claude/settings.local.json | cut -d'"' -f4)
    if [ -n "$OUTPUT_STYLE" ]; then
        echo -e "${GREEN}🎨 Output Style:${NC} $OUTPUT_STYLE"
        echo ""
    fi
fi

# Permisos configurados
if [ -f ".claude/settings.local.json" ]; then
    PERMISOS=$(grep -o '"allow":.*' .claude/settings.local.json | grep -o "Bash([^)]*)" | wc -l)
    echo -e "${GREEN}🔐 Permisos pre-configurados:${NC} $PERMISOS comandos permitidos"
    echo ""
fi

echo -e "${BLUE}═══════════════════════════════════════════════${NC}"
echo ""
echo -e "${GREEN}🚀 Proyecto listo para usar con Claude Code${NC}"
echo ""
echo -e "${BLUE}Próximos pasos:${NC}"
echo "  1. Abrir el proyecto en Claude Code"
echo "  2. Las skills se activarán automáticamente"
echo "  3. Personalizar .claude/settings.local.json si es necesario"
echo ""
