package Ventanas;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class Ventana extends JFrame {
	public JPanel panel;
	
	public static JButton btn1= new JButton("Rojo");
	public static JButton btn2= new JButton("Azul");
	public static JButton btn3= new JButton("Amarillo");
	
	
	public Ventana() {
		this.setSize(650, 650);
		this.setLocationRelativeTo(null);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setTitle("TAREA DE ASPECTJ");
		iniciarComponentes();
		this.setVisible(rootPaneCheckingEnabled);
		
	}
	
	private void cargarPaneles() {
		panel = new JPanel();
		panel.setLayout(null);
		this.getContentPane().add(panel);
		
		
	}
	
	private void iniciarComponentes() {
		cargarPaneles();
		cargarBotones();
		
	}
	
	private void CambiarColor(ActionEvent e) {
		if(e.getSource().equals(btn1)) {
			panel.setBackground(Color.red);
		} else if (e.getSource().equals(btn2)) { 
			panel.setBackground(Color.blue);
		} else { 
			panel.setBackground(Color.yellow);
		}
		
	}
	
	
	private void PresionarBotones() {

		btn1.addActionListener((ActionListener) new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				CambiarColor(e);
			}
		});
		
		btn2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				CambiarColor(e);
			}
		});
		
		btn3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				CambiarColor(e);
			}
		});
	}
	
	private void cargarBotones() {
		
		btn1.setBounds(100, 100, 100, 50);
		btn2.setBounds(100, 300, 100, 50);
		btn3.setBounds(100, 500, 100, 50);
		
		
		panel.add(btn1);
		panel.add(btn2);
		panel.add(btn3);
		
		PresionarBotones();
		
	}
	

}