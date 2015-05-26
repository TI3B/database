<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pemasukan extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('pemasukan_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$pemasukan = $this->pemasukan_m->selectAll();
		echo  json_encode($pemasukan);
	}

	function getBy($id, $key)
	{
		$this->keyrest->key($key);
		$pemasukan = $this->pemasukan_m->selectBy('kd_pemasukan', $id);
		echo  json_encode($pemasukan);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->pemasukan_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->pemasukan_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->pemasukan_m->delete($id);
	}

}
