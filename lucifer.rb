
class Lucifer
  
  def obter_resposta(n)
    respostas = File.open('respostas.txt', 'r')
    return respostas.readlines[n].strip  
  end
end