---
title: "4 - Visualização de Dados"
aliases:
  - Visualização de Dados
  - Data Visualization
  - Dashboard
  - BI
  - Looker Studio
tags:
  - growth
  - dados
  - visualização
  - dashboard
  - business-intelligence
created: 2026-05-24
status: 🌱 seedling
dg-publish: true
---

[[3 - Coleção de Métricas e KPIs]]    [[2 - Coleta e Tratamento de Dados]]    [[1 - Growth Hacker]]

# 4 — Visualização de Dados

> [!info] Conceito central
> **Visualização de dados** é a camada que transforma números em decisões. Um dado correto mas mal visualizado não é usado — fica no warehouse. Um dashboard bem construído coloca a informação certa na frente de quem precisa dela, no momento certo, com a frequência adequada. O objetivo não é "fazer gráfico bonito" — é reduzir o tempo entre dado e ação.

---

## Cadência de visualização

| Frequência | O que monitorar | Audiência |
|---|---|---|
| **Diária** | Gasto de mídia, CPA do dia, pedidos, receita | Time de mídia e operações |
| **Semanal** | KPIs de canal, retenção, funil de conversão | Gestores de marketing e produto |
| **Mensal** | KPIs estratégicos, LTV/CAC, NPS, MRR | Liderança e C-suite |
| **Trimestral** | OKRs, tendências de mercado, cohort analysis | Board e planejamento |
| **Anual** | North Star, crescimento YoY, benchmarks | Estratégia e investidores |

---

## Ferramentas de visualização

| Ferramenta | Perfil | Destaque |
|---|---|---|
| **Looker Studio (Google)** | Gratuito — PME e scale-ups | Integração nativa com GA4, Google Ads e BigQuery |
| **Power BI (Microsoft)** | Mid-market e enterprise | Poderoso, integra com todo ecossistema Microsoft |
| **Tableau** | Enterprise | Padrão em grandes empresas — visual e análise avançada |
| **Metabase** | Open-source — times técnicos | Self-hosted, SQL direto no browser |
| **Looker (Google Cloud)** | Enterprise cloud | LookML — modelo semântico centralizado |
| **Grafana** | Engenharia e operações | Monitoramento em tempo real, alertas |
| **Redash** | Open-source | SQL + visualização simples |

---

## Anatomia de um bom dashboard

| Elemento | Boas práticas |
|---|---|
| **Título e contexto** | Data de atualização, período analisado, fonte dos dados |
| **Métricas de destaque (scorecards)** | 3–5 KPIs principais no topo — com comparativo anterior |
| **Tendência temporal** | Série histórica — revela sazonalidade e anomalias |
| **Drill-down** | Possibilidade de detalhar por canal, produto, região |
| **Filtros** | Período, segmento, canal — interatividade |
| **Alertas** | Indicação visual (vermelho/amarelo/verde) quando KPI foge da meta |

---

## Tipos de gráfico e quando usar

| Gráfico | Melhor para |
|---|---|
| **Linha** | Tendência ao longo do tempo (vendas diárias, retenção) |
| **Barra** | Comparação entre categorias (ROAS por canal) |
| **Scorecard / KPI card** | Valor único com comparativo (MRR atual vs. mês anterior) |
| **Pizza / Donut** | Composição — máximo 4–5 fatias | 
| **Tabela** | Dados detalhados que precisam de precisão numérica |
| **Funil** | Etapas sequenciais de conversão |
| **Scatter plot** | Correlação entre duas variáveis |
| **Mapa de calor (heatmap)** | Comportamento por dia/hora ou por região |

> [!warning] Evite gráficos de pizza com muitas fatias
> Mais de 5 fatias tornam o gráfico ilegível. Use barra horizontal para comparações com muitas categorias.

---

## Dashboard de marketing — estrutura sugerida

### Visão diária (operacional)
- Gasto total de mídia do dia vs. meta de budget
- Receita / pedidos do dia
- CPA blended do dia
- Alertas de anomalia por canal

### Visão semanal (tática)
- ROAS e CPA por canal (7 dias)
- Funil de conversão (sessões → leads/pedidos)
- Retenção da coorte da semana
- Top campanhas e bottom campanhas

### Visão mensal (estratégica)
- LTV / CAC por canal de aquisição
- MRR / ARR e crescimento MoM
- NPS e churn
- Budget executado vs. planejado
- OKR progress

---

## Anti-padrões frequentes

1. **Dashboard que ninguém abre.** Se o dashboard não está na rotina (reunião semanal, Slack automatizado, email diário), ele não existe na prática. Automação de envio garante uso.

2. **Muitos gráficos, poucas conclusões.** Dashboard não é relatório de auditoria — é ferramenta de decisão. Começar pelo "qual decisão esse dashboard suporta?" e construir só o que responde essa pergunta.

3. **Dados sem contexto.** "CPA de R$ 45" não diz nada sem saber se a meta é R$ 40 ou R$ 80, se é o histórico de melhor ou pior semana. Sempre mostrar comparativo: vs. semana anterior, vs. meta, vs. mesmo período do ano anterior.

4. **Atualização manual de planilha.** Dashboard que depende de alguém copiar dados toda semana falha quando a pessoa está de férias ou esquece. Automatizar a coleta via API é prioritário.

---

## Conexões no vault

- [[3 - Coleção de Métricas e KPIs]] — KPIs que o dashboard visualiza
- [[2 - Coleta e Tratamento de Dados]] — dados tratados que alimentam o BI
- [[3 - Central de Custos Mídia On]] — dashboard financeiro do mix de mídia
- [[1 - Growth Hacker]] — visualização de experimentos e funil AARRR
