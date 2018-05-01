#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require "./lucifer"

sessao = Lucifer.new
puts "Faça sua pergunta: "
pergunta = gets.chomp
resposta = sessao.perguntar(pergunta)
puts "Resposta: " + resposta