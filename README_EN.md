# ProcessingPlotter
 A simple library for displaying graphs on Processing
![image](/plotterimg.png)

## Opportunities
- Real-time graph output
- Any number of axles
- Each axis has its own color
- Customizable position size and resolution
- Optional auto-scale
- Optional display of divisions with value labels
- Optional display of minimum and maximum
- Whole numbers only

## Initialization
```cpp
Plotter plotter = new Plotter(X position, Y position, X size, Y size, number of axes, resolution);
```
Resolution refers to the number of points along the X axis per point along the Y axis.

## Usage
```cpp
void init(); // initialization (call in setup)

// SETTINGS
void autoScale(boolean); // auto scale (enabled by default)
void setMin(int); // minimum for fixed scale
void setMax(int); // maximum for fixed scale
void setLineAmount(int); // number of divisions (0 to disable)
void showMinMax(boolean); // show min/max (disabled by default)

// DISPLAY
void add(int axis, int val); // add a point with value val along the axis
void update(); // display
```

## Installation
The library is designed simply as a class, add it to a separate tab in your sketch