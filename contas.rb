
require_relative 'cliente'

class Conta
  attr_reader :numero, :titular
  attr_accessor :saldo

  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end

  def sacar(valor)
    if saldo >= valor
      @saldo -= valor
    else
      puts 'saldo insuficiente'
    end 
  end

  def depositar(valor)
    @saldo += valor
  end

  def transferir(cnt_destino, valor)
    if saldo >= valor 
      sacar(valor)
      cnt_destino.depositar(valor)
    else
      puts 'saldo insuficiente'
    end
  end

end
