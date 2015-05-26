<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Booking_gedung_m extends CI_Model
{

  public $table = "tb_booking_gedung";
  public $id = "kd_booking_gedung";

  function selectAll()
  {
    $query = $this->db->get($this->table);
    if ($query->num_rows()>0)
    {
      return $query->result();
    }
    else
    {
      return array();
    }
  }

  function selectBy($field, $data)
  {
    $this->db->where($field, $data);
    $query = $this->db->get($this->table);
    return $query->result();
  }

  function insert($data)
  {
    $query = $this->db->insert($this->table, $data);
    return $query;
  }

  function update($data, $id)
  {
    $this->db->where($this->id, $id);
    $query = $this->db->update($this->table, $data);
    return $query;
  }

  function delete($id)
  {
    $this->db->where($this->id, $id);
    $query = $this->db->delete($this->table);
    return $query;
  }

}