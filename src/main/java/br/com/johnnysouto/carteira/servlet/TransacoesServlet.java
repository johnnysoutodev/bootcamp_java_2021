package br.com.johnnysouto.carteira.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.johnnysouto.carteira.modelo.TipoTransacao;
import br.com.johnnysouto.carteira.modelo.Transacao;

@WebServlet("/transacoes")
public class TransacoesServlet extends HttpServlet{
	
	private List<Transacao> transacoes = new ArrayList<>();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Transacao t1 = new Transacao("ITSA4", new BigDecimal("10.00"), 50, LocalDate.now(), TipoTransacao.COMPRA);
		
		Transacao t2 = new Transacao("BBSE3", new BigDecimal("22.80"), 80, LocalDate.now(), TipoTransacao.COMPRA);
		
		Transacao t3 = new Transacao("EGIE3", new BigDecimal("40.00"), 25, LocalDate.now(), TipoTransacao.COMPRA);
		
		Transacao t4 = new Transacao("ITSA4", new BigDecimal("11.20"), 40, LocalDate.now(), TipoTransacao.VENDA);
		
		transacoes.add(t1);
		transacoes.add(t2);
		
		req.setAttribute("transacoes", transacoes);
		
		req.getRequestDispatcher("WEB-INF/jsp/transacoes.jsp").forward(req, resp);
	}

}
