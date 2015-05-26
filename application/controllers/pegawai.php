<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pegawai extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('pegawai_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$pegawai = $this->pegawai_m->selectAll();
		echo  json_encode($pegawai);
	}

	function getBy($field, $data, $key)
	{
		$this->keyrest->key($key);
		$pegawai = $this->pegawai_m->selectBy($field, $data);
		echo  json_encode($pegawai);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->pegawai_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->pegawai_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->pegawai_m->delete($id);
	}

}
