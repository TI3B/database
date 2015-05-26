<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Gaji_pegawai extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('gaji_pegawai_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$gaji_pegawai = $this->gaji_pegawai_m->selectAll();
		echo  json_encode($gaji_pegawai);
	}

	function getBy($id, $key)
	{
		$this->keyrest->key($key);
		$gaji_pegawai = $this->gaji_pegawai_m->selectBy('kd_gaji_pegawai', $id);
		echo  json_encode($gaji_pegawai);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->gaji_pegawai_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->gaji_pegawai_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->gaji_pegawai_m->delete($id);
	}

}
