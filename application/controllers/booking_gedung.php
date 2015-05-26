<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Booking_gedung extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('booking_gedung_m');
	}

	function getAll($key)
	{
		$this->keyrest->key($key);
		$booking_gedung = $this->booking_gedung_m->selectAll();
		echo  json_encode($booking_gedung);
	}

	function getBy($id, $key)
	{
		$this->keyrest->key($key);
		$booking_gedung = $this->booking_gedung_m->selectBy('kd_booking_gedung', $id);
		echo  json_encode($booking_gedung);
	}

	function postInsert($key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        $this->booking_gedung_m->insert($data);
	}

	function postUpdate($id, $key)
	{
		$this->keyrest->key($key);
		$data = json_decode(file_get_contents("php://input"));
        echo  $this->booking_gedung_m->update($data, $id);
	}

	function delete($id, $key)
	{
		$this->keyrest->key($key);
        echo  $this->booking_gedung_m->delete($id);
	}

}
