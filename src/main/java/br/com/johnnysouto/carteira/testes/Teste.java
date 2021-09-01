package br.com.johnnysouto.carteira.testes;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import br.com.johnnysouto.carteira.modelo.Transacao;

public class Teste {

	public static void main(String[] args) {
		Transacao t1 = new Transacao();
		
		t1.setTicker("ITSA4");
		t1.setPreco(new BigDecimal("10.00"));
		t1.setQuantidade(100);
		t1.setData(LocalDate.now());
		t1.setTipo("Compra");
		
		System.out.println(t1.getTicker());
		System.out.println(t1.getPreco());
		System.out.println(t1.getQuantidade());
		System.out.println(t1.getData().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
		System.out.println(t1.getTipo() );
		
		System.out.println(0.3 + 0.3 + 0.3);
		
		Transacao t2 = new Transacao("ITUB4", new BigDecimal("38.90"), 100, LocalDate.now(), "Compra");
		
		System.out.println(t2);

	}

}
