# LSPT Language Support for VS Code

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![VS Code](https://img.shields.io/badge/VS%20Code-1.75.0+-green.svg)

Extensão do Visual Studio Code que adiciona suporte completo para **LSPT** (Linguagem Senior de Programação de Tarefas), a linguagem de scripts do sistema Senior.

## ✨ Funcionalidades

### 🎨 Syntax Highlighting
- Destaque de sintaxe completo para LSPT
- Reconhecimento de palavras-chave (`Definir`, `Funcao`, `Se`, `Enquanto`, etc.)
- Colorização de variáveis por tipo (prefixos `a`, `n`, `d`, `x`, `f`, `WS`)
- Destaque de comandos SQL
- Suporte para comentários `@-- --@` e `/* */`

### 📝 Code Snippets
Mais de 30 snippets prontos para uso:

- **Estruturas básicas**: `func`, `if`, `while`, `for`
- **Declarações**: `defalfa`, `defint`, `defdata`, `deffloat`
- **SQL**: `sql`, `insert`, `update`, `execsql`
- **Web Services**: `defws`, `wsexec`
- **Conversões**: `inttoalfa`, `alfatodec`, `convmask`
- **Utilitários**: `msg`, `log`, `header`

### 🔧 Recursos de Edição
- Auto-fechamento de parênteses, chaves e aspas
- Indentação automática
- Folding de código (dobrar/desdobrar blocos)
- Bracket matching

## 📦 Instalação

### Método 1: Instalação Local (Desenvolvimento)

1. Clone ou baixe este repositório
2. Copie a pasta `lspt-vscode-extension` para:
   - **Windows**: `%USERPROFILE%\.vscode\extensions\`
   - **macOS/Linux**: `~/.vscode/extensions/`
3. Reinicie o VS Code

### Método 2: Via VSIX (Recomendado)

```bash
# Na pasta da extensão
vsce package
code --install-extension lspt-language-support-1.0.0.vsix
```

## 🚀 Uso

1. Abra qualquer arquivo `.lspt` no VS Code
2. A extensão será ativada automaticamente
3. Use os snippets digitando os prefixos e pressionando `Tab`

### Exemplos de Snippets

#### Criar uma função
Digite `func` + `Tab`:
```lspt
Funcao MinhaFuncao();
   Inicio
      
   Fim;
```

#### Consulta SQL completa
Digite `sql` + `Tab`:
```lspt
aSqlCom = "SELECT campos FROM tabela WHERE condicao";

SQL_Criar(aSql);
SQL_UsarSqlSenior2(aSql, 0);
SQL_UsarAbrangencia(aSql, 0);
SQL_DefinirComando(aSql, aSqlCom);
SQL_AbrirCursor(aSql);

Enquanto(SQL_EOF(aSql) = 0)
   Inicio
      
      SQL_Proximo(aSql);
   Fim;

SQL_FecharCursor(aSql);
SQL_Destruir(aSql);
```

#### Estrutura If-Else
Digite `ifelse` + `Tab`:
```lspt
Se(condicao) {
   // código se verdadeiro
} Senao {
   // código se falso
}
```

## 📋 Lista Completa de Snippets

| Prefixo | Descrição |
|---------|-----------|
| `header` | Cabeçalho completo de arquivo LSPT |
| `func` | Declaração de função |
| `deffunc` | Definir função |
| `defalfa` | Declarar variável Alfa (string) |
| `defint` | Declarar variável Inteiro |
| `defdata` | Declarar variável Data |
| `deffloat` | Declarar variável Flutuante |
| `if` | Estrutura Se |
| `ifelse` | Estrutura Se-Senao |
| `while` | Loop Enquanto |
| `for` | Loop Para |
| `sql` | Template completo de consulta SQL |
| `sqlalfa` | Retornar campo Alfa de SQL |
| `sqlint` | Retornar campo Inteiro de SQL |
| `sqldate` | Retornar campo Data de SQL |
| `sqlfloat` | Retornar campo Flutuante de SQL |
| `execsql` | Executar SQL com tratamento de erro |
| `insert` | Comando INSERT SQL |
| `update` | Comando UPDATE SQL |
| `msg` | Exibir mensagem |
| `defws` | Declarar Web Service |
| `wsexec` | Executar Web Service |
| `inttoalfa` | Converter Inteiro para Alfa |
| `alfatodec` | Converter Alfa para Decimal |
| `convmask` | Converter com máscara |
| `comment` | Bloco de comentário |
| `log` | Função de log padrão |

## 🎨 Temas Recomendados

Esta extensão funciona bem com qualquer tema do VS Code. Temas recomendados:
- **Dark+** (padrão)
- **Monokai**
- **One Dark Pro**
- **Dracula**

## 🔍 Convenções de Nomenclatura LSPT

A extensão reconhece automaticamente variáveis pelos prefixos:

- `a` - Variáveis Alfa (strings): `aNome`, `aCodigo`
- `n` - Variáveis Numéricas (inteiros): `nCodEmp`, `nTotal`
- `d` - Variáveis Data: `dDatEmi`, `dDatCpt`
- `x` - Comandos/Mensagens: `xCommand`, `xMensagem`
- `f` - Variáveis Flutuantes (decimais): `fValor`, `fTotal`
- `WS` - Web Services: `WSPedido`, `WSCliente`

## 🐛 Problemas Conhecidos

Nenhum problema conhecido no momento.

## 📝 Changelog

### [1.0.0] - 2025-11-19
- ✨ Lançamento inicial
- 🎨 Syntax highlighting completo
- 📝 30+ snippets
- 🔧 Configuração de linguagem
- 📚 Documentação completa

## 🤝 Contribuindo

Contribuições são bem-vindas! Para contribuir:

1. Fork este repositório
2. Crie uma branch para sua feature (`git checkout -b feature/MinhaFeature`)
3. Commit suas mudanças (`git commit -m 'Adiciona MinhaFeature'`)
4. Push para a branch (`git push origin feature/MinhaFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT.

## 👤 Autor

**Eliezer Organ**
- Email: eliezer.organ@consultorseniorsistemas.com.br

## 🙏 Agradecimentos

- Senior Sistemas pela linguagem LSPT
- Comunidade VS Code

---

**Aproveite a extensão! Se tiver sugestões ou encontrar bugs, por favor abra uma issue.** 🚀
