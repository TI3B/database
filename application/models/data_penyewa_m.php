<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Data_penyewa_m extends CI_Model
{

  public $table = "tb_data_penyewa";
  public $id = "kd_data_penyewa";

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