#!/bin/sh

# Inicia o serviço Ollama em background
ollama serve &

# Aguarda o serviço iniciar
sleep 5

# Baixa os modelos necessários
ollama pull aimatch/promptgen:llama32
ollama pull benevolentjoker/nsfwmonika

# Mantém o serviço ativo (espera o processo ollama serve)
wait 