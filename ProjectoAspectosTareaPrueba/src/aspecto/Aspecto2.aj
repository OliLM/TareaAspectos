package aspecto;

import java.awt.Color;
import java.awt.event.ActionEvent;



import Ventanas.Ventana;

public aspect Aspecto2 {
ActionEvent evento;
private boolean autenticado = false;
Color color;


pointcut AuntenticarCambio(Color color): call(* javax.swing.JPanel.setBackground(Color)) && args(color);

before(): AuntenticarCambio(java.awt.Color){
	if(!autenticado) {
		System.out.println("Autenticación requerida para hacer el cambio de color!");
		
		autenticado= autenticarbooleano();
		if(autenticado) {
			System.out.println("Autenticación exitosa, listo para cambiar el color!");
	}else {
		System.out.println("Falló la autentificación! Cambio de color rechazado");
        throw new SecurityException("No pasó la autentificación");
	}
}}

private boolean autenticarbooleano() {
	return true;
}





	pointcut colorChange(ActionEvent evento): call(* CambiarColor(ActionEvent)) && args(evento);
	
	before(ActionEvent evento): colorChange(evento){
		if(evento.getSource().equals(Ventana.btn1)) {
			System.out.println("Cambio de color a ROJO " );
		}else if(evento.getSource().equals(Ventana.btn2)) {
			System.out.println("Cambio de color a AZUL " );
		}else if(evento.getSource().equals(Ventana.btn3)) {
			System.out.println("Cambio de color a AMARILLO " );
		}
 }
}
	
	

