<?php

class User_model extends MY_Model {
    
    const DB_TABLE = 'user';
    const DB_TABLE_PK = 'user_id';

    /**
     * user unique id number
     * @var int
     */
    public $user_id;

    /**
     * user unique username
     * @var string
     */
    public $username;

    /**
     * user unique email address
     * @var string
     */
    public $email;

    /**
     * user secret password (sha1)
     * @var string
     */
    public $password;

    /**
     * date of user registration
     * @var string
     */
    public $registration_date;

    /**
     * status of user (active, new, inactive, blocked)
     * @var string
     */
    public $status;

    /**
     * type of user (id from table user_type)
     * @var int
     */
    public $type;

    /**
     * user first name
     * @var string
     */
    public $first_name;

    /**
     * user last name
     * @var string
     */
    public $last_name;

    public function get_by_user_name($user_name, $limit = 0, $offset = 0) {

        $this->db->where("username", $user_name);
        if ($limit) {
            $query = $this->db->get($this::DB_TABLE, $limit, $offset);
        }
        else {
            $query = $this->db->get($this::DB_TABLE);
        }
        $ret_val = array();
        $class = get_class($this);
        foreach ($query->result() as $row) {
            $model = new $class;
            $model->populate($row);
            $ret_val[$row->{$this::DB_TABLE_PK}] = $model;
        }
        return $ret_val;
    }

    public function validate_password($user_id, $password)
    {
        $this->db->where(array(
            "user_id"   => $user_id
            ,"password" => sha1($password{SALT})
        ));
        if($this->db->count_all($this::DB_TABLE) > 0) {
            return true;
        }
        return false;
    }

//    public function get_id_from_user_name($user_name)
//    {
//        $this->db->select('user_id');
//        $this->db->where('username', $user_name);
//        $query = $this->db->get('user');
//
//        return $query->result();
//    }
}