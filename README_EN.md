This is an automatic translation, may be incorrect in some places. See sources and examples!

# Processingplotter
 Simple library for displaying graphs on Processing
! [Image] (/plotterimg.png)

## Possibilities
- The conclusion of graphs in real time
- Any number of axes
- Each axis has its own color
- customizable position size and resolution
- Optional auto-scale
- optional display of divisions with signatures
- Optional display of the minimum and maximum
- Only integers

## initialization
`` `CPP
Plotter plotter = New Plotter (position X, position y, size X, size Y, number of axes, resolution);
`` `
By resolution, this refers to the number of points along the X axis for one point along the axis Y

## Usage
`` `CPP
VOID Init ();// initialization (call in setup)

// SETTINGS
VOID AUTOSCALE (Boolean);// Auto scale (on the default)
VOID setmin (int);// minimum for a fixed scale
VOID setmax (int);// Maximum for a fixed scale
VOID Setlineamount (Int);// number of divisions (0 to turn off)
VOID Showminmax (Boolean);// show the minimum/maximum (by the default)

// display
VOID Add (Intsis, Int Val);// Add a point with a subscription val along the axis axis
VOID update ();// display
`` `

## Installation
The library is simply decorated in the form of a class, add it to a separate tab to your sketch


When reporting about bugs or incorrect work of the library, it is necessary to indicate:
- The version of the library
- What is MK used
- SDK version (for ESP)
- version of Arduino ide
- whether the built -in examples work correctly, in which the functions and designs are used, leading to a bug in your code
- what code has been loaded, what work was expected from it and how it works in reality
- Ideally, attach the minimum code in which the bug is observed.Not a canvas of a thousand lines, but a minimum code