<?php
//
// Базовый класс контроллера.
//
abstract class C_Controller
{
	protected abstract function before();
	
	public function Request($action)
	{
		$this->before();
		$this->$action();   

	}
	
	protected function IsGet()
	{
		return $_SERVER['REQUEST_METHOD'] == 'GET';
	}

	protected function IsPost()
	{
		return $_SERVER['REQUEST_METHOD'] == 'POST';
	}
	public function __call($name, $params){
		$this->title .= '::Страница не найдена';
        $loader = new \Twig\Loader\FilesystemLoader('./tpl/');
        $twig = new \Twig\Environment($loader);
		echo $twig->render('404.html', ['title' => $this->title]);
	}
}
