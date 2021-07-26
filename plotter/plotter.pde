// создать плоттер (позиция левого верхнего угла Х, У, размер по Х, У, кол-во осей, разрешение)
Plotter plotterX = new Plotter(5, 300, 290, 290, 2, 2);
Plotter plotterY = new Plotter(300, 300, 290, 290, 2, 2);

void setup() {
  size(600, 600);
  // инициализация
  plotterX.init();
  plotterY.init();
  
  plotterX.autoScale(false);  // выключим авто масштаб (по умолч. включен)
  plotterX.setMin(0);         // минимум для фикс масштаба
  plotterX.setMax(300);       // максимум для фикс масштаба
  
  plotterY.setLineAmount(5);  // отобразим линии (количество)
  plotterY.showMinMax(true);  // показать минимум/максимум (по умолч. выключено)
}

int tmr = 0, prevX=0, prevY=0;
void draw() {
  // каждые 3 кадра
  if (frameCount % 3 == 0) {
    // тут происходит измерение скорости курсора в пикс/сек
    int dt = millis() - tmr;
    tmr = millis();    
    float rateX = 1000.0 * (mouseX - prevX) / dt;
    float rateY = 1000.0 * (mouseY - prevY) / dt;
    prevX = mouseX;
    prevY = mouseY;
    
    // добавляем значения на оси
    plotterX.add(0, mouseX);
    plotterX.add(1, rateX);
    
    // обновляем
    plotterX.update();
    
    plotterY.add(0, mouseY);
    plotterY.add(1, rateY);
    plotterY.update();
  }
}
