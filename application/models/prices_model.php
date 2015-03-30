<?php

class Prices_model extends MY_Model {
    
    const DB_TABLE = 'prices';
    const DB_TABLE_PK = 'prices_id';

    /**
     * price unique id number
     * @var int
     */
    public $prices_id;

    /**
     * id number of studio involved
     * @var int
     */
    public $studio_id;

    /**
     * money
     * @var double
     */
    public $value;

    /**
     * default value to be shown
     * @var boolean
     */
    public $default;

    /**
     * modification log
     * @var timestamp
     */
    public $date_modified;

    public function get_by_studio_id($studio_id) {
        $this->db->where("studio_id", $studio_id);
        $query = $this->db->get($this::DB_TABLE);
        $class = get_class($this);
        foreach ($query->result() as $row) {
            $model = new $class;
            $model->populate($row);
            $ret_val[$row->{$this::DB_TABLE_PK}] = $model;
        }
        return $ret_val;
    }


}