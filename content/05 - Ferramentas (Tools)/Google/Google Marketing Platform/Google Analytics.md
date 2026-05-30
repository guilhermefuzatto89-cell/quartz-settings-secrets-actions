---
title: "1.2.2 - Google Analytics — Mensuração e Eventos"
aliases:
  - Google Analytics
  - GA4
  - Analytics 360
  - Google Analytics 4
tags:
  - tools
  - google
  - google-analytics
  - analytics
  - traqueamento
created: 2026-05-25
status: 🌿 budding
dg-publish: true
---

[[Google|1 - Google]]    [[4 - Traqueamento|Mídia: Traqueamento & Tags]]    [[Google Marketing Platform|Google Marketing Platform]]

# 1.2.2 — Google Analytics (GA4)

> [!info] Conceito central
> O **Google Analytics 4 (GA4)** é a plataforma de mensuração e análise de dados de próxima geração do Google. Ao contrário do antigo Universal Analytics (baseado em sessões e pageviews), o GA4 possui uma arquitetura flexível baseada exclusivamente em **eventos e parâmetros**, permitindo rastrear de forma unificada as jornadas dos usuários em múltiplos dispositivos e plataformas (Web + iOS + Android).

Parte do ecossistema [[Google|1 - Google]].

---

## 🏢 Arquitetura e Modelagem de Dados no GA4

A estrutura organizacional do GA4 reflete a fusão de canais em um único ecossistema analítico:

```
[Conta Google Analytics]
  └── [Propriedade GA4] (Agrupador central de relatórios)
        ├── [Fluxo de Dados Web] (Site desktop/mobile via gtag.js)
        ├── [Fluxo de Dados iOS] (SDK Firebase iOS)
        └── [Fluxo de Dados Android] (SDK Firebase Android)
```

* **Propriedade (Property):** O contêiner de relatórios principal. Em grandes operações, utiliza-se a versão **GA4 360** (Enterprise) para suporte a subpropriedades e propriedades de visualização detalhada.
* **Fluxo de Dados (Data Stream):** A fonte de dados que alimenta a propriedade. Cada propriedade pode ter múltiplos fluxos (um site e dois apps, por exemplo), consolidando o comportamento do mesmo usuário.

---

## ⚙️ Coleta de Eventos: O Padrão GA4

Cada interação no GA4 é registrada como um **evento**. Eles são classificados em quatro categorias oficiais:

| Categoria | O que é | Exemplos | Configuração |
|---|---|---|---|
| **Coleta Automática** | Eventos capturados nativamente pela tag do GA4. | `first_visit`, `session_start`, `user_engagement` | Automática |
| **Medição Otimizada** | Eventos adicionais capturados na web sem necessidade de código extra. | `page_view`, `scroll` (90%), `click` (saídas), `view_search_results`, `file_download` | Habilitável no console |
| **Eventos Recomendados** | Eventos sugeridos pelo Google para setores específicos (ex: varejo, jogos). | `view_item`, `add_to_cart`, `purchase`, `generate_lead` | Implementação manual |
| **Eventos Personalizados** | Eventos criados pelo anunciante para atender necessidades exclusivas do negócio. | `clique_botao_chat`, `visualizou_banner_home` | Implementação manual |

> [!tip] Parâmetros de Evento
> Cada evento pode carregar até **25 parâmetros** de contexto na versão Standard (ex: o evento `purchase` carrega `value`, `currency`, `transaction_id`). Lembre-se de registrar estes parâmetros como **Dimensões ou Métricas Personalizadas** no console do GA4 para que fiquem disponíveis nos relatórios.

---

## 🆔 Identidade do Relatório (Reporting Identity)

Para unificar a jornada do usuário que interage por diferentes dispositivos, o GA4 calcula a unicidade do usuário utilizando quatro pilares de identidade (do mais prioritário para o menos):

1. **User-ID:** O identificador exclusivo gerado pelo sistema interno (banco de dados/CRM) enviado ao GA4 quando o usuário faz login. É a identidade mais precisa.
2. **Google Signals:** Dados de usuários que fizeram login em contas do Google e ativaram voluntariamente a Personalização de Anúncios. Permite análise cross-device mesmo sem login no seu site.
3. **Device-ID:** O ID do dispositivo físico. Na Web, é o valor armazenado no cookie `_ga` (Client-ID). Em apps móveis, é o ID da instância do app.
4. **Modelagem Comportamental (Behavioral Modeling):** Usada quando o Consent Mode está ativo e o usuário recusa cookies. IA reconstrói estatisticamente a jornada omitida.

> [!important] Espaços de Identidade do Relatório
> É possível alterar o método de cálculo de relatórios a qualquer momento na interface sem alterar a coleta de dados:
> * **Mesclado (Blended):** Usa User-ID, Google Signals, Device-ID e Modelagem.
> * **Observado (Observed):** Usa User-ID, Google Signals e Device-ID (sem IA).
> * **Baseado no dispositivo (Device-based):** Usa apenas o Device-ID (ignora os outros, minimizando amostragem por limitação de privacidade/thresholds).

---

## 🎯 Eventos-Chave (Key Events) vs. Conversões (Conversions)

A partir de 2024, o Google alterou a nomenclatura oficial para alinhar as definições entre o Analytics e o Ads:

* **Eventos-Chave (Key Events):** Ações de alto valor do usuário marcadas no GA4 (ex: preencher formulário, assinar newsletter, compra). Eles servem para medir a eficiência das suas páginas e a navegação dentro do console do GA4.
* **Conversões (Conversions):** O termo agora é exclusivo para ações de conversão de publicidade usadas para otimizar campanhas e lances no Google Ads. Elas são criadas quando você **importa** os Eventos-Chave do GA4 para dentro do Google Ads.

---

## 📡 Integração Avançada e Envio Server-Side (Measurement Protocol)

O **Measurement Protocol do GA4** permite que desenvolvedores enviem dados de interações diretamente de servidores para o Google Analytics por meio de requisições HTTP POST.

* **Quando utilizar:**
  * Transações financeiras offline (vendas físicas em lojas ou via televendas).
  * Estornos, devoluções e cancelamentos de assinaturas que ocorrem no ERP e não no navegador.
  * Interações de usuários em totens físicos, chatbots ou integrados em CRMs.
* **Requisitos:**
  * O envio é feito via HTTP POST para o endpoint oficial:
    `https://www.google-analytics.com/mp/collect?measurement_id=G-XXXXXX&api_secret=YYYYYYYY`
  * O `api_secret` deve ser gerado no console do GA4 (Configurações do Fluxo de Dados Web -> Measurement Protocol).
  * É fundamental enviar o `client_id` (Client-ID original coletado na web) ou `app_instance_id` para que o GA4 consiga consolidar o evento do servidor à sessão web/app do usuário original.

---

## 🔒 Privacidade, Consentimento e Governança

Em 2026, com o endurecimento de leis globais de proteção de dados (LGPD, GDPR) e o fim dos cookies, a conformidade técnica é obrigatória:

### Consent Mode V2 (Modo de Consentimento)
Requisito obrigatório do Google para veicular anúncios personalizados e coletar dados no Google Ads/GMP.
* **Como funciona:** Ajusta dinamicamente a coleta das tags do Google com base no consentimento de cookies dado pelo usuário.
* **Sem consentimento:** As tags operam enviando "pings sem cookies" (pings de dados agregados). O GA4 usa *machine learning* de **modelagem comportamental** para preencher as lacunas de conversão de usuários não consentidos nos relatórios.

### Janela de Retenção de Dados
* **Padrão:** O GA4 vem configurado para reter dados de eventos e usuários por apenas **2 meses**.
* **Recomendação:** Altere manualmente no console para **14 meses** (limite máximo na versão Standard) para permitir análises comparativas ano a ano em relatórios de Exploração.

### 🛡️ Governança de PII (Personally Identifiable Information)
* **Regra Fundamental:** O envio de dados como e-mail, nome, telefone, CPF ou endereço físico sem criptografia/hashing para o GA4 é estritamente proibido pelas políticas do Google.
* **Detecção de PII nativa:** O GA4 conta com um recurso nas configurações do Fluxo de Dados Web que avalia parâmetros de consulta comuns e remove endereços de e-mail e outros termos sensíveis antes que os dados sejam registrados permanentemente.
* **Coleta Granular Regionalizada:** Configuração para desativar a gravação de dados geográficos granulares (cidade) e metadados específicos de dispositivos baseada na localização geográfica do usuário (ex: desativar apenas para usuários localizados na União Europeia).

---

## 📊 Relatórios Padrão vs. Explorações (Explorations)

O console do GA4 separa os relatórios prontos da análise avançada de dados:

* **Relatórios Padrão:** Painéis consolidados sobre ciclo de vida (Aquisição de tráfego, Engajamento, Monetização/Vendas e Retenção).
* **Explorações (Explorations):** O ambiente *ad hoc* para analistas. Permite criar modelos de:
  * **Exploração de Funil:** Medir as etapas de conversão e pontos de abandono do usuário.
  * **Exploração de Caminho:** Visualizar quais páginas e eventos os usuários acionam após entrarem no site.
  * **Análise de Coorte:** Acompanhar a retenção e o comportamento de grupos específicos ao longo do tempo.

---

## 🔄 Integrações e Ativação

O GA4 atua como o cérebro de inteligência de dados, alimentando canais de mídia e ferramentas de visualização:

* **BigQuery Export:** Integração gratuita na versão Standard que exporta todos os eventos brutos diários para o data warehouse GCP. Indispensável para auditorias de atribuição complexas e relatórios personalizados livres de limites de API.
* **Vínculo com Google Ads:** Permite exportar eventos-chave de conversão do GA4 para serem usados como metas de lances (*Smart Bidding*) no Ads, e importar dados de custos de campanhas para avaliar o ROAS.
* **Vínculo com Google Marketing Platform:** Conexão nativa com SA360 e DV360 para compartilhamento direto de audiências qualificadas.

---

## 🚨 Antipadrões no Uso do GA4

1. **Ativar o GA4 sem configurar conversões (Key Events):** O GA4 mede tudo como evento, mas você precisa marcar manualmente quais eventos representam sucesso comercial (ex: `purchase`, `lead_completed`). Sem isso, as estratégias de mídia automática otimizam no escuro.
2. **Depender apenas dos Relatórios Padrão da interface:** Os relatórios pré-definidos do GA4 sofrem com amostragem e limitações de dados agregados. Para decisões críticas, utilize o BigQuery Export ou crie painéis no **Looker Studio**.
3. **Não registrar parâmetros de eventos personalizados:** Criar o evento `lead_source` via código, mas não cadastrar o parâmetro correspondente como dimensão personalizada no painel do GA4, torna a informação invisível nos filtros de relatórios.

---

## 🔗 Conexões no vault

* [[Google|1 - Google — Ecossistema Completo]]
* [[Google Marketing Platform|Google Marketing Platform]] (Analytics 360)
* [[Google ads|Google Ads — Gestão de Campanhas]] (Integração e remarketing)
* [[4 - Traqueamento|4 - Traqueamento]] (Planejamento de UTMs e GTM)
* [[00 - Mix de Mídia/1 - Mix de Mídia Manager|1 - Mix de Mídia Manager]] (Atribuição Data-Driven)
