package com.usuario.empresa.web.vitivinicolaubb.controladores;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.usuario.empresa.web.vitivinicolaubb.entidades.Cooperado;
import com.usuario.empresa.web.vitivinicolaubb.servicios.CooperadoService;

public class CooperadoController extends MultiActionController {
	private List<Cooperado> cooperados = new ArrayList<Cooperado>();

	private CooperadoService service = null;
	private ApplicationContext ctx = null;

	/**
	 * constructor
	 */
	public CooperadoController() {
		/*ClaveUsuario cUser = null;
		// usuario 1
		cUser = new ClaveUsuario();
		cUser.setUser("juan");
		cUser.setPassword("23");
		cUser.setRut("12.234.456-6");
		usuarios.add(cUser);
		
*/
		ctx = new ClassPathXmlApplicationContext(
				"classpath:/spring/applicationContext.xml");
		service = (CooperadoService) ctx.getBean("cooperadosService");
			
	}

	public ModelAndView listarcooperados(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		

		List<Cooperado> listaCooperados = service.getCooperados();


		return new ModelAndView("cooperados/listarcooperados", "cooperados", listaCooperados);
	}
	
	
	/*
	private Cooperado obtenerDatosFormularioCooperado(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String rut=request.getParameter("rut");
		String nombre=request.getParameter("nombre");
		String idDireccion=request.getParameter("idDireccion");
		String vigente=request.getParameter("vigente");
		
		int idDireccion1=Integer.parseInt(idDireccion);
		boolean vigente1 = vigente.equals("1")? true:false; 
		
		Cooperado cooperado = new Cooperado();
		cooperado.setNombre(nombre);
		cooperado.setIdDireccion(idDireccion1);
		cooperado.setRut(rut);
		cooperado.setVigente(vigente1);
		
		service.insertCooperado(cooperado);
		
		
		System.out.println(cooperado.toString());
		return cooperado;
	
	}
	public void insertarCooperado(HttpServletRequest request,
			HttpServletResponse response) throws Exception {  
			Cooperado=obtenerDatosFormularioCooperado(request, response, cooperados); 
			service.insertCooperado(cooperados);
	} 
	*/

	
	public ModelAndView addcooperado(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		cooperados = service.getCooperados();
		return new ModelAndView("cooperados/addcooperado", "cooperados", cooperados);
	}

	
	public ModelAndView AgregarCooperado(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		if(request.getParameter("rut")==null) {
			return new ModelAndView("cooperados/addcooperado");
		}
		String rut=request.getParameter("rut");
		String nombre=request.getParameter("nombre");
		String idDireccion=request.getParameter("idDireccion");
		String vigente=request.getParameter("vigente");
		
		int idDireccion1=Integer.parseInt(idDireccion);
		boolean vigente1 = vigente.equals("1")? true:false; 
		
		
		Cooperado cooperado = new Cooperado();
		cooperado.setNombre(nombre);
		cooperado.setIdDireccion(idDireccion1);
		cooperado.setRut(rut);
		cooperado.setVigente(vigente1);
		
		System.out.println(cooperado.toString());
		service.insertCooperado(cooperado);
		
	

		return listarcooperados(request,response);
	}
	
	
	 
}
