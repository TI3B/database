<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kamar_m extends CI_Model
{
  function selectAll()
  {
    $query = $this->db->get('tb_kamar');
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
    $query = $this->db->get('tb_kamar');
    return $query;
  }

  function insert($data)
  {
    $query = $this->db->insert('tb_kamar', $data);
    return $query;
  }

  function update($data, $id)
  {
    $this->db->where('kd_kamar', $id);
    $query = $this->db->update('tb_kamar', $data);
    return $query;
  }

  function delete($id)
  {
    $this->db->where('kd_kamar', $id);
    $query = $this->db->delete('tb_kamar');
    return $query;
  }

}