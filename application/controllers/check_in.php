<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Check_in extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('check_in_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$check_in = $this->check_in_m->selectAll();
		echo  json_encode($check_in);
	}

	function getBy($field, $data, $key)
	{
		$this->keyrest->key($key);
		$check_in = $this->check_in_m->selectBy($field, $data);
		echo  json_encode($check_in);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->check_in_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->check_in_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->check_in_m->delete($id);
	}

}
