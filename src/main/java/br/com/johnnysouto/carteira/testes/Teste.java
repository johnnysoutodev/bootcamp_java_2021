package br.com.johnnysouto.carteira.testes;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import br.com.johnnysouto.carteira.modelo.Transacao;

public class Teste {

	public static void main(String[] args) {
		Transacao t = new Transacao();
		
		t.setTicker("ITSA4");
		t.setPreco(new BigDecimal("10.00"));
		t.setQuantidade(100);
		t.setData(LocalDate.now());
		t.setTipo("Compra");
		
		System.out.println(t.getTicker());
		System.out.println(t.getPreco());
		System.out.println(t.getQuantidade());
		System.out.println(t.getData().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
		System.out.println(t.getTipo() );
		
		System.out.println(0.3 + 0.3 + 0.3);

	}

}
