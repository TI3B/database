<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tipe_sewa extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('tipe_sewa_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$tipe_sewa = $this->tipe_sewa_m->selectAll();
		echo  json_encode($tipe_sewa);
	}

	function getBy($field, $data, $key)
	{
		$this->keyrest->key($key);
		$tipe_sewa = $this->tipe_sewa_m->selectBy($field, $data);
		echo  json_encode($tipe_sewa);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->tipe_sewa_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->tipe_sewa_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->tipe_sewa_m->delete($id);
	}

}
