---
title: "3 - Central de Custos Mídia On"
aliases:
  - Central de Custos
  - Budget de Mídia
  - Alocação de Verba
  - Mix de Investimento
tags:
  - growth
  - budget
  - custos
  - mix-de-midia
  - financeiro
created: 2026-05-24
status: 🌱 seedling
dg-publish: true
---

[[1 - Mix de Mídia Manager]]    [[CFO]]    [[4 - Traqueamento]]

# 3 — Central de Custos Mídia On

> [!info] Conceito central
> A **Central de Custos de Mídia** é o hub de controle financeiro das campanhas de marketing — onde todos os investimentos em canais pagos são registrados, acompanhados e otimizados. O objetivo é garantir que cada real investido seja rastreável, que o CPA/ROAS por canal seja monitorado em tempo real e que o budget seja alocado dinamicamente para os canais com melhor retorno.

Parte de [[1 - Mix de Mídia Manager]].

---

## A equação do CPA de Venda

```
CPA Venda = Mix de Mídia + Ambiente de Conversão + Taxas e Impostos + Outros Custos
                                                                            ÷
                                                                    Total de Vendas
```

Cada componente impacta o custo final de aquisição:

| Componente | O que inclui | Onde controlar |
|---|---|---|
| **Mix de Mídia** | Google Ads, Meta, TikTok, programática, influência | Plataformas de anúncio + planilha mestre |
| **Ambiente de Conversão** | Shopify, VTEX, Magento — taxas da plataforma | [[2.1.2 - E-commerce]] |
| **Taxas de Marketplace** | Comissão do marketplace (15–25%) | [[2.2 - Marketplace]] |
| **Impostos** | ICMS, ISS, PIS, COFINS por produto/serviço | Financeiro / [[CFO]] |
| **Frete** | Custo logístico imputado à aquisição | Operações |
| **Afiliados** | Comissão por venda afiliada | [[1.6 - Afiliados]] |

---

## Estrutura de acompanhamento de budget

| Coluna | Descrição |
|---|---|
| **Canal** | Google Search, Meta, TikTok, Programática, Email, etc. |
| **Budget mensal** | Verba aprovada para o período |
| **Gasto atual** | Acumulado até hoje |
| **% executado** | Gasto / Budget |
| **Impressões** | Total de impressões entregues |
| **Cliques** | Total de cliques |
| **Conversões** | Leads, vendas, instalações — por canal |
| **CPA** | Custo por aquisição no canal |
| **ROAS** | Receita gerada / Investimento |
| **Status** | 🟢 No prazo / 🟡 Atenção / 🔴 Revisar |

---

## Benchmark de distribuição de budget — referência

> [!warning] Estes percentuais são orientações — variam por modelo de negócio, maturidade e objetivos.

| Canal | % típico (performance-first) | % típico (brand-first) |
|---|---|---|
| **SEM (Google/Bing)** | 25–35% | 10–15% |
| **Social Ads (Meta/TikTok)** | 30–40% | 20–30% |
| **Programática** | 5–10% | 15–25% |
| **SEO (ferramentas + conteúdo)** | 5–10% | 5–10% |
| **Email & CRM** | 2–5% | 2–5% |
| **Influência** | 5–15% | 15–25% |
| **Afiliados** | 5–10% | 2–5% |
| **Mídia Tradicional** | 0–5% | 10–30% |

---

## Fontes de dados para o dashboard de custos

| Fonte | Dados que fornece |
|---|---|
| **Google Analytics 4** | Sessões, conversões, atribuição por canal |
| **Meta Ads Manager** | Gasto, alcance, CPM, CPA Meta |
| **Google Ads** | Gasto, cliques, Quality Score, CPA Google |
| **Planilha mestra** | Consolidação manual de canais não conectados |
| **ERP / Financeiro** | Impostos, frete, custo do produto — [[2.4 - ERP]] |
| **MMP (AppsFlyer/Adjust)** | Atribuição mobile — [[1.9.8 - MMP]] |

---

## KPIs de saúde financeira do mix

| KPI | Fórmula | Meta saudável |
|---|---|---|
| **CPA blended** | Total gasto / Total de conversões | Depende do LTV do produto |
| **ROAS blended** | Receita total / Investimento total em mídia | > 3x para e-commerce |
| **CAC payback** | CAC / Margem mensal por cliente | < 12 meses (SaaS), < 6 meses (e-comm) |
| **LTV/CAC ratio** | LTV / CAC | > 3x para negócio saudável |
| **Budget burn rate** | Gasto acumulado / Budget do mês | 95–105% ao final do mês |

---

## Anti-padrões frequentes

1. **Gerenciar budget in silos por canal.** Cada plataforma reporta seu ROAS de forma otimista (auto-atribuição). Sem visão consolidada, o CPA blended é desconhecido e o budget é mal alocado.

2. **Não incluir custos operacionais no CPA.** Frete, impostos, comissão de marketplace e custo do produto transformam um ROAS de 4x em operação deficitária. CPA de mídia ≠ CPA real.

3. **Budget fixo sem mecanismo de realocação.** Canal com ROAS 8x recebe o mesmo budget que canal com ROAS 1,5x porque o planejamento foi engessado no início do mês. Budget flexível com regra de realocação performa melhor.

4. **Pagar por impressão/clique sem saber o CPA final.** Cada real de mídia deve ser conectável a uma venda ou lead. Campanha sem rastreamento de conversão é despesa, não investimento.

---

## Conexões no vault

- [[1 - Mix de Mídia Manager]] — nota-pai
- [[4 - Traqueamento]] — dados que alimentam o dashboard de custos
- [[2.4 - ERP]] — custos operacionais que compõem o CPA real
- [[2.2 - Marketplace]] — taxas de marketplace que afetam a margem
- [[CFO]] — aprovação de budget e saúde financeira
- [[03 - Growth Hacking & Dados/3 - Coleção de Métricas e KPIs|3 - Coleção de Métricas e KPIs]] — KPIs de marketing conectados ao financeiro
