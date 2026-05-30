---
title: "2 - Coleta e Tratamento de Dados"
aliases:
  - Coleta de Dados
  - Data Collection
  - ETL
  - Data Pipeline
  - First-party data
tags:
  - growth
  - dados
  - pipeline
  - etl
  - first-party
created: 2026-05-24
status: 🌱 seedling
dg-publish: true
---

[[1 - Growth Hacker]]    [[3 - Coleção de Métricas e KPIs]]    [[4 - Visualização de Dados]]

# 2 — Coleta e Tratamento de Dados

> [!info] Conceito central
> **Dado é ouro** — mas só depois de coletado, organizado e tratado. Dados brutos dispersos em dezenas de plataformas (GA4, Meta, Google Ads, CRM, ERP, MMP) não geram insight. O pipeline de dados transforma fontes fragmentadas em uma visão unificada e confiável que sustenta decisões de marketing, produto e negócio.

---

## As camadas do pipeline de dados

```
COLETA       → Fontes brutas (GA4, APIs de plataformas, banco de dados)
     ↓
EXTRAÇÃO     → Conectores e integrações (ETL / ELT)
     ↓
ARMAZENAMENTO → Data warehouse (BigQuery, Snowflake, Redshift)
     ↓
TRANSFORMAÇÃO → SQL, dbt — limpar, modelar, enriquecer
     ↓
ATIVAÇÃO     → BI (Looker, Power BI), CDP, campanhas
```

---

## Fontes de dados no ecossistema de marketing

| Fonte | Dados disponíveis | Tipo |
|---|---|---|
| **GA4** | Sessões, eventos, conversões, funil web | Comportamento |
| **Meta Ads Manager** | Alcance, CPM, cliques, CPA por campanha | Performance paga |
| **Google Ads** | Impressões, cliques, Quality Score, conversões | Performance paga |
| **MMP (AppsFlyer)** | Instalações, retenção, eventos in-app | Mobile |
| **CRM (HubSpot/Salesforce)** | Leads, oportunidades, clientes | Pipeline |
| **E-commerce (Shopify/VTEX)** | Pedidos, ticket médio, recompra, LTV | Transacional |
| **ERP** | Estoque, NF-e, custos operacionais, margem | Operacional |
| **Marketplace (ML/Amazon)** | Vendas, avaliações, ranqueamento | Canal |

---

## ETL vs ELT

| Abordagem | Ordem | Quando usar |
|---|---|---|
| **ETL** (Extract-Transform-Load) | Transforma antes de carregar | Dados legados, sistemas on-premise |
| **ELT** (Extract-Load-Transform) | Carrega bruto, transforma no warehouse | Cloud-native — padrão moderno |

---

## Ferramentas de coleta e integração

### Conectores e ETL/ELT

| Ferramenta | Função |
|---|---|
| **Fivetran** | Conectores prontos para 500+ fontes → data warehouse |
| **Stitch Data** | Simples, open-source friendly |
| **Airbyte** | Open-source — flexível e gratuito |
| **Google Data Transfer** | Exporta dados Google Ads / SA360 para BigQuery |
| **Supermetrics** | Marketing data → Google Sheets / Looker Studio / BigQuery |

### Data Warehouse

| Plataforma | Destaque |
|---|---|
| **BigQuery (Google)** | Serverless, SQL, integração nativa GA4 — popular no Brasil |
| **Snowflake** | Líder enterprise — multi-cloud |
| **Amazon Redshift** | AWS ecosystem |
| **Databricks** | Dados + ML na mesma plataforma |

### Transformação

| Ferramenta | Função |
|---|---|
| **dbt (data build tool)** | Transforma dados no warehouse com SQL versionado |
| **Python (Pandas)** | Transformação customizada |
| **SQL puro** | Para casos simples |

---

## Qualidade de dados — o problema mais comum

| Problema | Causa | Solução |
|---|---|---|
| **Dados duplicados** | Múltiplas fontes enviando o mesmo evento | Deduplicação por ID único |
| **Dados ausentes** | Evento não disparado (blocker, bug) | Server-side tracking |
| **Dados inconsistentes** | Nomenclatura diferente por canal ("purchase" vs "buy") | Dicionário de dados padronizado |
| **Atribuição conflitante** | Cada plataforma se auto-atribui | MMP + modelo de atribuição neutro |
| **Dados desatualizados** | Delay de API ou cache antigo | Monitoramento de latência do pipeline |

---

## First-party data — o ativo mais valioso de 2026

Com o fim dos cookies de terceiros, a estratégia de first-party data é a fundação de toda operação de marketing moderna:

| Dado | Origem | Como coletar |
|---|---|---|
| **Email** | Cadastro, compra, formulário | Opt-in com valor claro |
| **Telefone / WhatsApp** | Cadastro, pedido | Opt-in para mensageria |
| **Comportamento no site** | GA4 + pixel server-side | GTM server-side |
| **Histórico de compra** | E-commerce / ERP | Integração direta |
| **Preferências** | Pesquisas, comportamento | Progressive profiling |

---

## Anti-padrões frequentes

1. **Coletar tudo sem estratégia.** Data swamp — lago de dados não tratados que ninguém usa. Definir quais perguntas o dado vai responder antes de coletar.

2. **Depender de planilha Excel como data warehouse.** Acima de algumas centenas de linhas, planilha quebra, perde histórico e não escala. BigQuery gratuito para volumes pequenos é melhor opção.

3. **Não versionar transformações de dados.** Query que alguém alterou sem documentação quebra dashboards silenciosamente. dbt com git resolve isso.

4. **Ignorar LGPD na coleta.** Coletar dados pessoais sem consentimento documentado é risco jurídico. Consent management platform (CMP) é obrigatório.

---

## Conexões no vault

- [[1 - Growth Hacker]] — dados alimentam experimentos de growth
- [[3 - Coleção de Métricas e KPIs]] — KPIs construídos sobre dados tratados
- [[4 - Visualização de Dados]] — visualização é a camada de ativação
- [[4 - Traqueamento]] — coleta é o primeiro passo do pipeline
- [[1.9.6 - DMP]] — CDP como ativação dos dados first-party
