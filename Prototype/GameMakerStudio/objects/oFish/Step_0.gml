fishPos = fishPos + fishSpd;
x = x + fishPos + random(0.02);
y = y + sin(fishPos*10) * 0.05 * random(10);
