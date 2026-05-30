---
title: "2 - Modelagem de Dados"
aliases:
  - Modelagem de Dados
  - Data Modeling
  - Star Schema
  - Tabelas Fato e Dimensão
  - dbt
tags:
  - business-intelligence
  - modelagem
  - starschema
  - dbt
  - métricas
  - sql
created: 2026-05-29
status: 🌱 seedling
dg-publish: true
---

[[0 - Business Intelligence Manager|⬅️ Voltar para o BI Manager]]

# 📐 2 — Modelagem de Dados

> [!info] Conceito Central
> **Modelagem de Dados** é a etapa em que os dados brutos integrados e salvos no Data Warehouse são limpos, estruturados e relacionados de forma lógica. O objetivo é criar tabelas fáceis de consultar e consistentes para alimentar os dashboards e ferramentas de visualização.

---

## 🏛️ Modelagem Dimensional: Star Schema (Esquema Estrela)

O Star Schema é a estrutura mais comum e otimizada para modelagem em Data Warehouses, dividindo os dados em dois tipos de tabelas:

### 1. Tabelas Fato (Fact Tables)
Registram os **acontecimentos quantitativos** e históricos do negócio (eventos). Geralmente contêm números, métricas financeiras e chaves estrangeiras que ligam às dimensões. Respondem à pergunta: *O que aconteceu, quando e quanto?*
* **Exemplos:**
  - `fato_vendas` (ID da venda, data, ID do cliente, ID do produto, valor total, desconto).
  - `fato_cliques_anuncios` (ID do clique, timestamp, ID da campanha, custo do clique).
* **Características:** Tabelas verticais, com muitas linhas (milhões/bilhões) e poucas colunas.

### 2. Tabelas Dimensão (Dimension Tables)
Contêm os **atributos qualitativos** e de contexto que descrevem as entidades da Fato. Respondem às perguntas: *Quem, onde, qual e por quê?*
* **Exemplos:**
  - `dim_clientes` (ID do cliente, nome, estado, e-mail, data de cadastro, segmento).
  - `dim_produtos` (ID do produto, nome, categoria, preço sugerido, marca).
  - `dim_canais_midia` (ID do canal, nome da plataforma, formato do anúncio).
* **Características:** Tabelas horizontais, com menos linhas e muitas colunas descritivas.

---

## ⚙️ Transformação de Dados Moderna: dbt (Data Build Tool)

No ecossistema moderno de dados (ELT), o **dbt** tornou-se a ferramenta padrão para gerenciar a transformação de dados dentro do Data Warehouse usando SQL.

* **O que o dbt faz?**
  - **SQL Declarativo:** Você escreve apenas a instrução `SELECT`; o dbt cuida de criar as tabelas ou views no BigQuery.
  - **Linhagem de Dados:** Cria automaticamente o mapa de dependência das tabelas (qual tabela alimenta qual).
  - **Testes de Dados:** Permite criar testes automatizados para garantir a qualidade dos dados (ex: testar se a coluna `id_venda` possui valores nulos ou duplicados).
  - **Controle de Versão:** Todo o modelo de dados é versionado via Git como código (Analytics Engineering).

---

## 📐 Regras de Negócio e Métricas Calculadas

Uma modelagem correta precisa unificar a definição de métricas de negócio para evitar discrepâncias (ex: o time financeiro e o time de marketing calculando receita de formas diferentes).

### Principais Métricas de Negócio em BI:

1. **CAC (Custo de Aquisição de Clientes)**
   $$\text{CAC} = \frac{\text{Total de Investimento em Mídia} + \text{Custos Operacionais de Vendas}}{\text{Total de Novos Clientes Adquiridos}}$$
   * *Regra de Modelagem:* Requer a união dos custos de mídia (`fato_cliques_anuncios`) com a contagem de clientes únicos na tabela de conversão (`fato_vendas`).

2. **LTV (Lifetime Value)**
   $$\text{LTV} = \text{Valor Médio de Compra} \times \text{Frequência de Compra} \times \text{Tempo Médio de Retenção}$$
   * *Regra de Modelagem:* Requer análise histórica de cohort na tabela `fato_vendas` agrupando clientes pelo mês de aquisição e somando sua receita acumulada ao longo do tempo.

3. **ROI (Retorno sobre Investimento) & ROAS (Retorno sobre Investimento em Anúncios)**
   $$\text{ROAS} = \frac{\text{Receita Gerada por Anúncios}}{\text{Custo de Mídia}}$$

---

## 🚫 Anti-padrões de Modelagem

* **Falta de uma tabela de Calendário (`dim_tempo`):** Fazer filtros de data usando funções de data do banco diretamente na Fato. Ter uma dimensão tempo dedicada acelera as queries e facilita análises de sazonalidade e feriados.
* **Tabelas gigantescas desnormalizadas (One Big Table) sem necessidade:** Criar uma única tabela com 200 colunas contendo todos os dados misturados de vendas, clientes e produtos. Isso encarece as consultas em bancos como BigQuery.
* **Lógica de negócio hardcoded nos dashboards:** Criar regras complexas de agrupamento de categorias ou filtros de impostos diretamente nas ferramentas de visualização (ex: Looker Studio) em vez de persistir essa lógica tratada no Data Warehouse.

---

## 🔗 Conexões Importantes
* [[03 - Growth Hacking & Dados/3 - Coleção de Métricas e KPIs|Métricas e KPIs]] — As métricas que a modelagem precisa entregar prontas.
* [[1 - Integração de Dados|Integração de Dados]] — A origem dos dados brutos que a modelagem consome.
* [[3 - Visualização de Dados|Visualização de Dados]] — O destino final onde os modelos prontos serão consumidos.
