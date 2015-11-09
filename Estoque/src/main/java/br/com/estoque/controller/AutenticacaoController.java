package br.com.estoque.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.estoque.bean.Usuario;
import br.com.estoque.dao.AutenticarDao;

/**
 * @author Alex.Soares
 *
 */
@Controller
public class AutenticacaoController {

	@RequestMapping("/")
	public ModelAndView login() {

		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

	@RequestMapping("home")
	public ModelAndView home() {

		ModelAndView mv = new ModelAndView("home");
		return mv;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/autenticacao/logado")
	public ModelAndView executar(
			@RequestParam(value = "login", required = true) String login,
			@RequestParam(value = "senha", required = true) String senha) {

		Usuario u = new Usuario();
		u.setLogin(login);
		u.setSenha(senha);

		AutenticarDao aut = new AutenticarDao();
		boolean autenticado = aut.autenticar(u);
		ModelAndView mv = new ModelAndView();

		if (autenticado) {
			mv.addObject("usuario", u);
			mv.setViewName("home");
			return mv;
		}

		mv.setViewName("login");
		return mv;
	}
}
