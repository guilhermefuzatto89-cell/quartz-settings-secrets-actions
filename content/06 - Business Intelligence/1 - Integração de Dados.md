---
title: "1 - Integração de Dados"
aliases:
  - Integração de Dados
  - Data Integration
  - ETL
  - ELT
  - Pipelines de Dados
tags:
  - business-intelligence
  - integração
  - etl
  - elt
  - api
  - webhook
  - bigquery
created: 2026-05-29
status: 🌱 seedling
dg-publish: true
---

[[0 - Business Intelligence Manager|⬅️ Voltar para o BI Manager]]

# 🔗 1 — Integração de Dados

> [!info] Conceito Central
> **Integração de Dados** é o primeiro passo no pipeline de analytics. Envolve o processo de extrair dados de diferentes plataformas (como fontes de tráfego, CRM e banco de dados do produto), transportá-los com segurança e carregá-los em um local centralizado para processamento.

---

## 🛠️ Métodos de Integração

Existem três abordagens principais para mover dados de fontes operacionais para o ambiente de BI:

### 1. APIs (Application Programming Interfaces)
Conexões programáticas que solicitam e extraem dados estruturados (geralmente em JSON ou XML) das plataformas parceiras.
* **Exemplo de Uso:** Extrair dados consolidados de performance diária do **Meta Ads** ou **Google Ads** via requisições agendadas (ex: rodar um script Python ou usar ferramentas como Fivetran/Airbyte a cada 24 horas).
* **Vantagens:** Alta precisão de dados históricos acumulados; excelente para análises de tendências e performance acumulada.

### 2. Webhooks
Diferente das APIs que demandam requisições periódicas (pull), os webhooks empurram dados em tempo real (push) sempre que um evento específico acontece na plataforma de origem.
* **Exemplo de Uso:** Enviar dados de um "novo lead cadastrado" ou "venda realizada" do **CRM/E-commerce** diretamente para a base de dados de BI no momento exato do evento.
* **Vantagens:** Latência quase zero (tempo real); ideal para automações imediatas e alertas de monitoramento operacional.

### 3. Integrações Nativas (Ex: GA4 ➔ BigQuery)
Conexões automáticas disponibilizadas pelas próprias ferramentas que fazem o streaming de dados brutos sem necessidade de programação manual.
* **Exemplo de Uso:** Export diário e em tempo real do **Google Analytics 4** para o **Google BigQuery**.
* **Vantagens:** Sem custo de desenvolvimento de código; traz o dado a nível de evento bruto (raw data), permitindo análises granulares sem amostragem.

---

## 🔄 ETL (Extract, Transform, Load) vs. ELT (Extract, Load, Transform)

A escolha de arquitetura define onde a transformação dos dados acontece:

| Característica | ETL | ELT (Modern Data Stack) |
|---|---|---|
| **Fluxo** | Extrai ➔ Transforma (em memória/servidor local) ➔ Carrega | Extrai ➔ Carrega (dado bruto) ➔ Transforma (no Data Warehouse) |
| **Flexibilidade** | Baixa. Se a regra de negócio mudar, é preciso reprocessar todo o pipeline. | Alta. O dado bruto está sempre salvo; basta mudar o código SQL para reprocessar. |
| **Ferramentas Comuns** | Pentaho, Talend, Apache Airflow. | Fivetran, Airbyte, Stitch, **dbt** (para a etapa de transformação). |
| **Cenário Recomendado** | Dados sensíveis que precisam de anonimização antes de sair da rede interna. | Praticamente todas as operações modernas de marketing e crescimento digital. |

---

## 🗄️ O Repositório Central: Data Warehouse (BigQuery)

O **Data Warehouse (DW)** é o banco de dados otimizado para consultas analíticas complexas (leituras colunares rápidas), diferente dos bancos operacionais (transacionais, otimizados para escrita rápida, como PostgreSQL/MySQL).

* **Por que o BigQuery é o padrão?**
  - **Escala serverless:** Gerenciamento automático de recursos; executa consultas em petabytes de dados em segundos.
  - **Integração fácil:** Vinculação nativa e gratuita com o **Google Analytics 4** e **Google Ads**.
  - **Preço dinâmico:** Cobra pelo volume de dados processados em cada consulta e pelo armazenamento físico de dados.

---

## 🚫 Anti-padrões de Integração

1. **Baixar CSVs manualmente:** Depender de downloads manuais de relatórios em planilhas gera erros humanos, fadiga operacional e impede a automação.
2. **Processar dados analíticos direto no banco de produção:** Executar queries pesadas de BI diretamente no banco de dados do site ou app pode causar lentidão para os usuários finais ou até quedas do sistema.
3. **Não versionar pipelines:** Construir integrações em scripts isolados em computadores locais sem documentação ou controle de versão (Git).

---

## 🔗 Conexões Importantes
* [[Google|1 - Google]] — Detalhes sobre o ecossistema do BigQuery.
* [[00 - Mix de Mídia/Traqueamento/4 - Traqueamento|Traqueamento & GTM]] — Como os dados gerados no comportamento do usuário são estruturados para a integração.
* [[2 - Modelagem de Dados|Modelagem de Dados]] — O próximo passo: como transformar esses dados brutos carregados no DW.
