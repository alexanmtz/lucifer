
class Lucifer
  def obter_resposta
    respostas = File.open('respostas.txt', 'r')
    respostas.read
  end
end