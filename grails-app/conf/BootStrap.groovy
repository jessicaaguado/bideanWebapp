import com.jagusan.bidean.model.Rol
import com.jagusan.bidean.model.UsuarioWeb
import com.jagusan.bidean.model.UsuarioWebRol

class BootStrap {

    def init = { servletContext ->
        Rol adminRole = Rol.findByAuthority('ROLE_ADMIN');
        if (!adminRole) {
            adminRole = new Rol(authority: 'ROLE_ADMIN').save(flush: true)
        }
        Rol userRole = Rol.findByAuthority('ROLE_USER');
        if (!userRole) {
            userRole = new Rol(authority: 'ROLE_USER').save(flush: true)
        }
        UsuarioWeb usuario = UsuarioWeb.findByUsername('jessica');
        if (!usuario) {
            usuario = new UsuarioWeb(username: 'jessica', password: 'password')
            usuario.save(flush: true)

            UsuarioWebRol.create usuario, adminRole, true
            UsuarioWebRol.create usuario, userRole, true
        }
    }


    def destroy = {
    }
}
