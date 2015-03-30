<?php

class Log_model extends MY_Model {
    
    const DB_TABLE = 'log';
    const DB_TABLE_PK = 'log_id';

    /**
     * log unique id number
     * @var int
     */
    public $log_id;

    /**
     * id number of user that made modification
     * @var int
     */
    public $user_id;

    /**
     * id number of reservation involved
     * @var int
     */
    public $reservation_id;

    /**
     * date when the log was created
     * @var string
     */
    public $creation_date;

    /**
     * action that triggered log insertion
     * @var string
     */
    public $action;

    public function get_all_history()
    {
        $query_string = "
                        SELECT
                            lo.action           AS \"action\"
                            , us.username       AS \"user\"
                            , lo.reservation    AS \"reservation\"
                            , lo.creation_date  AS \"date\"
                        FROM
                          log lo
                          LEFT JOIN
                            user us ON us.user_id = lo.user_id
                        ORDER BY
                          lo.creation_date DESC
        ";
        $query = $this->db->query($query_string);
        return $query->result();
    }
}