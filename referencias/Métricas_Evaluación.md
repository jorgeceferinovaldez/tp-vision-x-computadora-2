### Métricas de Evaluación para Clasificación Multietiqueta

1. **Exact Match Ratio (Accuracy)**:
   - Es la proporción de instancias en las que el conjunto completo de etiquetas predichas coincide exactamente con el conjunto de etiquetas verdaderas.
   - \[ \text{Exact Match Ratio} = \frac{1}{N} \sum_{i=1}^N \mathbb{1}(Y_i = \hat{Y}_i) \]
   - Donde \( \mathbb{1} \) es una función indicadora que vale 1 si las etiquetas predichas \( \hat{Y}_i \) coinciden con las verdaderas \( Y_i \), y 0 en caso contrario.

2. **Hamming Loss**:
   - Calcula el porcentaje de etiquetas incorrectamente clasificadas (incluyendo etiquetas faltantes y etiquetas erróneas).
   - \[ \text{Hamming Loss} = \frac{1}{N \times L} \sum_{i=1}^N \sum_{j=1}^L \mathbb{1}(Y_{ij} \neq \hat{Y}_{ij}) \]
   - Donde \( L \) es el número de etiquetas.

3. **Precision, Recall y F1-score (Micro y Macro)**:
   - **Micro-average**: Calcula las métricas globalmente considerando el total de verdaderos positivos, falsos positivos y falsos negativos.
     - \[ \text{Micro Precision} = \frac{\sum_{i=1}^L TP_i}{\sum_{i=1}^L (TP_i + FP_i)} \]
     - \[ \text{Micro Recall} = \frac{\sum_{i=1}^L TP_i}{\sum_{i=1}^L (TP_i + FN_i)} \]
     - \[ \text{Micro F1-score} = \frac{2 \times \text{Micro Precision} \times \text{Micro Recall}}{\text{Micro Precision} + \text{Micro Recall}} \]
   - **Macro-average**: Calcula las métricas para cada etiqueta y luego promedia estos valores.
     - \[ \text{Macro Precision} = \frac{1}{L} \sum_{i=1}^L \text{Precision}_i \]
     - \[ \text{Macro Recall} = \frac{1}{L} \sum_{i=1}^L \text{Recall}_i \]
     - \[ \text{Macro F1-score} = \frac{1}{L} \sum_{i=1}^L \text{F1-score}_i \]

4. **Subset Accuracy**:
   - Similar al Exact Match Ratio, pero más adecuado cuando hay muchas etiquetas posibles.
   - \[ \text{Subset Accuracy} = \frac{1}{N} \sum_{i=1}^N \frac{|Y_i \cap \hat{Y}_i|}{|Y_i \cup \hat{Y}_i|} \]

5. **Ranking Loss**:
   - Mide el promedio de etiquetas mal ordenadas en una predicción.
   - \[ \text{Ranking Loss} = \frac{1}{N} \sum_{i=1}^N \frac{|\{ (j, k) : \hat{Y}_{ij} < \hat{Y}_{ik}, Y_{ij} = 1, Y_{ik} = 0 \}|}{|Y_i| \times |Y_i^c|} \]
   - Donde \( |Y_i| \) es el número de etiquetas relevantes y \( |Y_i^c| \) es el número de etiquetas irrelevantes para la instancia \( i \).

6. **Coverage Error**:
   - Mide el número de etiquetas que deben cubrirse para incluir todas las verdaderas etiquetas para cada instancia.
   - \[ \text{Coverage Error} = \frac{1}{N} \sum_{i=1}^N \max_{j: Y_{ij} = 1} rank_{ij} - 1 \]
   - Donde \( rank_{ij} \) es la posición de la etiqueta \( j \) en la lista ordenada de predicciones para la instancia \( i \).

7. **F1-Beta**:
   - Es una generalización del F1-score que permite ajustar el equilibrio entre Precision y Recall mediante un parámetro beta (\( \beta \)). Un valor de \( \beta > 1 \) da más peso a Recall y \( \beta < 1 \) da más peso a Precision.
   - \[ \text{F1-}\beta = (1 + \beta^2) \cdot \frac{\text{Precision} \cdot \text{Recall}}{(\beta^2 \cdot \text{Precision}) + \text{Recall}} \]

### Referencias

1. Zhang, M., & Zhou, Z. (2014). A Review on Multi-Label Learning Algorithms. IEEE Transactions on Knowledge and Data Engineering, 26(8), 1819-1837.
2. Tsoumakas, G., & Katakis, I. (2007). Multi-Label Classification: An Overview. International Journal of Data Warehousing and Mining, 3(3), 1-13.
3. Scikit-learn Documentation. (n.d.). Multi-label classification. Retrieved from [https://scikit-learn.org/stable/modules/multiclass.html#multilabel-classification](https://scikit-learn.org/stable/modules/multiclass.html#multilabel-classification).

