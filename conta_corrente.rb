require_relative 'Contas'

class Corrent < Conta
  attr_accessor :limite

  def initialize(numero, titular,saldo,limite)
    super(numero, titular, saldo)
    @limite = limite
  end

  def sacar(valor)
    if (saldo + limite) >= valor
      @saldo -= valor
    else
      puts 'saldo insuficiente'
    end 
  end

end
