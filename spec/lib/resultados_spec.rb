require 'rails_helper'
require 'resultados'
require 'spec_helper'

RSpec.describe Resultados, type: :lib do
  describe "Calcula performance" do
    it "com atributos validos" do
      resultado = Resultados.new
      resultado.valor_meta = 10
      resultado.valor_realizado = 20

      expect(resultado.calcula_performance).to eq(2.0)
    end

    it "com valor realizado valido e meta zero" do
      resultado = Resultados.new
      resultado.valor_meta = 0
      resultado.valor_realizado = 20

      expect(resultado.calcula_performance).to eq(0)
    end

    it "com valor realizado valido e meta null" do
      resultado = Resultados.new
      resultado.valor_meta = nil
      resultado.valor_realizado = 20

      expect(resultado.calcula_performance).to eq('NoMethodError')
    end

    it "com valor meta valido e realizado zero" do
      resultado = Resultados.new
      resultado.valor_meta = 10
      resultado.valor_realizado = 0

      expect(resultado.calcula_performance).to eq('Infinity')
    end
  end

  describe "Calcular realizado" do
    it "com valor realizado valido" do
      resultado = Resultados.new
      resultado.valor_performance = 10
      resultado.valor_meta = 20

      expect(resultado.calcula_realizado).to eq(2)
    end

    # @TODO CRIE MAIS TESTES

    describe "Calcular realizado" do
      it "com valor meta e realizado valido" do
        resultado = Resultados.new
        resultado.valor_realizado = 100
        resultado.valor_meta = 10

        expect(resultado.calcula_performance).to eq(10)

      end
    end
  end
end
