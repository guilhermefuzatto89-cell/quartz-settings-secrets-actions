# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## O que é este repositório

Este NÃO é um repositório de código. É um **vault do Obsidian** — um "jardim digital" (digital garden) de conhecimento de **marketing, growth e dados**, escrito em **português (Brasil)**. São ~99 notas Markdown interligadas por wikilinks `[[...]]`, organizadas em 7 áreas + TI, e publicadas como site estático via **Quartz** (campo `dg-publish`).

Não há build/lint/testes de código. O trabalho aqui é **criar, padronizar, interligar e publicar notas**. A fonte da verdade das regras é **`_Convenções do Vault.md`** na raiz — leia-a antes de criar nota ou tag; a taxonomia evolui e a nota viva manda sobre qualquer snapshot.

## Estrutura

```
_Convenções do Vault.md          ← fonte da verdade: tags, status, padrões de nota
Dashboard.md                     ← hub central, indexa as 7 áreas e os MOCs
MOC — Stack de Mensuração.md     ← mapas transversais (cruzam pastas por tema)
MOC — Ciclo de Vida do Cliente.md
MOC — Marca & Estratégia.md
00 - Mix de Mídia/               (Mix de Midia, Ambientes de Conversão, Central de Custo, Traqueamento)
01 - Marketing (Kotler & Keller)/
02 - Branding & Gestão de Marca/
03 - Growth Hacking & Dados/
04 - Organização & Time (Office)/ (uma nota por C-level: CEO, CMO, CFO, CTO, CDO, CGO…)
05 - Ferramentas (Tools)/         (Google/, Meta/, TikTok)
06 - Business Intelligence/
TI/                               (Cloud, Domínio, Host, Security — área nascente)
```

**Convenções estruturais a respeitar:**
- **Pastas numeradas** (`00 - …` a `06 - …`) — mantenha o prefixo numérico ao criar/mover.
- **Hub por pasta**: cada área tem uma nota-índice ("Manager"/hub), normalmente prefixada `0 -`/`1 -` (ex.: `0 - Branding Manager`, `1 - Growth Hacker`, `0 - Business Intelligence Manager`). Nota nova deve linkar para o hub da sua área.
- **Notas numeradas hierarquicamente** dentro da pasta (`1.3 - SEO`, `1.5 - Social Ads`, `1.9.7 - CDP`).

## Como trabalhar: use as skills

Para quase toda tarefa neste vault, invoque a skill correspondente em vez de escrever Markdown do zero — elas carregam as convenções e evitam divergência.

**Operações sobre o vault:**

| Skill | Quando usar |
|---|---|
| `criar-nota-vault` | Criar/rascunhar/fichar qualquer nota nova já aderente às convenções. |
| `pesquisa-para-nota` | Tema que exige info atual (ferramentas, preços 2026, benchmarks): pesquisa na web e entrega a nota pronta. |
| `construir-moc` | Criar/atualizar um MOC transversal. Rode depois de adicionar notas novas. |
| `auditar-taxonomia` | Linter: auditar/corrigir tags, status, frontmatter. Tem `scripts/audit.py` (só relata, nunca edita). |
| `saude-do-grafo` | Achar órfãs, wikilinks quebrados/ambíguos, falta de barra de links ou de "Conexões no vault". |
| `publicar-quartz` | QA pré-publicação Quartz: o que vai ao ar (`dg-publish: true`), frontmatter exigido, links que viram 404. |

**Conteúdo por área** (a camada de "fazer o trabalho" de cada disciplina): `area-mix-de-midia`, `area-marketing`, `area-branding`, `area-growth-dados`, `area-business-intelligence`, `area-ferramentas`, `area-office` (governança C-suite), `area-ti` (infra). Fronteiras comuns: decidir verba/canal → `area-mix-de-midia`; configurar a plataforma (GA4/GTM/Meta) → `area-ferramentas`; modelar dados/dashboard → `area-business-intelligence`; método de funil/experimento → `area-growth-dados`.

## Padrões de toda nota (cobrados por `auditar-taxonomia` e `saude-do-grafo`)

- **Frontmatter com os 6 campos**: `title`, `aliases`, `tags`, `created` (`AAAA-MM-DD`), `status`, `dg-publish`.
- **Ciclo de status** (valor exato, um dos quatro): `🌱 seedling` → `🌿 budding` → `🌳 evergreen` → `⚠️ deprecated`.
  - Armadilha: evergreen é sempre 🌳 (árvore); a folha 🌿 é exclusiva de *budding*. Nunca use 🌿 para "perene".
- **Barra de 2–4 links no topo** (logo após o frontmatter), por basename.
- **Callout `> [!info] Conceito central`** abrindo a nota (2–3 linhas).
- **Corpo no estilo da casa**: denso em tabelas, não prosa corrida; inclua seção **"Anti-padrões frequentes"** quando o tema tiver armadilhas.
- **Seção "Conexões no vault"** ao fim, cada link com um traço de contexto (`— por que se conecta`). A nota não nasce órfã.

### Taxonomia (vocabulário fechado — detalhes em `_Convenções do Vault.md`)

- Tags **minúsculas, com hífen** para compostos, **com acento** quando a palavra tem (`aquisição`, `atribuição`, `programática`). Reaproveite tag existente antes de criar nova.
- Toda nota leva **≥1 tag de área**: `growth` · `mix-de-midia` · `branding` · `dados` · `marketing` · `business-intelligence` · `office` · `ecossistema`.
- **Exceção registrada**: `mix-de-midia` fica **sem acento** (nunca `mix-de-mídia`).
- **Sinônimos banidos** (não reintroduzir): `bi`→`business-intelligence` · `rastreamento`→`traqueamento` · `ecommerce`→`e-commerce` · `ai`→`ia` · `metricas`→`métricas`.

### Links

Prefira **basename** (`[[1.3 - SEO]]`) a caminho completo — o Obsidian resolve pelo nome único e o link sobrevive a mudanças de pasta. Só use caminho completo quando o basename for ambíguo (ex.: existem duas notas "Visualização de Dados", uma em Growth e outra em BI).

## MOCs (Mapas de Conteúdo)

Índices **transversais** (cruzam pastas por tema). Os 3 da casa: **Stack de Mensuração** (evento→dashboard→decisão), **Ciclo de Vida do Cliente** (funil AARRR), **Marca & Estratégia**. Molde: callout "Para que serve este mapa" → diagrama de fluxo (opcional) → tabelas por etapa com colunas **Nota / Papel(Camada) / Pasta** → seção **"Donos no time"** (links de C-suite, ex.: `[[CDO]]` · `[[CTO]]`) → **"Conexões no vault"**.

## Governança / publicação

- **Donos**: papéis de decisão seguem a camada C-suite em `04 - Organização & Time (Office)/` (uma nota por C-level). Todo MOC/iniciativa tem dono(s) explícito(s).
- **Publicação Quartz**: nota só vai ao ar com `dg-publish: true`. Antes de buildar, rode `publicar-quartz` para conferir frontmatter e links que apontam para notas não publicadas (viram 404).
- **Ao editar**: mexa cirurgicamente no frontmatter; nunca apague uma nota nem reescreva o corpo inteiro sem confirmar; renomeação de tag em massa só com de→para aprovado pelo usuário.
