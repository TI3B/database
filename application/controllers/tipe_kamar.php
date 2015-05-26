<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tipe_kamar extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('tipe_kamar_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$tipe_kamar = $this->tipe_kamar_m->selectAll();
		echo  json_encode($tipe_kamar);
	}

	function getBy($id, $key)
	{
		$this->keyrest->key($key);
		$tipe_kamar = $this->tipe_kamar_m->selectBy('kd_tipe_kamar', $id);
		echo  json_encode($tipe_kamar);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->tipe_kamar_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->tipe_kamar_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->tipe_kamar_m->delete($id);
	}

}
