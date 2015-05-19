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
}
