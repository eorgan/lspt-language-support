#!/bin/bash

# Script para reinstalar a extensão LSPT Language Support

echo "🔄 Desinstalando extensão LSPT..."
code --uninstall-extension eliezer-organ.lspt-language-support

echo "⏳ Aguardando 2 segundos..."
sleep 2

echo "📦 Instalando extensão LSPT..."
code --install-extension lspt-language-support-1.0.0.vsix

echo "✅ Pronto! Agora recarregue a janela do VS Code (Cmd+Shift+P > Developer: Reload Window)"
