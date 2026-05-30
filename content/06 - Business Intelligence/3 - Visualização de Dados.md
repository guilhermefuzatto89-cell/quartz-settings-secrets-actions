---
title: "3 - Visualização de Dados"
aliases:
  - Visualização de Dados
  - Data Visualization
  - Dashboards
  - Looker Studio
  - Power BI
  - Storytelling de Dados
tags:
  - business-intelligence
  - visualização
  - dashboard
  - lookerstudio
  - powerbi
  - storytelling
created: 2026-05-29
status: 🌱 seedling
dg-publish: true
---

[[0 - Business Intelligence Manager|⬅️ Voltar para o BI Manager]]

# 📊 3 — Visualização de Dados

> [!info] Conceito Central
> **Visualização de Dados (Data Viz)** é a representação gráfica de informações e dados modelados. Utilizando elementos visuais como gráficos, mapas e tabelas, o Data Viz facilita a identificação de padrões, tendências e outliers em conjuntos de dados operacionais, tornando as informações acessíveis para diferentes perfis da empresa.

---

## 📈 Tipos de Dashboards: Operacionais vs. Executivos

Um dos erros mais comuns de BI é tentar criar um único dashboard que sirva para toda a empresa. O design deve ser adaptado ao público-alvo:

### 1. Dashboards Operacionais (Táticos)
Destinados aos analistas e gerentes que precisam acompanhar o dia a dia e tomar decisões rápidas sobre campanhas, campanhas ativas, orçamentos diários ou erros no site.
* **Público:** Analistas de Tráfego (Mídia), Analistas de SEO, Gerentes de CRM.
* **Foco:** Granularidade, dados em tempo real ou D-1 (dia anterior), detalhamento por campanha, palavra-chave ou produto.
* **Ferramenta típica:** Looker Studio (antigo Google Data Studio) pela facilidade de conectar e filtrar dados rapidamente.
* **Exemplo:** Dashboard de conversão de funil de vendas por canal de tráfego de ontem.

### 2. Dashboards Executivos (Estratégicos)
Destinados à diretoria e C-Level, focados em grandes tendências, saúde geral da empresa e progresso em relação às metas anuais ou trimestrais (OKRs).
* **Público:** [[04 - Organização & Time (Office)/CEO|CEO]], [[04 - Organização & Time (Office)/CMO|CMO]], [[04 - Organização & Time (Office)/CGO|CGO]] (Diretoria de Growth).
* **Foco:** Visão macro, tendências mensais/trimestrais, dados consolidados financeiros e operacionais (LTV, CAC, Receita Líquida, Margem de Contribuição).
* **Ferramenta típica:** Power BI ou Looker Enterprise, pela robustez em governança de dados e tratamento de dados complexos.
* **Exemplo:** Relatório mensal de Cohorts e evolução da relação LTV/CAC.

---

## 🎨 Boas Práticas de UX/UI e Design para Dashboards

Dashboards excelentes devem ser fáceis de ler sem necessidade de explicações adicionais:

1. **Hierarquia Visual (Layout em F):**
   * Coloque os principais KPIs consolidados (Scorecards) no topo esquerdo da página — é onde o olho humano inicia a leitura.
   * Coloque as quebras e gráficos de tendências temporais no meio da página.
   * Tabelas detalhadas e dados granulares devem ficar na parte inferior.

2. **Escolha Correta de Gráficos:**
   * **Tendência ao longo do tempo:** Gráficos de Linha (evite gráficos de barra para séries temporais longas).
   * **Comparação de categorias simples:** Gráficos de Barra (horizontal para nomes longos, vertical para nomes curtos).
   * **Composição de partes (Participação):** Gráficos de Barra Empilhada (evite gráficos de pizza com mais de 3 fatias).
   * **Funil de Conversão:** Gráficos de Funil ou Barras Horizontais ordenadas para mostrar o drop-off (perda) em cada etapa.

3. **Uso Estratégico de Cores:**
   * Use paletas de cores neutras e corporativas (como cinzas e azuis escuros) para os dados normais.
   * Reserve cores vibrantes (como vermelho ou laranja) apenas para destacar pontos de atenção (ex: CAC acima da meta).
   * Mantenha consistência de cores: se o canal "Meta Ads" é verde em um gráfico, ele deve ser verde em todos os outros gráficos do relatório.

---

## 📖 Storytelling com Dados (Data Storytelling)

Storytelling é a habilidade de traduzir números brutos em uma narrativa de negócios clara:
* **Não mostre apenas o gráfico, explique o contexto:** Use caixas de texto com anotações explicativas no dashboard (ex: *"A queda de conversão na semana 14 ocorreu devido a uma instabilidade no gateway de pagamento no dia 04/04"*).
* **Foque na Ação:** Cada painel de dados deve responder a perguntas práticas. Se uma métrica cai abaixo do esperado, o dashboard deve indicar qual etapa do processo operacional precisa de investigação imediata.

---

## 🚫 Anti-padrões de Visualização

* **Dashboard Sem Filtros:** Forçar o usuário a ver todas as informações globais sem permitir segmentar por data, canal ou categoria de produto.
* **Poluição Visual (Chartjunk):** Usar efeitos 3D em gráficos, muitas bordas escuras, sombras excessivas ou fundos coloridos que dificultam a leitura dos dados reais.
* **Falta de Documentação:** Deixar de explicar o que significa cada métrica personalizada (ex: o que é considerado um "Lead Qualificado" no dashboard).

---

## 🔗 Conexões Importantes
* [[2 - Modelagem de Dados|Modelagem de Dados]] — O dashboard só é confiável se a modelagem por trás dele estiver correta.
* [[03 - Growth Hacking & Dados/4 - Visualização de Dados|Moc de Visualização]] — Os layouts antigos de visualização de experimentos do time de growth.
* [[Google|1 - Google]] — Looker Studio como a ferramenta primária de exibição de dados operacionais.
