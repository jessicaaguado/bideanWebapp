package com.jagusan.bidean.model

import org.apache.commons.lang.builder.HashCodeBuilder

class UsuarioWebRol implements Serializable {

	private static final long serialVersionUID = 1

	UsuarioWeb usuarioWeb
	Rol rol

	boolean equals(other) {
		if (!(other instanceof UsuarioWebRol)) {
			return false
		}

		other.usuarioWeb?.id == usuarioWeb?.id &&
		other.rol?.id == rol?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (usuarioWeb) builder.append(usuarioWeb.id)
		if (rol) builder.append(rol.id)
		builder.toHashCode()
	}

	static UsuarioWebRol get(long usuarioWebId, long rolId) {
		UsuarioWebRol.where {
			usuarioWeb == UsuarioWeb.load(usuarioWebId) &&
			rol == Rol.load(rolId)
		}.get()
	}

	static boolean exists(long usuarioWebId, long rolId) {
		UsuarioWebRol.where {
			usuarioWeb == UsuarioWeb.load(usuarioWebId) &&
			rol == Rol.load(rolId)
		}.count() > 0
	}

	static UsuarioWebRol create(UsuarioWeb usuarioWeb, Rol rol, boolean flush = false) {
		def instance = new UsuarioWebRol(usuarioWeb: usuarioWeb, rol: rol)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(UsuarioWeb u, Rol r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = UsuarioWebRol.where {
			usuarioWeb == UsuarioWeb.load(u.id) &&
			rol == Rol.load(r.id)
		}.deleteAll()

		if (flush) { UsuarioWebRol.withSession { it.flush() } }

		rowCount > 0
	}

	static void removeAll(UsuarioWeb u, boolean flush = false) {
		if (u == null) return

		UsuarioWebRol.where {
			usuarioWeb == UsuarioWeb.load(u.id)
		}.deleteAll()

		if (flush) { UsuarioWebRol.withSession { it.flush() } }
	}

	static void removeAll(Rol r, boolean flush = false) {
		if (r == null) return

		UsuarioWebRol.where {
			rol == Rol.load(r.id)
		}.deleteAll()

		if (flush) { UsuarioWebRol.withSession { it.flush() } }
	}

	static constraints = {
		rol validator: { Rol r, UsuarioWebRol ur ->
			if (ur.usuarioWeb == null) return
			boolean existing = false
			UsuarioWebRol.withNewSession {
				existing = UsuarioWebRol.exists(ur.usuarioWeb.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['rol', 'usuarioWeb']
		version false
	}
}
