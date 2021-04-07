<?php
 /*
  1. Придумать класс, который описывает любую сущность из предметной области интернет-магазинов: продукт, ценник, посылка и т.п.
  2. Описать свойства класса из п.1 (состояние).
  3. Описать поведение класса из п.1 (методы).
  4. Придумать наследников класса из п.1. Чем они будут отличаться? 
 */
 class BeautyShop { 
    private $itemName;            // название товара
    private $itemDescription;   // описание товара
    private $price;               // цена
    private $condition;          // состояние
     public function __construct($itemName, $itemDescription, $price, $condition) {
        $this->itemName = $itemName;
        $this->itemDescription = $itemDescription;
        $this->price = $price;
        $this->condition = $condition;
    }
     public function getItemName() {
        return $this->itemName;
    }
     public function getItemDescription() {
        return $this->itemDescription;
    }
     public function getPrice() {
        return $this->price;
    } 
     public function getCondition() {
        return $this->condition;
    }
     protected function getInfo() {
        $info = 'Наименование: ' . $this->itemName . '<br>' . //PHP_EOL .
                'Описание: ' . $this->itemDescription . '<br>' . //PHP_EOL .
                'Состояние: ' . $this->condition . '<br>' . //PHP_EOL .
                'Цена: ' . $this->price . '<br>'; //PHP_EOL;
        return $info;
    }
 }
 class BeautyProduct extends BeautyShop {
     private $lipstickCount;
     public function __construct($itemName, $itemDescription, $price, $condition, $lipstickCount) {
        parent::__construct($itemName, $itemDescription, $price, $condition);
        $this->lipstickCount = $lipstickCount;
    }
     public function getlipstickCount() {
        return $this->lipstickCount;
    }
     public function getInfo() {
        $info = parent::getInfo() . 'Номер: ' . $this->lipstickCount . '<hr>' ;
        return $info;
    }
 }
 class FaceProduct extends BeautyShop {
     private $typeFirm;
     public function __construct($itemName, $itemDescription, $price, $condition, $typeFirm) {
        parent::__construct($itemName, $itemDescription, $price, $condition);
        $this->typeFirm = $typeFirm;
    }
     public function gettypeFirm() {
        return $this->typeFirm;
    }
     public function getInfo() {
        $info = parent::getInfo() . 'Фирма: ' . $this->typeFirm;
        return $info;
    }
 }
 $lipstick = new BeautyProduct('Помада', 'Красная', 900, 'Матовая', 13); 
echo $lipstick->getInfo();

 $mask = new FaceProduct('Маска', 'Увлажняющая', 500, 'Тканевая;', 'Estel'); 
echo $mask->getInfo();



 /*  Дан код:
 5.
class A {
    public function foo() {
        static $x = 0;
        echo ++$x;
    }                           -  Публичный метот, в нём статическая переменная x
}
$a1 = new A(); - объект 1
$a2 = new A(); - объект 2
$a1->foo(); - 1 
$a2->foo(); - 2 
$a1->foo(); - 3
$a2->foo(); - 4

Получим 1,2,3,4. Потому что, все свойства статические и не привязаны к объектам, а объект одного класса, получаем, при каждом вызове значение, которе связанно с предыдущим значением 

6.
class A {
    public function foo() {
        static $x = 0;
        echo ++$x;
    }
}
class B extends A {
}
$a1 = new A();
$b1 = new B();
$a1->foo(); - 1 
$b1->foo(); - 1
$a1->foo(); - 2
$b1->foo(); - 2

Получим 1, 1, 2, 2. Потому что, здесь указано наследование, класс B, потомок класса А.
 
   7. 
   class A {
    public function foo() {
        static $x = 0;
        echo ++$x;
    }
}
class B extends A {
}
$a1 = new A;
$b1 = new B;
$a1->foo(); 
$b1->foo(); 
$a1->foo(); 
$b1->foo(); 

Получим так же 1, 1, 2, 2. Потому что, классы так же разные. У конструктора нет параметров, скобки не нужны.
 */ 
