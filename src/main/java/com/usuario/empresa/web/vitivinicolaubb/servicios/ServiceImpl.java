package com.usuario.empresa.web.vitivinicolaubb.servicios;

import com.ibatis.sqlmap.client.SqlMapClient;

public class ServiceImpl {
	protected SqlMapClient sqlMap = null;

	public void setSqlMapClient(SqlMapClient sqlMap) {
		this.sqlMap = sqlMap;
	}
}
