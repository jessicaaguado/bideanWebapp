package com.jagusan.bidean.controller

class InicioController {

    def index() {
        println "Inicio"
        render (view: "/index")
    }
}
