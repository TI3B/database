<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Check_out extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('check_out_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$check_out = $this->check_out_m->selectAll();
		echo  json_encode($check_out);
	}

	function getBy($id, $key)
	{
		$this->keyrest->key($key);
		$check_out = $this->check_out_m->selectBy('kd_check_out', $id);
		echo  json_encode($check_out);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->check_out_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->check_out_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->check_out_m->delete($id);
	}

}
