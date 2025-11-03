iMoneda sin idiomas
---

## Problemas encontrados

1. **El botón no actualizaba la imagen tras varios lanzamientos**
   - Causa: el `UIImageView` no refrescaba correctamente su contenido tras la animación.
   - Solución: se forzó la actualización usando `DispatchQueue.main.async` tras la animación.

2. **Confusión inicial con la vinculación de Outlets en el Storyboard**
   - Causa: conexiones duplicadas o referencias rotas tras mover elementos.
   - Solución: se eliminaron las conexiones erróneas y se vincularon nuevamente los elementos a `ViewController`.

3. **Error SIGTERM al ejecutar**
   - Causa: conexiones de interfaz hacia propiedades eliminadas.
   - Solución: se revisó el storyboard y se borraron los outlets “fantasma” (no existentes en el código).


---

## Cómo se resolvieron los problemas

- Revisión del **Storyboard** con el **Connections Inspector**.
- Verificación de todos los `@IBOutlet` y `@IBAction` en el código.
- Pruebas incrementales tras cada modificación.
- Uso del simulador para comprobar el funcionamiento antes de cada commit.

---

## Resultado final

La app permite:
- Lanzar una moneda con un solo toque.  
- Ver una animación de giro.  
- Mostrar el resultado (cara o cruz) de forma clara y rápida.  
- Repetir el lanzamiento tantas veces como se desee.  

---

## Demostración en vídeo

Un vídeo demostrativo acompaña este proyecto, mostrando:
- Icono app.  
- El lanzamiento de la moneda varias veces.  
- El cambio visual entre cara y cruz.
video_iMoneda.mp4
---

