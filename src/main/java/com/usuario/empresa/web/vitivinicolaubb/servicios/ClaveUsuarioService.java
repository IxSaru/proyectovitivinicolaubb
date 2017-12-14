package com.usuario.empresa.web.vitivinicolaubb.servicios;

import com.usuario.empresa.web.vitivinicolaubb.entidades.ClaveUsuario;

public class ClaveUsuarioService extends ServiceImpl {
	
	public ClaveUsuario getClaveUsuario(String user) throws Exception {
		return (ClaveUsuario) sqlMap.queryForObject("getClaveUsuario", user);
	}

	public int insertClaveUsuario(ClaveUsuario usuario) throws Exception {
		return (Integer) sqlMap.insert("insertClaveUsuario", usuario);
	}

	/*public void updateClaveUsuario(ClaveUsuario usuario) throws Exception {
		sqlMap.update("updateUsuario", usuario);
	}*/
}
