# Especialización en Inteligencia Artificial FIUBA

# Trabajo Práctico Integrador

# Visión por computadora II
---

## Integrantes:
   - Josselyn Ordoñez 
   - Natanael Ferrán
   - Jorge Valdez


# 1. Dataset seleccionado.

*  Empleamos el siguiente dataset:
    - [YOLO Waste Detection Image Dataset](https://universe.roboflow.com/projectverba/yolo-waste-detection/dataset/1)
    

## YOLO Waste Detection Image Dataset

1. Data set split:

- Conjunto de entrenamiento 11466 imágenes.
- Conjunto de validación 1092 imágenes.
- Conjunto de prueba 546 imágenes.

2. Preprocesamiento:

- Auto orientación: aplicada.
- Cambio de tamaño: escalado a 416x416

3. Modificaciones:

- Resultados por ejemplo de entrenamiento: 3
- Voltear: Horizontal, Vertical
- Rotación de 90°: en el sentido de las agujas del reloj, en el sentido contrario a las agujas del reloj, al revés
- Corte: ±15° horizontal, ±15° vertical
- Exposición: Entre -8% y +8%

# 2. Criterios de aprobación

Buscar un conjunto de datos de su preferencia y entrenar modelos de visión para alguna de las tareas que vemos durante el curso (clasiﬁcación, detección de objetos, segmentación, etc).
Entregas:
- Para la clase 5: Dataset seleccionado y tipo de problema que desean resolver.
- Para la clase 8: Diapositivas de la presentación, notebooks con desarrollo,
entrenamiento y resultados de cada experimento.

Duración de las presentaciones: ~15 min

Cantidad de integrantes: Hasta 2 personas

# 3. Entregables

Las diapositivas y el código deben contener:
- Descripción del problema que hay detrás del conjunto de datos.
- Análisis exploratorio del conjunto de datos.
- Tarea de visión por computadora a resolver y métricas a utilizar para evaluarla.
- Uso de Data Augmentation. Porque sí o porque no. Cuales se utilizaron y sus
conﬁguraciones.
- Arquitecturas de modelos a entrenar (al menos 2).
- Uso de Transfer Learning. Porque sí o porque no. En caso de utilizarlo a partir de que pesos de realizó.
- Entrenamientos realizados (al menos 4). Hiperparametros utilizados en cada uno.
- Gráﬁcas de resultados y sus comparaciones.
- Conclusiones.

# 4. Instalación

1. Luego de clonar el repositorio ejecutar desde el directorio raíz:

```bash
make install
```

# 5. Desinstalación del ambiente

```bash
make clean
```

