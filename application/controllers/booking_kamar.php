<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Booking_kamar extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('booking_kamar_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$booking_kamar = $this->booking_kamar_m->selectAll();
		echo  json_encode($booking_kamar);
	}

	function getBy($field, $data, $key)
	{
		$this->keyrest->key($key);
		$booking_kamar = $this->booking_kamar_m->selectBy($field, $data);
		echo  json_encode($booking_kamar);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->booking_kamar_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->booking_kamar_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->booking_kamar_m->delete($id);
	}

}
