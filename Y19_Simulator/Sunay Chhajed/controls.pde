
void keyPressed() {
switch (key) {
case 'f':
turnZ(1, 1);
break;
case 'F':
turnZ(1, -1);
break;

case 'b':
turnZ(-1, 1);
break;
case 'B':
turnZ(-1, -1);
break;

case 'd':
turnY(1, 1);
break;
case 'D':
turnY(1, -1);
break;

case 'u':
turnY(-1, 1);
break;
case 'U':
turnY(-1, -1);
break;

case 'l':
turnX(-1, 1);
break;
case 'L':
turnX(-1, -1);
break;

case 'r':
turnX(1, -1);
break;
case 'R':
turnX(1, 1);
break;

case 'm':
turnX(1, -1);
turnX(-1, -1);
break;
case 'M':
turnX(1, 1);
turnX(-1, 1);
break;

case 'e':
turnY(-1, 1);
turnY(1, 1);
break;
case 'E':
turnY(-1, -1);
turnY(1, -1);
break;

case 's':
turnZ(1, -1);
turnZ(-1, -1);
break;
case 'S':
turnZ(1, 1);
turnZ(-1, 1);
break;



}
}
