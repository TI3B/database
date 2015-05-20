<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kamar extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('kamar_m');
	}

	function getAll()
	{
		$kamar = $this->kamar_m->selectAll();
		echo  json_encode($kamar);
	}

	function getBy()
	{
		$id = $this->uri->segment(3);
		$kamar = $this->kamar_m->selectBy('kd_kamar', $id);
		echo  json_encode($kamar);
	}

	function postInsert()
	{
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->kamar_m->insert($data);
	}

	function postUpdate()
	{
		$id = $this->uri->segment(3);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->kamar_m->update($data, $id);
	}

	function delete()
	{
		$id = $this->uri->segment(3);
        echo  $this->kamar_m->delete($id);
	}

}
