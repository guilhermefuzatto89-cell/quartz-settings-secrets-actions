---
title: "3 - Coleção de Métricas e KPIs"
aliases:
  - KPIs
  - Métricas
  - North Star Metric
  - OKR
  - Dashboard de KPIs
tags:
  - growth
  - métricas
  - kpis
  - north-star
  - okr
created: 2026-05-24
status: 🌱 seedling
dg-publish: true
---

[[1 - Growth Hacker]]    [[2 - Coleta e Tratamento de Dados]]    [[4 - Visualização de Dados]]

# 3 — Coleção de Métricas e KPIs

> [!info] Conceito central
> **KPI (Key Performance Indicator)** é a métrica que mede o progresso em direção a um objetivo estratégico. Não toda métrica é KPI — KPI é a que importa para decidir. A diferença entre empresas orientadas a dados e empresas que apenas coletam dados está na disciplina de escolher poucas métricas, acompanhá-las com rigor e tomar ações baseadas nelas.

---

## North Star Metric — a métrica que define o negócio

A **North Star Metric (NSM)** é a única métrica que captura o valor central entregue pelo produto. Toda a empresa se orienta por ela.

| Empresa | North Star Metric |
|---|---|
| **Airbnb** | Noites reservadas |
| **Spotify** | Tempo de escuta por usuário |
| **WhatsApp** | Mensagens enviadas por dia |
| **Nubank** | Clientes ativos que usaram o cartão no mês |
| **iFood** | Pedidos por mês |
| **Mercado Livre** | GMV (Gross Merchandise Volume) |

> [!tip] Como escolher sua NSM
> A NSM ideal: (1) representa valor real entregue ao usuário, (2) está correlacionada com receita, (3) toda a empresa consegue influenciar e medir.

---

## Hierarquia de métricas

```
NORTH STAR METRIC (1 métrica — direção da empresa)
        ↓
KPIs ESTRATÉGICOS (5–7 — objetivos por área)
        ↓
MÉTRICAS OPERACIONAIS (20–30 — monitoramento diário/semanal)
        ↓
MÉTRICAS DE DIAGNÓSTICO (as que explicam variações nos KPIs)
```

---

## KPIs por etapa do funil AARRR

### Aquisição

| KPI | Fórmula | Periodicidade |
|---|---|---|
| **CAC (Custo de Aquisição)** | Investimento total / Novos clientes | Mensal |
| **CPA por canal** | Gasto no canal / Conversões | Diário / Semanal |
| **ROAS blended** | Receita / Investimento total em mídia | Semanal |
| **CPL (Custo por Lead)** | Gasto / Leads gerados | Diário |
| **Taxa de conversão por fonte** | Conversões / Sessões por fonte | Semanal |

### Ativação

| KPI | O que mede |
|---|---|
| **Taxa de ativação** | % de novos usuários que chegam ao "aha moment" |
| **Time to first value** | Tempo até o usuário obter o primeiro valor |
| **Onboarding completion rate** | % que conclui o fluxo de onboarding |

### Retenção

| KPI | Fórmula |
|---|---|
| **Retenção D1 / D7 / D30** | Usuários que voltaram após 1, 7, 30 dias / Total de novos usuários |
| **Churn rate** | Clientes perdidos no período / Clientes no início do período |
| **NPS (Net Promoter Score)** | % Promotores − % Detratores |
| **DAU / MAU** | Usuários ativos diários / mensais |
| **Stickiness** | DAU / MAU |

### Receita

| KPI | Fórmula |
|---|---|
| **MRR / ARR** | Receita recorrente mensal / anual |
| **LTV (Lifetime Value)** | Ticket médio × Frequência × Tempo de vida do cliente |
| **LTV / CAC** | Saúde do negócio — meta: > 3x |
| **ARPU** | Receita total / Usuários ativos |
| **Ticket médio (AOV)** | Receita / Pedidos |
| **Taxa de recompra** | Clientes que compraram 2x+ / Total |

### Referral

| KPI | O que mede |
|---|---|
| **K-factor** | Usuários gerados por indicação por usuário existente |
| **Taxa de convite** | % de usuários que indicam |
| **Conversão de indicação** | % de convidados que se cadastram |

---

## OKR — conectando KPIs a objetivos

**OKR (Objectives and Key Results)** conecta a ambição estratégica a métricas mensuráveis:

```
OBJECTIVE: Tornar-nos o e-commerce favorito de moda feminina no Brasil

  KR1: Aumentar taxa de recompra de 25% para 40% até Q4
  KR2: Reduzir churn de clientes ativos de 8% para 5%/mês
  KR3: Elevar NPS de 42 para 65 pontos
```

---

## Métricas por tipo de negócio

### E-commerce

| Métrica | Meta saudável |
|---|---|
| Taxa de conversão | 1–3% |
| Taxa de abandono de carrinho | < 65% |
| Taxa de recompra | > 30% em 90 dias |
| ROAS | > 3x |
| LTV / CAC | > 3x |

### SaaS

| Métrica | Meta saudável |
|---|---|
| MRR growth | > 10% MoM (early stage) |
| Churn mensal | < 2% |
| NRR (Net Revenue Retention) | > 100% |
| CAC payback | < 12 meses |
| Trial-to-paid conversion | > 15% |

### App Mobile

| Métrica | Meta saudável |
|---|---|
| Retenção D1 | > 40% |
| Retenção D7 | > 20% |
| Retenção D30 | > 10% |
| DAU / MAU (stickiness) | > 20% |
| Rating na loja | > 4,2 estrelas |

---

## Anti-padrões frequentes

1. **Vanity metrics.** Seguidores, curtidas, impressões — métricas que sobem mas não provam valor nem guiam decisão. Toda métrica deve ser acionável: "se isso cair, o que mudamos?"

2. **Métricas demais.** Dashboard com 80 KPIs não tem KPI — tem ruído. Máximo 5–7 métricas por área, revisadas com frequência definida.

3. **Medir sem cadência de revisão.** Métrica que não é revisada em reunião regular com ação associada é decoração. Cadência semanal de KPIs operacionais, mensal de KPIs estratégicos.

4. **Confundir correlação com causalidade.** "Vendas aumentaram na semana que rodamos a campanha" pode ser coincidência. Experimentos controlados (holdout, geo-split) provam causalidade.

---

## Conexões no vault

- [[1 - Growth Hacker]] — KPIs guiam os experimentos de growth
- [[2 - Coleta e Tratamento de Dados]] — dados tratados geram as métricas
- [[4 - Visualização de Dados]] — KPIs precisam ser visualizados para serem usados
- [[3 - Central de Custos Mídia On]] — KPIs financeiros do mix de mídia
- [[CMO]] — CMO responde pelos KPIs de marketing
