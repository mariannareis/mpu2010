def calcula_notas_mpu(cargo, nota)

  um_por_um_sem_virgulas = cargo.split("/").to_s.split(",")
  itera = 1
  x = 0
  nomes = []
  notas_objetivas = []
  notas_discursivas_sujas = []
  notas_discursivas_limpas = []
  notas_finais = []
  @resultado = 0

  while itera < um_por_um_sem_virgulas.size do
    nomes << um_por_um_sem_virgulas[itera]
    notas_objetivas << um_por_um_sem_virgulas[itera + 1]
    notas_discursivas_sujas << um_por_um_sem_virgulas[itera + 2]
    itera += 3
  end

  discursivas = notas_discursivas_sujas.to_s.split(' ')

  while x < discursivas.size do
    notas_discursivas_limpas << discursivas[x]
    x = x + 2
  end

  for h in (0...notas_discursivas_limpas.size) do
    notas_finais << notas_discursivas_limpas[h].to_f + notas_objetivas[h].to_f
  end

  for g in (0...notas_finais.size)
    if notas_finais[g] >= nota
      if notas_discursivas_limpas[g].to_f >= 5
        puts notas_finais[g].to_s + nomes[g].to_s
        @resultado += 1
      end
    end
  end
end

puts "INFORME AQUI O RESULTADO COMPLETO DO SEU CARGO:"
resultado_do_seu_cargo = gets.chomp.to_s

puts "INFORME AQUI A SUA NOTA FINAL (EXEMPLO: 102.06):"
sua_nota_final = gets.chomp.to_f

puts "Colocados anteriores a você: \n"
puts calcula_notas_mpu(resultado_do_seu_cargo, sua_nota_final)
puts "\n Sua Colocação: " + @resultado.to_s
puts "\n\n\n\n"

