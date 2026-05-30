---
title: "MOC — Stack de Mensuração"
aliases:
  - MOC Mensuração
  - Stack de Dados
  - Mapa de Mensuração
tags:
  - moc
  - dados
  - traqueamento
  - business-intelligence
  - analytics
created: 2026-05-29
status: 🌿 budding
dg-publish: true
---

[[Dashboard|🧭 Dashboard]]    [[4 - Traqueamento]]    [[0 - Business Intelligence Manager]]    [[_Convenções do Vault]]

# MOC — Stack de Mensuração

> [!info] Para que serve este mapa
> Mapa transversal (cruza 4 pastas) de **como o dado nasce, é coletado, modelado e vira decisão**. Costura o traqueamento do Mix de Mídia, as ferramentas do ecossistema Google, o pipeline de dados de Growth e a camada de BI. Se você quer entender o fluxo "evento → dashboard → decisão", comece aqui.

---

## O fluxo ponta a ponta

```
Captura          →  Coleta/Tracking  →  Pipeline/Modelagem  →  Visualização  →  Decisão
(evento, clique)    (pixel, SDK, API)   (ETL, warehouse)       (dashboard)       (budget)
```

---

## 1. Captura & rastreamento

| Nota | Camada | Pasta |
|---|---|---|
| [[4 - Traqueamento]] | Infraestrutura de tracking e atribuição (hub) | Mix de Mídia |
| [[Google Tag Manager]] | Container de pixels e tags (client + server-side) | Ferramentas |
| [[Google Analytics]] | GA4 — eventos, conversões, atribuição data-driven | Ferramentas |
| [[Google Search Console]] | Sinais de busca orgânica (impressões, CTR, indexação) | Ferramentas |
| [[Firebase]] | Analytics e atribuição no ambiente de app/mobile | Ferramentas |
| [[1.9.8 - MMP]] | Mobile Measurement Partner — atribuição de app | Mix de Mídia |

## 2. Plataformas de dados de público

| Nota | Função | Pasta |
|---|---|---|
| [[1.9.6 - DMP]] | Data Management Platform — dados de terceiros | Mix de Mídia |
| [[1.9.7 - CDP]] | Customer Data Platform — dados first-party unificados | Mix de Mídia |

## 3. Pipeline, modelagem & warehouse

| Nota | Função | Pasta |
|---|---|---|
| [[2 - Coleta e Tratamento de Dados]] | Coleta, limpeza e tratamento (fonte do funil) | Growth & Dados |
| [[1 - Integração de Dados]] | ETL/ELT — ingestão e integração de fontes | Business Intelligence |
| [[2 - Modelagem de Dados]] | Camada modelada (star schema, marts) | Business Intelligence |
| [[BigQuery]] | Data warehouse do ecossistema Google | Ferramentas |
| [[Google Merchant Center]] | Feed de produtos para Shopping e catálogo | Ferramentas |

## 4. Métricas, visualização & predição

| Nota | Função | Pasta |
|---|---|---|
| [[3 - Coleção de Métricas e KPIs]] | Definição de KPIs e North Star | Growth & Dados |
| [[4 - Visualização de Dados]] | Comunicação visual de dados (Growth) | Growth & Dados |
| [[3 - Visualização de Dados]] | Camada de visualização do BI | Business Intelligence |
| [[5 - predição]] | Modelagem preditiva (churn, LTV, forecasting) | Growth & Dados |
| [[0 - Business Intelligence Manager]] | Hub de BI — orquestra todo o fluxo | Business Intelligence |
| [[3 - Central de Custos Mídia On]] | Consolidação financeira de mídia (CPA, ROAS) | Mix de Mídia |

---

## Donos no time

[[CDO]] (dados) · [[CTO]] (infraestrutura) · [[CMO]] (consumo de marketing).

---

## Conexões no vault

- [[MOC — Ciclo de Vida do Cliente]] — o que esta stack mede ao longo do funil
- [[Google Marketing Platform]] — suíte que integra GA4, GSC e mídia
- [[2 - Meta]] — Pixel e CAPI no lado Meta do tracking
- [[_Convenções do Vault]] — taxonomia e padrões
