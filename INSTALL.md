# Guia de Instalação e Uso - Extensão LSPT

## 🚀 Instalação Rápida

### Opção 1: Instalação Direta (Mais Simples)

1. **Copie a pasta da extensão** para o diretório de extensões do VS Code:

   **No macOS/Linux:**
   ```bash
   cp -r /Users/eliezer.organ/GitHub/lspt-language-support ~/.vscode/extensions/lspt-language-support
   ```
   
   Ou, se estiver no diretório do projeto:
   ```bash
   cp -r . ~/.vscode/extensions/lspt-language-support
   ```

   **No Windows (PowerShell):**
   ```powershell
   Copy-Item -Path "." -Destination "$env:USERPROFILE\.vscode\extensions\lspt-language-support" -Recurse
   ```

2. **Reinicie o VS Code**

3. **Pronto!** Abra qualquer arquivo `.lspt` e a extensão estará ativa.

---

### Opção 2: Criar Pacote VSIX (Recomendado para Distribuição)

1. **Instale o vsce** (VS Code Extension Manager):
   ```bash
   npm install -g @vscode/vsce
   ```

2. **Entre na pasta da extensão** (se ainda não estiver nela):
   ```bash
   cd /Users/eliezer.organ/GitHub/lspt-language-support
   ```

3. **Crie o pacote**:
   ```bash
   vsce package
   ```
   Isso criará um arquivo `lspt-language-support-1.0.0.vsix`

4. **Instale a extensão**:
   ```bash
   code --install-extension lspt-language-support-1.0.0.vsix
   ```

---

## ✅ Verificação da Instalação

1. Abra o VS Code
2. Vá em **View > Extensions** (ou `Cmd+Shift+X` / `Ctrl+Shift+X`)
3. Procure por "LSPT" - você deve ver a extensão instalada
4. Abra um arquivo `.lspt` - o ícone de linguagem no canto inferior direito deve mostrar "LSPT"

---

## 📝 Como Usar os Snippets

### Exemplo 1: Criar uma Função

1. Digite `func` e pressione `Tab`
2. O snippet será expandido:
   ```lspt
   Funcao NomeDaFuncao();
      Inicio
         
      Fim;
   ```
3. Digite o nome da função e pressione `Tab` para pular para o corpo

### Exemplo 2: Consulta SQL

1. Digite `sql` e pressione `Tab`
2. Preencha os campos usando `Tab` para navegar entre eles

### Exemplo 3: Estrutura If-Else

1. Digite `ifelse` e pressione `Tab`
2. Preencha a condição e o código

---

## 🎨 Testando o Syntax Highlighting

Abra o arquivo existente no projeto:
```
Inclusão dos itens no Contrato e Geração de Pedidos de Venda.lspt
```

Você deve ver:
- ✅ Palavras-chave em destaque (Definir, Funcao, Se, Enquanto, etc.)
- ✅ Comentários em cor diferente
- ✅ Strings destacadas
- ✅ Variáveis coloridas por tipo (a, n, d, x, f)
- ✅ Comandos SQL destacados

---

## 🔧 Solução de Problemas

### A extensão não aparece
- Verifique se copiou para o diretório correto
- Reinicie o VS Code completamente
- Verifique se não há erros no console: **Help > Toggle Developer Tools**

### Syntax highlighting não funciona
- Verifique se o arquivo tem extensão `.lspt`
- Clique no indicador de linguagem no canto inferior direito
- Selecione "LSPT" manualmente

### Snippets não aparecem
- Certifique-se de estar em um arquivo `.lspt`
- Pressione `Ctrl+Space` para forçar o IntelliSense
- Verifique as configurações de snippets: **File > Preferences > Settings** > procure por "suggest"

---

## 📚 Próximos Passos

1. ✅ Instale a extensão
2. ✅ Teste com seus arquivos LSPT existentes
3. ✅ Experimente os snippets
4. ✅ Personalize as cores no seu tema preferido
5. ✅ Compartilhe com sua equipe!

---

## 🎯 Atalhos Úteis

- `Ctrl+Space` - Ativar IntelliSense/Snippets
- `Ctrl+Shift+P` - Command Palette
- `Ctrl+K Ctrl+T` - Mudar tema de cores
- `Ctrl+/` - Comentar/descomentar linha
- `Alt+Shift+F` - Formatar documento

---

**Dúvidas?** Consulte o [README.md](README.md) para mais informações!
