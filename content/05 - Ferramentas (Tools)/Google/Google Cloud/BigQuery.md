---
title: "Google BigQuery"
aliases:
  - BigQuery
  - BQ
  - Google BigQuery
  - Data Warehouse Google
tags:
  - tools
  - google
  - google-cloud
  - bigquery
  - data-warehouse
created: 2026-05-29
status: 🌱 seedling
dg-publish: true
---

[[Google|⬅️ Voltar para o Ecossistema Google]]

# 🗄️ Google BigQuery

> [!info] O que é?
> O **Google BigQuery** é o Data Warehouse serverless, altamente escalável e de baixo custo do Google Cloud Platform (GCP). Ele foi projetado para armazenar e consultar petabytes de dados usando SQL padrão de forma extremamente rápida, sem a necessidade de gerenciar infraestrutura ou servidores.

---

## 🚀 Principais Funcionalidades

1. **Arquitetura Serverless:** Não há necessidade de provisionar instâncias, memória ou discos. O Google gerencia o poder de computação de forma totalmente elástica em segundo plano.
2. **Armazenamento e Computação Separados:** Você paga pelo armazenamento físico dos dados e, separadamente, pelo processamento analítico (queries SQL) ou por slots reservados.
3. **BigQuery ML (Machine Learning):** Permite construir e treinar modelos de Machine Learning (como regressão linear, regressão logística e clusterização k-means) diretamente nos seus dados usando comandos SQL simples.
4. **Segurança e Conformidade:** Integração nativa com o IAM do Google Cloud para permissões granulares por dataset, tabela, coluna ou até linha.

---

## 📣 Casos de Uso em Marketing & Growth

O BigQuery é o coração da **Modern Data Stack (MDS)** de marketing para operações orientadas a dados:

### 1. Integração Nativa com Google Analytics 4 (GA4)
* **Como funciona:** O GA4 possui um conector gratuito que envia todos os dados de eventos de comportamento de usuários no site/app diariamente ou em tempo real (streaming) para o BigQuery.
* **Benefício:** Permite cruzar dados granulares de jornada do usuário sem amostragem (sampling), o que é impossível dentro da interface padrão do GA4.

### 2. Centralização de Custos de Mídia (Ads Cost Import)
* **Como funciona:** Integração de dados de custos de anúncios do Meta Ads, TikTok Ads, LinkedIn Ads e do próprio Google Ads.
* **Benefício:** Viabiliza o cálculo consolidado de ROI/ROAS multicanal, unificando investimentos de aquisição com receitas reais vindas do CRM/ERP.

### 3. Modelagem Dimensional e Cohorts
* **Como funciona:** Consumo de dados modelados através de ferramentas como **dbt** (Data Build Tool).
* **Benefício:** Criação de visões de Lifetime Value (LTV), taxas de retenção por coortes mensais e funis de conversão customizados.

---

## 💡 Melhores Práticas e Controle de Custos

Como o BigQuery cobra por volume de dados processados em consultas, queries ineficientes podem elevar os custos rapidamente. Siga estas diretrizes:

* **Evite o `SELECT *`:** Sempre selecione apenas as colunas necessárias. Bancos de dados colunares leem e cobram apenas pelas colunas selecionadas.
* **Use Particionamento de Tabelas:** Particione tabelas grandes por data de evento (ex: `PARTITION BY date_column`). Isso restringe a consulta a dias específicos, economizando processamento.
* **Use Agrupamento (Clustering):** Agrupe tabelas por colunas frequentemente filtradas (ex: `CLUSTER BY canal, status_venda`) para otimizar a velocidade de busca de registros.
* **Visualize Antes de Rodar:** Utilize a estimativa de bytes que a interface do BigQuery mostra no canto superior direito antes de executar a query para saber quanto ela processará.

---

## 🔗 Conexões Importantes
* [[06 - Business Intelligence/1 - Integração de Dados|1 - Integração de Dados]] — O pipeline que extrai e carrega os dados brutos no BigQuery.
* [[06 - Business Intelligence/2 - Modelagem de Dados|2 - Modelagem de Dados]] — Como estruturar as tabelas do BigQuery em fatos e dimensões.
* [[06 - Business Intelligence/3 - Visualização de Dados|3 - Visualização de Dados]] — Conectando o BigQuery ao Looker Studio ou Power BI.
