<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pengeluaran extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('pengeluaran_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$pengeluaran = $this->pengeluaran_m->selectAll();
		echo  json_encode($pengeluaran);
	}

	function getBy($field, $data, $key)
	{
		$this->keyrest->key($key);
		$pengeluaran = $this->pengeluaran_m->selectBy($field, $data);
		echo  json_encode($pengeluaran);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->pengeluaran_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->pengeluaran_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->pengeluaran_m->delete($id);
	}

}
