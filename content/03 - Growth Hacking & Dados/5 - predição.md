---
title: "5 - Predição & Modelagem Preditiva"
aliases:
  - Predição
  - Modelagem Preditiva
  - Predictive Analytics
  - Forecasting
  - Machine Learning para Growth
tags:
  - growth
  - dados
  - predição
  - machine-learning
  - forecasting
created: 2026-05-29
status: 🌱 seedling
dg-publish: true
---

[[4 - Visualização de Dados]]    [[3 - Coleção de Métricas e KPIs]]    [[2 - Coleta e Tratamento de Dados]]    [[1 - Growth Hacker]]

# 5 — Predição & Modelagem Preditiva

> [!info] Conceito central
> **Análise preditiva** é a camada que usa dados históricos para estimar o que vai acontecer — não para descrever o que já aconteceu. É a evolução natural do funil de dados: depois de coletar (nota 2), medir (nota 3) e visualizar (nota 4), o passo seguinte é **antecipar**. O valor não está no modelo em si, mas na decisão que ele antecipa: quem vai dar churn, quanto um cliente vai valer, quanto estoque comprar, qual lead priorizar.

---

## A escada da analítica

| Nível | Pergunta | Exemplo |
|---|---|---|
| **Descritiva** | O que aconteceu? | Receita caiu 8% no mês |
| **Diagnóstica** | Por que aconteceu? | Queda concentrada no canal pago |
| **Preditiva** | O que vai acontecer? | 320 clientes com alta probabilidade de churn nos próximos 30 dias |
| **Prescritiva** | O que fazer a respeito? | Disparar cupom de retenção para os 320 antes do churn |

> [!tip] Predição sem ação é dashboard caro
> Um score de churn que ninguém aciona não vale o custo de treiná-lo. Toda predição precisa de um dono e de um gatilho de ação.

---

## Casos de uso preditivos em growth e e-commerce

| Caso de uso | O que prevê | Decisão que suporta |
|---|---|---|
| **Churn prediction** | Probabilidade de o cliente abandonar | Campanha de retenção proativa |
| **LTV preditivo** | Valor futuro de um cliente novo | Quanto pagar por aquisição (CAC máximo) |
| **Propensão de compra** | Chance de converter / recomprar | Priorização de leads, timing de oferta |
| **Lead scoring** | Qualidade do lead para vendas | Roteamento e priorização do funil |
| **Demand forecasting** | Demanda futura por SKU | Compra de estoque, ponto de reorder |
| **Next best offer** | Próximo produto mais provável | Recomendação e cross-sell |
| **Elasticidade de preço** | Reação da demanda ao preço | Precificação dinâmica |

---

## Técnicas por tipo de problema

| Problema | Técnicas comuns | Trade-off |
|---|---|---|
| **Classificação** (churn, propensão) | Logistic Regression, XGBoost, LightGBM | Regressão = interpretável; boosting = performance |
| **Regressão** (LTV, demanda) | Regressão linear, Random Forest, GBMs | Comece simples antes de partir para ensemble |
| **Séries temporais** (forecasting) | Prophet, SARIMA, LightGBM com features de calendário | Sempre reporte intervalo de confiança, não só o ponto |
| **Sobrevivência** (tempo até churn) | BG/NBD + Gamma-Gamma, Survival Analysis | Modela *quando*, não só *se* |
| **Segmentação** (perfis) | K-means, RFM, clustering hierárquico | Use como feature, não como verdade absoluta |

---

## Forecasting — boas práticas

- **Features de calendário do Brasil**: Black Friday, Natal, Dia das Mães, Dia dos Namorados, Dia do Consumidor, Carnaval — sazonalidade local domina o sinal.
- **Sempre reportar incerteza**: um forecast de "1.000 pedidos" é inútil; "1.000 ± 150 (95%)" suporta decisão de estoque com margem de segurança.
- **Backtesting honesto**: valide em janela temporal *futura* ao treino (walk-forward), nunca embaralhando datas.

---

## Anti-padrões frequentes

1. **Data leakage.** Usar como feature algo que só existe *depois* do evento previsto (ex.: usar "motivo do cancelamento" para prever churn). Infla a acurácia no teste e quebra em produção.

2. **Otimizar acurácia em base desbalanceada.** Se 3% dão churn, um modelo que prevê "ninguém dá churn" acerta 97% e é inútil. Use precision/recall, AUC, lift — não acurácia bruta.

3. **Modelo complexo antes do baseline.** Comece com regressão ou uma regra simples. Se o XGBoost não bate o baseline de forma relevante, a complexidade não se paga.

4. **LTV preditivo otimista.** Descontar pelo custo de capital e usar churn projetado, não a média histórica estática — senão o CAC máximo aprovado fica irreal.

5. **Prever sem plano de ação.** Score gerado e enviado para um dashboard que ninguém aciona. Defina antes: quem age, com que gatilho e em quanto tempo.

---

## Conexões no vault

- [[2 - Coleta e Tratamento de Dados]] — dados limpos são pré-requisito de qualquer modelo
- [[3 - Coleção de Métricas e KPIs]] — KPIs históricos viram features e alvos de predição
- [[4 - Visualização de Dados]] — comunicar predição e incerteza de forma acionável
- [[2 - Modelagem de Dados]] — camada de dados (BI) que serve as features
- [[3 - Central de Custos Mídia On]] — forecasting de gasto e CPA por canal
- [[2.1.2 - E-commerce]] — predição de demanda e recomendação no e-commerce
- [[1 - Growth Hacker]] — experimentação que valida (ou refuta) o que o modelo sugere
