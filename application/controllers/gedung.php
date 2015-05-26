<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Gedung extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('gedung_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$gedung = $this->gedung_m->selectAll();
		echo  json_encode($gedung);
	}

	function getBy($id, $key)
	{
		$this->keyrest->key($key);
		$gedung = $this->gedung_m->selectBy('kd_gedung', $id);
		echo  json_encode($gedung);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->gedung_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->gedung_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->gedung_m->delete($id);
	}

}
