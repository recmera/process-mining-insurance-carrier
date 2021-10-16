# Minería de Procesos para Aseguradora
### Descripción

Describir el log de eventos "claims" e identificar aspectos del proceso que debieran analizarse y controlarse.
### Antecedentes

El log de eventos Claims desbribe el proceso que sigue una empresa aseguradora para tramitar los requerimientos de activación del seguro por parte de sus clientes.

Algunas medidas de éxito del proceso son las siguientes:

- Órdenes que son rechazadas sin ser analizadas en detalle.
- Órdenes que terminan o no en un pago.
- Órdenes que siguen un flujo lógico y no requieren reprocesos. En general, las órdenes que incluyen ciclos indican algún nivel de problema o de ineficiencia.
- Tiempo de respuesta a los clientes

### Resultados esperados

1. Describir el log en términos generales. Cuántos casos, cuántas actividades distintas, ventana de tiempo que abarca, duración de los casos, cantidad y distribución de variantes, personas/roles que participan en el proceso, etc. Indicar con qué información se cuenta y si existe información que no se tiene.
2. Investigar y describir muy brevemente el proceso que siguen las empresas de seguros para tramitar los requerimientos, de manera de entender de qué se tratan las actividades que aparecen en el log. Se deben incluir referencias en el informe.
3. Identificar las etapas principales del proceso, generando un diagrama simplificado del mismo (3 a 6 actividades). Analizar este diagrama, identificando variantes principales, frecuencias, tiempo que toma cada una de las etapas, etc.
4. Analizar el log de eventos. Para ello, se puede escoger algunas preguntas (no menos de 3), del listado que se entrega en el anexo, e intentar responderlas mediante las herramientas de análisis. Es posible también proponer otras preguntas que pudieran ser de interés para ayudar a entender el proceso. Se sugiere que en el análisis del log se tengan en cuenta las etapas identificadas en la pregunta 2, de manera que el análisis sea más focalizado. Más importante que la cantidad de preguntas abordadas, es que el trabajo analice el log desde diferentes perspectivas y utilizando diferentes técnicas. 
5. A partir de los análisis realizados, propongan algunas mejoras al proceso (mínimo 2). Estas mejoras podrían tener por objetivo simplificar el proceso, reducir el tiempo total o el de alguna actividad, reducir reprocesos, o cualquier otro objetivo que permita mejorar el proceso.

### Entorno

1. Crear y activar un entorno con conda

``` shell
    $ conda create --name sgt
    $ conda activate sgt
  
```
  
2. Instalar Jupyter Notebook en el entorno de conda  
``` shell
  $ conda install -c conda-forge notebook
```
  
3. Instalar R dentro de Jupyter Notebook

``` shell

  $ conda install -c r r-essentials
  
```
