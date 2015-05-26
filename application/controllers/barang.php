<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Barang extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('barang_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$barang = $this->barang_m->selectAll();
		echo  json_encode($barang);
	}

	function getBy($field, $data, $key)
	{
		$this->keyrest->key($key);
		$barang = $this->barang_m->selectBy($field, $data);
		echo  json_encode($barang);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->barang_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->barang_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->barang_m->delete($id);
	}

}
