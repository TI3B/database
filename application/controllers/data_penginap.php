<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Data_penginap extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('data_penginap_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$data_penginap = $this->data_penginap_m->selectAll();
		echo  json_encode($data_penginap);
	}

	function getBy($id, $key)
	{
		$this->keyrest->key($key);
		$data_penginap = $this->data_penginap_m->selectBy('kd_data_penginap', $id);
		echo  json_encode($data_penginap);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->data_penginap_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->data_penginap_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->data_penginap_m->delete($id);
	}

}
