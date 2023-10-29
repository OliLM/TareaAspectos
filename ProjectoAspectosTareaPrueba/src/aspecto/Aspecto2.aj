package aspecto;

import java.awt.event.ActionEvent;

import Ventanas.Ventana;

public aspect Aspecto2 {
ActionEvent evento;
	
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
