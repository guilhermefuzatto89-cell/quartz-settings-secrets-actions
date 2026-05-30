---
title: "0 - Business Intelligence Manager"
aliases:
  - BI Manager
  - Business Intelligence
  - MOC BI
  - Gestão de Dados
tags:
  - business-intelligence
  - business-intelligence
  - dados
  - analytics
created: 2026-05-29
status: 🌱 seedling
dg-publish: true
---

[[Dashboard|🧭 Voltar para o Dashboard Central]]

# 📊 0 — Business Intelligence Manager

> [!info] Conceito Central
> **Business Intelligence (BI)** é o conjunto de processos, arquiteturas e tecnologias que transformam dados brutos em informações significativas, auxiliando nas tomadas de decisão táticas e estratégicas da empresa. O BI unifica a visão operacional, permitindo monitorar a saúde do negócio em tempo real.

Conectado ao [[04 - Organização & Time (Office)/CEO|CEO]] (Diretoria Executiva), ao [[04 - Organização & Time (Office)/CMO|CMO]] (Diretoria de Marketing) e ao [[00 - Mix de Mídia/00 - Mix de Midia/1 - Mix de Mídia Manager|Mix de Mídia]].

---

## 🗺️ Mapa de Conhecimento de BI

A disciplina de Business Intelligence é dividida em três pilares fundamentais:

| Pilar | Descrição | Principais Tópicos / Ferramentas | Link da Nota |
|---|---|---|---|
| **1. Integração de Dados** | Extração de fontes de dados dispersas e centralização em repositórios unificados. | APIs, Webhooks, ETL/ELT, Google BigQuery. | [[1 - Integração de Dados|1 - Integração de Dados]] |
| **2. Modelagem de Dados** | Estruturação e transformação dos dados integrados em tabelas prontas para consumo. | Star Schema, Fatos e Dimensões, dbt, CAC e LTV. | [[2 - Modelagem de Dados|2 - Modelagem de Dados]] |
| **3. Visualização de Dados** | Criação de relatórios e painéis dinâmicos que contam histórias de negócio a partir dos dados. | Looker Studio, Power BI, UX/UI para Dashboards, Storytelling. | [[3 - Visualização de Dados|3 - Visualização de Dados]] |

---

## 🎯 O Impacto de BI nas Operações

1. **Eficiência de Aquisição:** Conectar dados de custos de anúncios (Meta Ads, Google Ads) com dados de conversão reais no CRM para calcular a atribuição exata de cada real investido.
2. **Previsibilidade Financeira:** Analisar o comportamento de recompra (cohorts) e LTV para estimar receitas futuras e ajustar limites saudáveis de CAC.
3. **Decisões baseadas em Evidências:** Eliminar o "eu acho" nas reuniões de liderança, baseando as metas e estratégias em relatórios consolidados e auditáveis.

---

## 🚫 Anti-padrões de BI

* **Ignorar a qualidade na fonte:** Tentar resolver dados sujos com fórmulas complexas no dashboard em vez de tratar na origem.
* **Dashboard "Painel de Avião":** Colocar dezenas de gráficos na mesma tela sem um fluxo de leitura lógico, gerando fadiga de decisão.
* **Métricas de Vaidade:** Priorizar o acompanhamento de cliques ou visualizações de páginas em detrimento de métricas de conversão e receita.

---

## 🔗 Conexões Importantes
* [[04 - Organização & Time (Office)/1 - Time|Estrutura do Time]] — Como o analista de BI interage com o C-Level.
* [[03 - Growth Hacking & Dados/1 - Growth Hacker|Growth Hacker]] — Experimentos de crescimento usam dados de BI como ponto de partida.
* [[00 - Mix de Mídia/Traqueamento/4 - Traqueamento|Traqueamento & GTM]] — A coleta correta no site/app alimenta a base do BI.
