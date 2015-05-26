<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Data_penyewa extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('data_penyewa_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$data_penyewa = $this->data_penyewa_m->selectAll();
		echo  json_encode($data_penyewa);
	}

	function getBy($field, $data, $key)
	{
		$this->keyrest->key($key);
		$data_penyewa = $this->data_penyewa_m->selectBy($field, $data);
		echo  json_encode($data_penyewa);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->data_penyewa_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->data_penyewa_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->data_penyewa_m->delete($id);
	}

}
