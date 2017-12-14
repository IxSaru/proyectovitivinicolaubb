package com.usuario.empresa.web.vitivinicolaubb.controladores;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.usuario.empresa.web.vitivinicolaubb.entidades.Direccion;
import com.usuario.empresa.web.vitivinicolaubb.servicios.DireccionService;

public class DireccionController extends MultiActionController {
	private List<Direccion> direcciones = new ArrayList<Direccion>();

	private DireccionService service = null;
	private ApplicationContext ctx = null;

	/**
	 * constructor
	 */
	public DireccionController() {
		/*ClaveUsuario cUser = null;
		// usuario 1
		cUser = new ClaveUsuario();
		cUser.setUser("juan");
		cUser.setPassword("23");
		cUser.setRut("12.234.456-6");
		usuarios.add(cUser);
		

		ctx = new ClassPathXmlApplicationContext(
				"classpath:/spring/applicationContext.xml");
		service = (ClaveUsuarioService) ctx.getBean("usuariosService");
		*/
	}

	public ModelAndView listar(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// método de primera iteracion
		// return new ModelAndView("usuarios/listar", "usuarios", usuarios);

		// obtener la lista de usuarios
		//List<ClaveUsuario> listaUsuarios = service.getClaveUsuario();
		/*
		// Obtener un usuario segun id
		Usuario usuario = service.getUsuario(1);
		// obtiene la cantidad total de usuarios
		int totalUsuarios = service.getTotalUsuarios();
		// inserta un nuevo usuario
		Usuario nuevoUsuario = new Usuario();
		nuevoUsuario.setNombre("Cristian");
		nuevoUsuario.setEdad(45);
		int usuarioId = service.insertUsuario(nuevoUsuario);
		// /actualiza los datos del usuario
		service.updateUsuario(usuario);
		// eliminar usuario segun id
		service.deleteUsuario(1);
		 */
		return new ModelAndView("usuarios/listar", "usuarios", direcciones);
	}


	public ModelAndView ver(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		return new ModelAndView("usuarios/ver", "usuario", direcciones.get(0));
	}
}
