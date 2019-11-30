package br.usjt.arqsw.controller;

import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.usjt.arqsw.entity.Municipio;
import br.usjt.arqsw.entity.Represa;
import br.usjt.arqsw.entity.Sistema;
import br.usjt.arqsw.entity.Usuario;
import br.usjt.arqsw.service.MunicipioService;
import br.usjt.arqsw.service.RepresaService;
import br.usjt.arqsw.service.SistemaService;
import br.usjt.arqsw.service.UsuarioService;

@Transactional
@Controller
public class ManterController {
	private UsuarioService usuarioService;
	private RepresaService represaService;
	private SistemaService sistemaService;
	private MunicipioService municipioService;

	@Autowired
	public ManterController(UsuarioService us, RepresaService rs, SistemaService ss, MunicipioService ms) {
		usuarioService = us;
		represaService = rs;
		sistemaService = ss;
		municipioService = ms;
	}

	@RequestMapping("index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("admin_index")
	public String home() {
		return "admin/index";
	}
	
	
	/* USU罵IO */
	@RequestMapping("/cadastrar_usuario")
	public String cadastrarUsuario() {
		return "admin/usuario/CadastrarUsuario";
	}
	
	@RequestMapping("/novo_usuario")
	public String novoUsuario(Model model, Usuario usuario) {
		try {
			usuarioService.inserirUsuario(usuario);
			return "redirect:/listar_usuarios";
		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("/listar_usuarios")
	public String listarUsuarios(Model model) {
		try {
			// TODO C贸digo para carregar os chamados
			List<Usuario> usuarios = usuarioService.listarUsuarios();
			model.addAttribute("usuarios", usuarios);
			
			return "admin/usuario/ListarUsuarios";

		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}

	@RequestMapping("/visualizar_usuario")
	public String visualizarUsuario(@RequestParam int id, @Valid Usuario usuario, BindingResult result, Model model) {
		try {
			// TODO C贸digo para carregar os chamados
			usuario = usuarioService.carregarUsuario(id);
			model.addAttribute("usuario", usuario);
			
			return "admin/usuario/VisualizarUsuario";

		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("/excluir_usuario")
	public ModelAndView excluirUsuario(@RequestParam int id) throws IOException {
		usuarioService.excluirUsuario(id);
		return new ModelAndView("redirect:/listar_usuarios");
	}
	
	@RequestMapping("/editar_usuario")
	public String editarUsuario(@Valid Usuario usuario, Model model) {
		try {
			usuarioService.editarUsuario(usuario);
			return "redirect:/listar_usuarios";
		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("/editar_usuario_pesquisa")
	public String editarUsuarioPesquisa(@RequestParam int id, @Valid Usuario usuario, BindingResult result, Model model) {
		try {
			// TODO C贸digo para carregar os chamados
			usuario = usuarioService.carregarUsuario(id);
			model.addAttribute("usuario", usuario);
			
			return "admin/usuario/EditarUsuario";

		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("fazer_login")
	public String logarConsumidor(Usuario usuario) throws IOException {
		Usuario resposta = usuarioService.loginUsuario(usuario);
		if (resposta == null) {
	    	return "erro";
	    } else {
	    	return "redirect:/admin_index";
	    }   
	}
	
	
	
	/* REPRESA */
	@RequestMapping("/cadastrar_represa")
	public String cadastrarRepresa(Model model) throws IOException {
		List<Sistema> sistemas = sistemaService.listarSistemas();
		model.addAttribute("sistemas", sistemas);
		return "admin/represa/CadastrarRepresa";
	}
	
	@RequestMapping("/nova_represa")
	public String novaRepresa(Model model, Represa represa) {
		try {
			represaService.novaRepresa(represa);;
			return "redirect:/listar_represas";
		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("/listar_represas")
	public String listarRepresas(Model model) {
		try {
			// TODO C贸digo para carregar os chamados
			List<Represa> represas = represaService.listarRepresas();
			model.addAttribute("represas", represas);
			
			return "admin/represa/ListarRepresas";

		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}

	@RequestMapping("/visualizar_represa")
	public String visualizarRepresa(@RequestParam int id, @Valid Represa represa, BindingResult result, Model model) {
		try {
			// TODO C贸digo para carregar os chamados
			represa = represaService.carregarRepresa(id);
			model.addAttribute("represa", represa);
			
			return "admin/represa/VisualizarRepresa";

		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("/excluir_represa")
	public ModelAndView excluirRepresa(@RequestParam int id) throws IOException {
		represaService.excluirRepresa(id);
		return new ModelAndView("redirect:/listar_represas");
	}
	
	@RequestMapping("/editar_represa")
	public String editarRepresa(Represa represa, Model model) {
		try {
			represaService.editarRepresa(represa);
			return "redirect:/listar_represas";
		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("/editar_represa_pesquisa")
	public String editarRepresaPesquisa(@RequestParam int id, @Valid Represa represa, BindingResult result, Model model) {
		try {
			// TODO C贸digo para carregar os chamados
			represa = represaService.carregarRepresa(id);
			model.addAttribute("represa", represa);
			
			return "admin/represa/EditarRepresa";

		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("/buscar_data")
	public String buscarPorData(@RequestParam String nome , @Valid Represa represa, BindingResult result, Model model) throws IOException {
		List<Represa> represas = represaService.buscarPorChave(nome);
		model.addAttribute("represas", represas);
		return "admin/represa/ListarRepresas";
	}
	
	/*@RequestMapping("/relatorio_represa")
	public String buscarPorData(@RequestParam String data , @Valid Represa represa, BindingResult result, Model model) throws IOException {
		List<Represa> represas = represaService.buscarPorChave(data);
		model.addAttribute("represas", represas);
		return "represa/ListarRepresas";
	}*/
	
	@RequestMapping("/relatorio_represa")
	public String gerarRelatorioRepresa(@RequestParam int id, @Valid Represa represa, BindingResult result,
			Model model) {
		try {
			represa = represaService.carregarRepresa(id);
			model.addAttribute("represa", represa);

			return "admin/represa/RelatorioRepresa";

		} catch (IOException e) {
			e.printStackTrace();
			return "Erro";
		}
	}	
			
	/* SISTEMA */
	@RequestMapping("/cadastrar_sistema")
	public String cadastrarSistema(Model model) throws IOException {
		List<Municipio> municipios = municipioService.listarMunicipios();
		model.addAttribute("municipios", municipios);
		return "admin/sistema/CadastrarSistema";
	}
	
	@RequestMapping("/novo_sistema")
	public String novoSistema(Model model, Sistema sistema) {
		try {
			sistemaService.novoSistema(sistema);
			return "redirect:/listar_sistemas";
		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("/listar_sistemas")
	public String listarSistemas(Model model) {
		try {
			// TODO C贸digo para carregar os chamados
			List<Sistema> sistemas = sistemaService.listarSistemas();
			model.addAttribute("sistemas", sistemas);
			
			return "admin/sistema/ListarSistemas";

		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}

	@RequestMapping("/visualizar_sistema")
	public String visualizarSistema(@RequestParam int id, @Valid Sistema sistema, BindingResult result, Model model) {
		try {
			// TODO C贸digo para carregar os chamados
			sistema = sistemaService.carregarSistema(id);
			model.addAttribute("sistema", sistema);
			
			return "admin/sistema/VisualizarSistema";

		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("/excluir_sistema")
	public ModelAndView excluirSistema(@RequestParam int id) throws IOException {
		sistemaService.excluirSistema(id);
		return new ModelAndView("redirect:/listar_sistemas");
	}
	
	@RequestMapping("/editar_sistema")
	public String editarSistema(@Valid Sistema sistema, Model model) {
		try {
			sistemaService.editarSistema(sistema);
			return "redirect:/listar_sistemas";
		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}
	
	@RequestMapping("/editar_sistema_pesquisa")
	public String editarSistemaAbastecimentoPesquisa(@RequestParam int id, @Valid Sistema sistema, 
			BindingResult result, Model model) throws IOException {
		try {
			// TODO C贸digo para carregar os chamados
			sistema = sistemaService.carregarSistema(id);
			model.addAttribute("sistema", sistema);	
			List<Municipio> municipios = municipioService.listarMunicipios();
			model.addAttribute("municipios", municipios);
			return "admin/sistema/EditarSistema";

		} catch (IOException e) {
			e.printStackTrace();
			return "erro";
		}
	}

}
