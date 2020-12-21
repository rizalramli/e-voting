<?php

class M_crud extends CI_Model
{
    public function tampil_data($table)
    {
        return $this->db->get($table);
    }

    public function input_data($data, $table)
    {
        $this->db->insert($table, $data);
    }

    public function edit_data($where, $table)
    {
        return $this->db->get_where($table, $where);
    }

    public function update_data($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table, $data);
    }

    public function hapus_data($where, $table)
    {
        $this->db->where($where);
        $this->db->delete($table);
    }

    function get_data_group_by($table, $where, $group_by, $order_by)
    {
        $this->db->group_by($group_by);
        $this->db->order_by($order_by, "ASC");
        return $this->db->get_where($table, $where);
    }

    function get_data_order_by_desc($table, $where, $order_by)
    {
        $this->db->order_by($order_by, "DESC");
        return $this->db->get_where($table, $where);
    }

    function get_data_voting($date)
    {
        $this->db->where('is_active =', 1);
        $this->db->where('start <=', $date);
        $this->db->where('end >=', $date);
        return $this->db->get('voting');
    }
}
