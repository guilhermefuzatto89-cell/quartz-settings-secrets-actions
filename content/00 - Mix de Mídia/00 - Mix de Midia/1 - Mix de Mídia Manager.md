---
title: 1 - Mix de Mídia Manager
aliases:
  - Mix de Mídia
  - Media Mix
  - Atribuição de Mídia
  - Mix de Canais
tags:
  - growth
  - aquisição
  - mix-de-midia
  - atribuição
  - canais
created: 2026-05-24
status: 🌱 seedling
dg-publish: true
---

[[1.4- SEM]]    [[1.3 - SEO]]    [[1.5 - Social Ads]]    [[1.9 - Deep Ads - Programática]]    [[3 - Central de Custos Mídia On]]    [[4 - Traqueamento]]

# 1 — Mix de Mídia Manager

> [!info] Conceito central
> **Mix de Mídia** é a combinação estratégica de canais e formatos utilizados para distribuir mensagens publicitárias e gerar conversões. **Atribuição** é o processo de identificar quais canais contribuíram para uma conversão e qual peso cada um recebe. Em 2026, com o fim dos cookies de terceiros e o domínio do Data-Driven Attribution no GA4, atribuição deixou de ser configuração técnica e se tornou decisão estratégica.

---

## Canais do Mix

| Canal | Nota |
|---|---|
| **SEM — Search** | [[1.4- SEM]] — Google Ads e Bing Ads |
| **SEO** | [[1.3 - SEO]] — orgânico e Search Console |
| **Social Ads** | [[1.5 - Social Ads]] — Meta, TikTok, YouTube, LinkedIn |
| **Programática** | [[1.9 - Deep Ads - Programática]] — RTB, DSP, SSP |
| **Tradicional** | [[1.8- Tradicional Ads]] — TV, rádio, OOH, DOOH |
| **Email & CRM** | [[1.1 - Email & CRM]] — lifecycle marketing |
| **WhatsApp & Mensageria** | [[1.2 - WhatsApp & Mensageria]] — mensageria direta |
| **Influência** | [[1.7 - Influência]] — creators e UGC |
| **Afiliados** | [[1.6 - Afiliados]] — CPA e revenue share |
| **Referral** | [[1.3.2 - Referral]] — indicação de clientes |

---

## Contexto 2026 — por que a atribuição mudou

Com cookies de terceiros em extinção, navegadores e sistemas operacionais restringindo rastreamento, e regulamentações (LGPD, GDPR) definindo o que pode ser coletado, o GA4 removeu todos os modelos baseados em regras (linear, time-decay, position-based) e tornou o **Data-Driven Attribution (DDA)** o padrão único. Quem usa GA4 hoje usa DDA — quer saiba ou não.

A literatura atual converge em **três camadas que trabalham juntas**:

| Camada | Modelo | Frequência | Uso |
|---|---|---|---|
| **Tática** | DDA no GA4 + plataformas | Diária | Otimização de campanha, ajuste de lance |
| **Estratégica** | MMM (Media Mix Modeling) | Trimestral | Alocação de budget entre canais |
| **Validação** | Incrementalidade / Geo Lift | Ad hoc | Calibrar os outros dois, validar canais grandes |

> [!tip] Quem leva atribuição a sério roda pelo menos duas camadas em paralelo
> DDA sozinho otimiza para correlação. MMM sozinho é lento demais para campanha. Incrementalidade valida se o gasto é causal — não apenas associado.

---

## As 15 Famílias de Atribuição

### Família 1 — Regra Única (Single-Touch)

| Modelo | Lógica | Quando usar | Limitação |
|---|---|---|---|
| **1. Last Click** | 100% ao último toque antes da conversão | Ciclos curtos, e-commerce de impulso | Ignora awareness e nurturing |
| **2. First Click** | 100% ao primeiro toque | Análise de canais de topo de funil | Desvaloriza o que fecha a venda |
| **3. Last Non-Direct Click** | Último canal identificável (descarta "direto") | Remover ruído de tráfego direto | Ainda ignora touchpoints anteriores |
| **4. Last Adwords Click** | Último clique Google Ads | Dentro do ecossistema Google | Irrelevante fora do Google |
| **5. View-Through** | Crédito para impressão sem clique | Display e vídeo programático | Controverso — ver ≠ ser influenciado |

### Família 2 — Multi-Touch por Regra

| Modelo | Lógica | Quando usar |
|---|---|---|
| **6. Linear** | Crédito igual entre todos os touchpoints | Visão democrática — ciclos médios |
| **7. Time Decay** | Mais crédito para touchpoints próximos da conversão | Ciclos curtos, datas comerciais |
| **8. U-Shape / Position-Based** | 40% primeiro + 40% último + 20% meio | Ciclos moderados com awareness e conversão relevantes |
| **9. W-Shape** | 30% primeiro + 30% lead + 30% oportunidade | B2B com funil longo |
| **10. Z-Shape (Full Path)** | 4 pontos: primeiro, lead, oportunidade, fechamento | B2B muito longo, nutrição complexa |

### Família 3 — Algorítmico e Causal

#### 11. Data-Driven Attribution (DDA)
Machine learning analisa **caminhos convertidos vs. não convertidos** e distribui crédito conforme contribuição real observada. Padrão do GA4 desde 2023.

> [!warning] DDA exige volume mínimo
> Sem **400+ conversões/mês** no evento-chave e **20.000 conversões totais** na janela de lookback, o GA4 reverte silenciosamente para last-click sem avisar.

#### 12. MMM — Media Mix Modeling
Modelo estatístico (regressão multivariada) sobre dados agregados históricos. Mede canais on e offline (TV, rádio, OOH) e fatores externos como sazonalidade e concorrência.

| Aspecto | Detalhe |
|---|---|
| **Visão** | Macro, top-down |
| **Granularidade** | Baixa — nível de canal, não de campanha |
| **Refresh** | Mensal / trimestral |
| **Custo** | Alto — exige cientistas de dados ou ferramentas especializadas |

#### 13. MTA — Multi-Touch Attribution
Visão bottom-up, jornada individual. Alta granularidade — mas fortemente comprometida em 2026 pelo fim dos cookies.

#### 14. Incrementalidade / Lift Test
A pergunta muda: não "quem recebeu crédito?" mas **"o que teria acontecido sem o anúncio?"**

| Variante | Como funciona |
|---|---|
| **Geo Lift / Geo Holdout** | Pausa em uma região, mantém em outra equivalente — padrão-ouro atual |
| **PSA Test** | Grupo controle vê anúncio de serviço público no lugar do criativo |
| **Synthetic Control / DiD** | Modelos estatísticos criam "grupo controle virtual" |

> [!warning] Conflito de interesse fundamental
> Usar dados de conversão da própria Meta, Google ou TikTok para medir se os anúncios deles são incrementais é inerentemente tendencioso. Testes independentes são necessários.

#### 15. Shapley Value (Teoria dos Jogos)
Baseia-se na teoria dos jogos de Lloyd Shapley (Nobel 2012). Aloca crédito pela média da contribuição marginal de cada canal em todas as ordenações possíveis. Satisfaz quatro axiomas de justiça: eficiência, simetria, dummy e aditividade. É o método matemático por trás do DDA original do Google Analytics.

---

## Stack de Ferramentas de Atribuição 2026

### Camada 1 — Plataformas Nativas (gratuitas)

| Ferramenta | Destaque |
|---|---|
| **GA4** | Baseline obrigatório — DDA por padrão, BigQuery export |
| **Meta CAPI** | Server-side — recupera 20–40% de conversões perdidas pelo iOS |
| **Google Enhanced Conversions** | Equivalente Meta CAPI para Google Ads |
| **TikTok / LinkedIn / Pinterest APIs** | Cada walled garden tem seu server-side |

### Camada 2 — Server-Side e CAPI Orchestration

| Ferramenta | Destaque |
|---|---|
| **GTM Server-Side** | Flexível, gratuito — exige infraestrutura GCP |
| **Stape.io** | Hospedagem gerenciada de GTM server-side |
| **Elevar** | Especializado em Shopify — CAPI nativo |
| **Segment / RudderStack** | CDPs — centralizam eventos e distribuem para todas as plataformas |

### Camada 3 — Atribuição DTC / E-commerce

| Ferramenta | Foco | Preço aprox. |
|---|---|---|
| **Triple Whale** | Shopify < $5M/ano — UX e dashboards | A partir de $129/mês |
| **Northbeam** | Alto investimento — MTA + incrementalidade | A partir de $1.500/mês |
| **Rockerbox** | Cross-channel + offline (TV, OOH, podcast) | $150–$300/mês |
| **Hyros** | Infoprodutos e high-ticket | $99–$230/mês |
| **SegmentStream** | ML attribution + geo holdouts automatizados | Sob consulta |

### Camada 4 — Atribuição B2B / Enterprise

| Ferramenta | Destaque |
|---|---|
| **Dreamdata** | Atribuição B2B — jornada do anônimo até o CRM |
| **Bizible (Adobe)** | Padrão histórico enterprise, integrado ao Marketo |
| **Heeet** | CRM-nativo — Salesforce e HubSpot |
| **Ruler Analytics** | Lead-gen com call tracking |

### Camada 5 — Media Mix Modeling (MMM)

| Ferramenta            | Tipo                 | Destaque                                             |
| --------------------- | -------------------- | ---------------------------------------------------- |
| **Robyn (Meta)**      | Open source — R      | Ridge regression com otimização evolutiva            |
| **Meridian (Google)** | Open source — Python | Bayesiano — lançado 2024, sucessor do LightweightMMM |
| **PyMC-Marketing**    | Open source — Python | Bayesiano altamente customizável                     |
| **Recast**            | Comercial            | MMM contínuo Bayesiano — refresh semanal             |
| **Haus**              | Comercial            | MMM + incrementalidade integrados                    |
| **Measured**          | Comercial            | Cross-channel — inclui TV, podcast, DOOH             |

### Camada 6 — Incrementalidade

| Ferramenta | Destaque |
|---|---|
| **Meta GeoLift** | Open source — geo holdout — gratuito, exige R/Python |
| **Haus** | Geo holdout como serviço gerenciado |
| **LiftLab** | Holdout-based para canais específicos |
| **Google / Meta Lift Studies** | Nativos — sujeitos a conflito de interesse |

---

## Matriz de decisão por cenário

| Cenário | Stack recomendada |
|---|---|
| **DTC Shopify < R$ 5M/ano** | GA4 + Meta CAPI + Triple Whale ou AdBeacon |
| **DTC R$ 5M–R$ 25M** | + Elevar (server-side) + Northbeam ou Rockerbox |
| **DTC R$ 25M+** | + Haus/Measured (incrementalidade) + Recast (MMM contínuo) |
| **B2B SaaS** | GA4 + Dreamdata ou Heeet (CRM-native) |
| **Lead-gen / serviços locais** | GA4 + Ruler Analytics (call tracking) |
| **Brand com forte offline** | Rockerbox + Robyn/Meridian (MMM) + incrementalidade |
| **Enterprise / CPG global** | Analytic Partners + Measured + clean rooms (ADH, AMC) |

---

## Anti-padrões frequentes

1. **Somar o ROAS de cada plataforma e acreditar no total.** Meta, Google e TikTok se auto-atribuem a mesma conversão — a soma sempre dá mais que a receita real. GA4 com atribuição independente é o árbitro neutro.

2. **Usar DDA sem volume suficiente.** Sem 400+ conversões/mês no GA4, o modelo reverte silenciosamente para last-click. Muitos times operam com DDA no nome e last-click na prática.

3. **Ter MMM com refresh trimestral e tentar usá-lo para decisão semanal.** MMM é instrumento de alocação estratégica — não de otimização tática. Usar para o propósito errado gera paralisia ou decisões equivocadas.

4. **Comprar ferramenta de atribuição antes de ter framework de medição.** Ferramenta sem clareza sobre "o que medir, com que frequência e quem age sobre o output" é dashboard que ninguém usa.

5. **Tool bloat — 4 ferramentas mostrando 4 números diferentes.** Ter múltiplos dashboards com números conflitantes é pior do que ter 1 ferramenta consistente. Regra: uma ferramenta por camada, no máximo.

6. **Ignorar a lookback window.** Se a janela de atribuição é 30 dias mas o ciclo de venda médio é 60+, touchpoints da semana 5 ficam invisíveis — o canal de awareness perde crédito sistematicamente.

---

## Conexões no vault

- [[1.4- SEM]] — search como canal de intenção direta
- [[1.3 - SEO]] — orgânico complementar ao paid search
- [[1.5 - Social Ads]] — social como canal de awareness e prospecting
- [[1.9 - Deep Ads - Programática]] — programática e RTB
- [[1.8- Tradicional Ads]] — TV, rádio, OOH — canais offline no mix
- [[1.1 - Email & CRM]] — lifecycle e retenção
- [[1.7 - Influência]] — criadores como canal de aquisição
- [[1.6 - Afiliados]] — performance com risco compartilhado
- [[1.3.2 - Referral]] — indicação como loop de crescimento
- [[3 - Central de Custos Mídia On]] — budget e CPA real por canal
- [[4 - Traqueamento]] — infraestrutura que alimenta todos os modelos de atribuição
- [[2 - Ambientes de Conversão de Valor]] — onde o tráfego converte
- [[3 - Coleção de Métricas e KPIs]] — KPIs que guiam a alocação do mix
