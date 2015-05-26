<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kamar extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('kamar_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$kamar = $this->kamar_m->selectAll();
		echo  json_encode($kamar);
	}

	function getBy($field, $data, $key)
	{
		$this->keyrest->key($key);
		$kamar = $this->kamar_m->selectBy($field, $data);
		echo  json_encode($kamar);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->kamar_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->kamar_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->kamar_m->delete($id);
	}

}
