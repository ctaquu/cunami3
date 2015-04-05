<?php
class Reservation_model extends MY_Model {
    
    const DB_TABLE = 'reservation';
    const DB_TABLE_PK = 'reservation_id';

    /**
     * reservation unique id number
     * @var int
     */
    public $reservation_id;

    /**
     * id number of user that created reservation
     * @var int
     */
    public $user_id;

    /**
     * id number of reserved studio
     * @var int
     */
    public $studio_id;

    /**
     * name of customer that made the reservation
     * @var string
     */
    public $customer;

    /**
     * @var double
     */
    public $price;

    /**
     * reservation appointed date
     * @var string
     */
    public $reservation_date;

    /**
     * string 7 characters long; first 3 digit number separated by "_" represents
     * starting hour (fist number is studio, the other two are hour) and second
     * 3 digit number is ending hour (same format as the first one)
     * @var string
     */
    public $reservation_code;

    /**
     * date when the reservation was created
     * @var string
     */
    public $creation_date;

    /**
     * status of reservation (...)
     * @var string
     */
    public $status;

    /**
     * get reservations for single date
     * @param $date string
     * @param int $location studio location
     * @param int $limit Optional
     * @param int $offset Optional; if set requires $limit
     * @return array Models populated by database, keyed by PK.
     */
    public function get_by_date($date, $limit = 0, $offset = 0) {

        $location_id = $this->session->userdata('studio_location');

        $query_string = "   SELECT re.*
                            FROM reservation re
                            LEFT JOIN studio st ON st.studio_id = re.studio_id
                            WHERE re.reservation_date BETWEEN TIMESTAMP('$date', '00:00:01') AND TIMESTAMP('$date', '24:00:00')
                                AND st.location_id = $location_id
                            ";
//        $this->db->where("reservation_date BETWEEN TIMESTAMP('$date') AND TIMESTAMP('$date', '24:00:00')");
//        if ($limit) {
            $query = $this->db->query($query_string);
//            $query = $this->db->get($this::DB_TABLE, $limit, $offset);
//        }
//        else {
//            $query = $this->db->get($this::DB_TABLE);
//        }
        $ret_val = array();
        $class = get_class($this);
        foreach ($query->result() as $row) {
            $model = new $class;
            $model->populate($row);
            $ret_val[$row->{$this::DB_TABLE_PK}] = $model;
        }
        return $ret_val;
    }

    /**
     * @return array
     */
    public function get_studios_data ($location_id) {

//        $location_id = $this->session->userdata('studio_location');

        $location_id = (int)$location_id;

        $query_string = "   SELECT st.*, lo.color
                            FROM studio st
                            LEFT JOIN location lo ON lo.location_id = st.location_id
                            WHERE st.location_id = $location_id
        ";
        $query = $this->db->query($query_string);
//        $ret_val = array();
//        foreach($query->result() as $row) {
//            array
//        }
        return $query->result();
    }

//    public function update_reservation($reservation_id, $customer) {
//        $data = array(
//            'customer' => $customer,
//        );
//
//        $this->db->where('reservation_id', $reservation_id);
//        return $this->db->update('reservation', $data);
//    }

    public function get_prices_sum($date) {

        $location_id = $this->session->userdata('studio_location');

        $query_string = "
                        SELECT
                          SUM(re.price) AS sum
                        FROM
                          reservation re
                          LEFT JOIN
                            studio st ON st.studio_id = re.studio_id
                        WHERE re.reservation_date LIKE TIMESTAMP('$date 00:00:01')
                          AND st.location_id = $location_id
        ";
        $query = $this->db->query($query_string);
        return $query->result();
    }

    public function get_prices_sum_week($date) {

        $location_id = $this->session->userdata('studio_location');

        $query_string = "
                    SELECT
                      st.location_id                    location,
                      YEARWEEK(re.reservation_date, 3)  week,
                      SUM(re.price)                     sum
                    FROM
                      reservation re
                      LEFT JOIN studio st ON st.studio_id = re.studio_id
                    WHERE
                      st.location_id = ?
                    GROUP BY
                      location
                      , week
                    HAVING
                      week = YEARWEEK(?, 3)
                    ;
        ";

        $query = $this->db->query($query_string, [
            $location_id
            , "$date 00:00:01"
        ]);
        return $query->result();
    }

    public function get_prices_sum_month($date) {

        $location_id = $this->session->userdata('studio_location');

        $date = substr($date, 0, 7);

        $query_string = "
            SELECT
              SUM(re.price) AS sum
            FROM
              reservation re
              LEFT JOIN
                studio st ON st.studio_id = re.studio_id
            WHERE reservation_date BETWEEN '$date-01' AND DATE_ADD('$date-01', INTERVAL 1 MONTH)
              AND st.location_id = $location_id
        ";
        $query = $this->db->query($query_string);
        return $query->result();
    }

    public function get_customer_from_id($id)
    {
        $this->db->select('customer');
        $this->db->where('reservation_id', $id);
        $query = $this->db->get('reservation');

        return $query->result()[0];
    }

}