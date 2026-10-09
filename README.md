# 📐 UML in IT

Repositório de estudos e modelagem de **Análise de Sistemas** com **UML** (*Unified Modeling Language*), aberto à comunidade.  
Os modelos são feitos no [draw.io](https://www.drawio.com/) e versionados como arquivos `.drawio`, um por diagrama, para acompanhar a evolução do entendimento do problema, do levantamento de requisitos ao projeto.

---

## 🧭 Escopo

A **Análise de Sistemas** transforma uma necessidade de negócio em um modelo que a equipe de desenvolvimento consiga construir. Este repositório cobre esse caminho:

1. **Levantamento**: entender o domínio, os envolvidos (*stakeholders*) e o problema.
2. **Requisitos**: registrar o que o sistema deve fazer (funcionais) e as restrições de qualidade (não funcionais).
3. **Modelagem de análise**: representar o sistema em UML sem se prender à tecnologia.
4. **Modelagem de projeto**: refinar os modelos de análise para a solução técnica.

```
Necessidade → Requisitos → Casos de uso → Modelo de domínio → Comportamento → Projeto
```

---

## 📁 Estrutura do Repositório

```
.
├── docs/
│   ├── requisitos/       # Requisitos funcionais, não funcionais e regras de negócio
│   └── glossario/        # Vocabulário do domínio (linguagem ubíqua)
├── diagrams/
│   ├── casos-de-uso/     # Funcionalidades sob a ótica dos atores
│   ├── classes/          # Modelo de domínio e estrutura estática
│   ├── sequencia/        # Interação entre objetos ao longo do tempo
│   ├── atividade/        # Fluxos de trabalho e processos de negócio
│   └── componentes/      # Arquitetura e dependências entre módulos
├── exports/              # SVG/PNG/PDF gerados (espelha diagrams/)
├── scripts/
│   └── export.ps1        # Exporta os .drawio para exports/
└── README.md
```

---

## 🧩 Diagramas UML

A UML 2.5 define 14 diagramas, divididos em **estruturais** (o que o sistema *é*) e **comportamentais** (o que o sistema *faz*). Abaixo, o que já está coberto neste repositório.

### Estruturais

| Diagrama | Uso na análise | Situação |
|---|---|---|
| **Classes** | Modelo de domínio: entidades, atributos, operações e associações | ✅ [exemplo](diagrams/classes/exemplo-classes.drawio) |
| **Componentes** | Divisão do sistema em módulos e interfaces | 🚧 A fazer |
| Objetos | Instâncias concretas para validar o diagrama de classes | ⏳ Planejado |
| Pacotes | Organização e dependências entre grupos de elementos | ⏳ Planejado |
| Implantação | Mapeamento do software na infraestrutura | ⏳ Planejado |
| Estrutura composta, Perfis | Uso avançado | — |

### Comportamentais

| Diagrama | Uso na análise | Situação |
|---|---|---|
| **Casos de uso** | Requisitos funcionais sob a ótica dos atores | ✅ [exemplo](diagrams/casos-de-uso/exemplo-casos-de-uso.drawio) |
| **Sequência** | Cenários de um caso de uso, mensagem por mensagem | ✅ [exemplo](diagrams/sequencia/exemplo-sequencia.drawio) |
| **Atividade** | Fluxo de um processo ou algoritmo, com decisões e paralelismo | 🚧 A fazer |
| Máquina de estados | Ciclo de vida de uma entidade (ex.: Pedido) | ⏳ Planejado |
| Comunicação, Tempo, Visão geral de interação | Variações de interação | — |

---

## 🔗 Rastreabilidade

Cada artefato deve poder ser ligado ao que o originou:

- **Requisito** → **Caso de uso** que o atende
- **Caso de uso** → **Diagrama de sequência** que detalha o cenário
- **Diagrama de sequência** → **Classes** cujas operações são chamadas
- **Termo do glossário** → **Classe** do modelo de domínio

Use o identificador do requisito (`RF01`, `RNF01`, `RN01`) no nome ou no título do diagrama relacionado.

---

## 📝 Convenções

**Arquivos**
- Um diagrama por arquivo, nome em `kebab-case` (ex.: `realizar-pedido.drawio`).
- Salve sem compressão (Arquivo > Propriedades > *Comprimido* desmarcado) para diffs legíveis no Git.
- Versione os `.drawio`; os exports são opcionais.

**Modelagem**
- Nomes de classes no singular e substantivos; operações como verbos.
- Casos de uso nomeados como **verbo + objeto** (ex.: *Realizar pedido*).
- Atores representam papéis, não pessoas.
- Modele no nível de abstração da fase: análise sem detalhes de tecnologia, projeto com eles.
- Vocabulário do domínio sempre o do glossário.

**Prefixos de requisitos**
- `RF` requisito funcional, `RNF` requisito não funcional, `RN` regra de negócio.

---

## 🛠️ Ferramentas

**Editar**
- **VS Code**: extensão recomendada `hediet.vscode-drawio`.
- **Desktop**: `winget install JGraph.Draw`.
- **Web**: [app.diagrams.net](https://app.diagrams.net).

**Exportar**
```powershell
.\scripts\export.ps1 -Format svg   # ou png, pdf
```

**Por que draw.io?** Os `.drawio` são XML em texto, funcionam bem com Git, o programa é gratuito e open source, e traz as bibliotecas de formas UML (atores, linhas de vida, classes).

---

## 📚 Referências

- [Especificação UML (OMG)](https://www.omg.org/spec/UML/)
- [UML Diagrams](https://www.uml-diagrams.org/)
- *UML Essencial*, Martin Fowler
- *Análise e Projeto de Sistemas de Informação Orientados a Objetos*, Eduardo Bezerra
- *Domain-Driven Design*, Eric Evans (linguagem ubíqua e modelo de domínio)
- [Extensão draw.io para VS Code](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio)

---

## 🤝 Contato

Dúvidas, sugestões ou feedback?  
Abra uma [issue](https://github.com/snake-outerheaven/uml-in-it/issues) ou entre em contato pelo [GitHub](https://github.com/snake-outerheaven).

---

**snake-outerheaven**
