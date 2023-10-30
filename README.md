# TareaAspectos


# Aspecto Adicional Simulación de una autenticación para cambiar el Color

[![imagen.png](https://i.postimg.cc/3JTys3tj/imagen.png)](https://postimg.cc/6TM5RxJT)

Tenemos el pointcut AutenticarCambio que recibe como parametro un Objeto Color, y que su execution llama al método propio del JPanel.setBackgroun. Dentro de la estructura del advice before tenemos un if que valida que este "autenticado" y que en caso de no estarlo llama a un método simulado que de luz verde a la autentificación, luego imprime por pantalla un mensaje aprobatorio o desaprobatorio según sea el caso.


# Cambio de Color 

[![imagen.png](https://i.postimg.cc/bwGjLt1m/imagen.png)](https://postimg.cc/dhKXVDHC)

Tenemos un pointcut llamado colorChange que recibe un evento (En este caso la acción del botón), y que llama al método CambiarColor para entrar en acción. Dentro de la estructura del adivce before, simplemente se obtiene la información del evento para saber a que color se va a cambiar según la asignación de cada color para luego imprimirlo por pantalla.



## Funcionalidad 

![image](https://github.com/OliLM/TareaAspectos/assets/127567902/c0797f36-d00c-43de-ae37-31171e7b45a8)

Hemos introducido un nuevo aspecto (`FuncionalidadAdicional.aj`) para ejemplificar la separación de requerimientos (core y cross-cutting concerns). Este aspecto realiza la autenticación antes de permitir cambios de color y también registra información de registro (logging) cada vez que se cambia el color de fondo de la ventana. 
El aspecto `FuncionalidadAdicional` realiza la autenticación antes de permitir cambios de color en la ventana. Si la autenticación falla, se lanza una excepción de seguridad y se impide el cambio de color. Además, el aspecto registra en la consola cada cambio de color, proporcionando una funcionalidad adicional sin modificar directamente la lógica principal.

