[![Foo](https://img.shields.io/badge/README-ENGLISH-brightgreen.svg?style=for-the-badge)](https://github-com.translate.goog/GyverLibs/ProcessingPlotter?_x_tr_sl=ru&_x_tr_tl=en)

# ProcessingPlotter
 Простая библиотека для вывода графиков на Processing
![image](/plotterimg.png)

## Возможности
- Вывод графиков в реальном времени
- Любое количество осей
- Свой цвет у каждой оси
- Настраиваемая позиция размер и разрешение
- Опциональный авто-масштаб
- Опциональное отображение делений с подписями значений
- Опциональное отображение минимума и максимума
- Только целые числа

## Инициализация
```cpp
Plotter plotter = new Plotter(позиция X, позиция Y, размер X, размер Y, кол-во осей, разрешение);
```
Под разрешением имеется в виду количество точек по оси Х на одну точку по оси Y

## Использование
```cpp
void init();              // инициализация (вызвать в setup)

// НАСТРОЙКИ
void autoScale(boolean);  // авто масштаб (по умолч. включен)
void setMin(int);         // минимум для фиксированного масштаба
void setMax(int);         // максимум для фиксированного масштаба
void setLineAmount(int);  // количество делений (0 чтобы отключить)
void showMinMax(boolean); // показать минимум/максимум (по умолч. выключено)

// ОТОБРАЖЕНИЕ
void add(int axis, int val);  // добавить точку со занчением val по оси axis
void update();                // отобразить
```

## Установка
Библиотека оформлена просто в виде класса, добавь его в отдельную вкладку в свой скетч
