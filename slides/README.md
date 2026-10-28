# Slides da videoaula — Capítulo 21

Apresentação (Quarto/reveal.js) que acompanha o `Roteiro de Gravação - Cap21 Visualização de Dados.docx`.
Os 21 slides seguem, na ordem, o mapa de slides do roteiro, e as notas do apresentador contêm
o texto falado de cada bloco, com o minuto correspondente.

## Como renderizar

```bash
quarto render slides/slides.qmd
```

O arquivo `slides.html` é autocontido (imagens embutidas): pode ser aberto direto do disco, sem servidor.

## Como usar na gravação

| Ação | Tecla |
|:--|:--|
| Próximo / anterior | `→` / `←` |
| Ver as notas do apresentador | `S` (abre janela do apresentador com o tempo e a fala) |
| Tela cheia | `F` |
| Visão geral dos slides | `O` |
| Ir para um slide específico | `G` ou `#/12` na URL |

Para gravar em 1080p, abra o HTML em tela cheia e capture a janela — o deck foi dimensionado em 1600×900
(16:9), com fontes grandes para leitura em vídeo.

## Estrutura

- `slides.qmd` — conteúdo, gráficos (gerados a partir de `../data/`) e notas do apresentador.
- `custom.scss` — identidade visual (cores do manual de gravação: navy `#1B2A3A`, teal `#008CA6`).
- `slides_cache/` e `slides_files/` — gerados pelo Quarto (não versionados).

Os gráficos são reprodutíveis: rodam sobre a base `SUS-Data-Mortalidade-RJ_2015-2018.rds`
(689.048 registros), a mesma usada no capítulo.
