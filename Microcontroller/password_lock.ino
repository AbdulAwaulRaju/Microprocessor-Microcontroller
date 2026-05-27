#include <Keypad.h>
#include <LiquidCrystal.h>

// LCD pins (RS, E, D4, D5, D6, D7)
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

// keypad setup
const byte ROWS = 4;
const byte COLS = 4;

char keys[ROWS][COLS] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'}
};

byte rowPins[ROWS] = {9, 8, 7, 6};
byte colPins[COLS] = {A0, A1, A2, A3};

Keypad keypad = Keypad(makeKeymap(keys), rowPins, colPins, ROWS, COLS);

String password = "1234";
String input = "";

void setup() {
  lcd.begin(16, 2);
  lcd.print("Enter Password:");
}

void loop() {

  char key = keypad.getKey();

  if (key) {

    if (key == '#') {   // submit button

      lcd.clear();

      if (input == password) {
        lcd.print("Access Granted");
      } else {
        lcd.print("Wrong Password");
      }

      delay(2000);
      input = "";
      lcd.clear();
      lcd.print("Enter Password:");

    } 
    else if (key == '*') {
      input = ""; // reset input
      lcd.clear();
      lcd.print("Enter Password:");
    } 
    else {
      input += key;
      lcd.setCursor(0, 1);
      lcd.print(input);
    }
  }
}
