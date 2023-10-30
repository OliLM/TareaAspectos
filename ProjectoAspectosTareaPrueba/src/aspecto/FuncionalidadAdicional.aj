package aspecto;
import java.awt.Color;
import java.awt.event.ActionEvent;
import Ventanas.Ventana;

public aspect Aspecto2 {
    private boolean autenticado = false;
    pointcut cambiarColor(ActionEvent evento): call(void Ventana.CambiarColor(ActionEvent)) && args(evento);
    before(ActionEvent evento): cambiarColor(evento) {
        if (!autenticado) {
            System.out.println("Autenticación requerida para hacer el cambio de color");
            autenticado = autenticarbooleano();
            if (autenticado) {
                System.out.println("Autenticación exitosa listo para cambiar el color");
            } else {
                System.out.println("Falló la autentificación. Cambio de color rechazado");
                throw new SecurityException("No pasó la autentificación");
            }
        }
    }
    before(ActionEvent evento): colorChange(evento) {
        if (evento.getSource().equals(Ventana.btn1)) {
            System.out.println("Cambio de color a ROJO");
        } else if (evento.getSource().equals(Ventana.btn2)) {
            System.out.println("Cambio de color a AZUL");
        } else if (evento.getSource().equals(Ventana.btn3)) {
            System.out.println("Cambio de color a AMARILLO");
        }
    }

    pointcut cambiarColorLog(ActionEvent evento): call(void Ventana.CambiarColor(ActionEvent)) && args(evento);
    after(ActionEvent evento): cambiarColorLog(evento) {
        System.out.println("Aspecto Adicional: Color cambiado");
    }
    private boolean autenticarbooleano() {
        return true;
    }
}
