<?php
/*
1. Создать структуру классов ведения товарной номенклатуры.
а) Есть абстрактный товар.
б) Есть цифровой товар, штучный физический товар и товар на вес.
в) У каждого есть метод подсчета финальной стоимости.
г) У цифрового товара стоимость постоянная – дешевле штучного товара в два раза. У штучного товара обычная стоимость, у весового – в зависимости от продаваемого количества в килограммах. У всех формируется в конечном итоге доход с продаж.
д) Что можно вынести в абстрактный класс, наследование?
*/

abstract class Goods {
    protected $name;
	protected $price;
    protected $totalCount;
    protected $typeGoods;
    
    protected $totalPrice;
    
	public function __construct(string $name, float $price, float $totalCount, string $typeGoods) {
		$this->name = $name;	
		$this->price = $price;	
		$this->totalCount = $totalCount;
        $this->typeGoods = $typeGoods;
	}	

	public abstract function totalPrice() : float;
	
	public function __toString() {
		return 'Товар: ' . $this->name . ', стоимость: ' . $this->price . ' куплено: ' . $this->totalCount . $this -> typeGoods;
	}
    
}

class IndividualGoods extends Goods {
    
	public function __construct($name, $price, $totalCount) {
		parent::__construct($name, $price, $totalCount, ' шт.');		
	}	
    
    public function totalPrice() : float {
        return $this->price * $this->totalCount;
    }  
}

class DigitalGoods extends Goods {
      
    private $factor =  0.5;
    
    
	public function __construct($name, $price, $totalCount) {
		parent::__construct($name, $price, $totalCount, ' шт.');	
	}	
    
    public function totalPrice() : float {
        return $this->price * $this->factor * $this->totalCount;
    }    
}

class WeightGoods extends Goods {
     private $weight;

    public function __construct($name, $price, $weight) {
		parent::__construct($name, $price, $weight, ' кг.');	
        $this->weight = $weight;	
	}	
    
    public function totalPrice() : float {
    return $this->price * $this->weight;
  }    
}
    
$variableGoods = new IndividualGoods('Стол', 450.00, 4);
echo $variableGoods .' на сумму '. $variableGoods->totalPrice() . '<br>';


$diagitalGoods = new DigitalGoods('Монитор', 500.00, 5);
echo $diagitalGoods .' на сумму '. $diagitalGoods->totalPrice() . '<br>';

$weightGoods = new WeightGoods('Конфеты', 200.00, 5.6);
echo $weightGoods .' на сумму '. $weightGoods->totalPrice() . '<br>';


//2. *Реализовать паттерн Singleton при помощи traits.

trait getIntance
{
    private $inst;
    static public function getIntance()
    {
        return $inst;
    }
}
class SingletonDB {
    use getIntance;
    
    public function __construct ()
    {
        self:: $inst-$this;
    }
}

class SingletonCatalog {
    use getIntance;
    
    public function __construct()
    {
        self:: $inst-$this;
    }
}
    
    
?>
