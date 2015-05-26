<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Jabatan extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('jabatan_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$jabatan = $this->jabatan_m->selectAll();
		echo  json_encode($jabatan);
	}

	function getBy($id, $key)
	{
		$this->keyrest->key($key);
		$jabatan = $this->jabatan_m->selectBy('kd_jabatan', $id);
		echo  json_encode($jabatan);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->jabatan_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->jabatan_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->jabatan_m->delete($id);
	}

}
