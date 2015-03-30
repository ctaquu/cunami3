<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Reservation extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        if(!$this->session->userdata('logged_in')) {
            redirect( 'user/login/' );
        }
    }

    /**
     * Index page for Reservations controller.
     */
    public function index()
    {
        $this->load->view('bootstrap/header');
        $this->load->view('index');
        $this->load->view('bootstrap/footer');
    }

    public function show($date, $location) {

        //set location in data for future use
        $this->session->set_userdata("studio_location", $location);

        $this->load->view('bootstrap/header');

        if(!isset($date) || $date == "today") {
            $date = date("Y-m-d");
        }

        $this->load->model("Reservation_model");
        $res = new Reservation_model();
        $reservations = array();
        foreach ($res->get_by_date($date) as $r) {
            $reservations[] = array(
                "reservation_id"    => $r->reservation_id,
                "studio_id"         => $r->studio_id,
                "customer"          => $r->customer,
                "reservation_code"  => $r->reservation_code,
                "color"             => $this->generate_random_rgb_color(),
                "price"             => $r->price
            );
        }

        $studios_data = $res->get_studios_data($location);

        $this->load->view('reservations', array(
            'reservations'  => $reservations,
            'date'          => $date,
            'date_name'     => $this->day_of_week($date),
            'studios_data'  => $studios_data,
//            'location'      =>
        ));
        $this->load->view('bootstrap/footer');
    }

    public function do_reservation() {
        $data = array(
            "user_id"             => $this->input->post('user_id'),
            "studio_id"           => $this->input->post('studio_id'),
            "customer"            => $this->input->post('customer'),
            "reservation_date"    => $this->input->post("reservation_date"),
            "reservation_code"    => $this->input->post("reservation_code"),
            "price"               => $this->input->post("price")
        );
        if(!$this->db->insert("reservation", $data)) {
            die("error");
        }

        $this->log_action("create", $this->input->post('customer'));
    }

    public function update_reservation() {

        $data = array(
            'customer'  => $this->input->post('customer'),
            'price'     => $this->input->post('price')
        );

        $this->load->model("Reservation_model");
        $r = new Reservation_model();
        $old_custmer_name = $r->get_customer_from_id($this->input->post('reservation_id'))->customer;

        $this->db->where('reservation_id', $this->input->post('reservation_id'));
        if($this->db->update('reservation', $data)) {
            $this->log_action("update", $old_custmer_name . " to: " . $this->input->post('customer'));
            die("ok");
        }


    }

    public function delete_reservation() {

        $this->load->model("Reservation_model");
        $r = new Reservation_model();
        $this->log_action("delete", $r->get_customer_from_id($this->input->post('reservation_id'))->customer);

//        $r->get_customer_from_id("95")[0]->customer;

        $this->db->where('reservation_id', $this->input->post('reservation_id'));
        if($this->db->delete('reservation')) {
            die("ok");
        }
    }

    public function get_reservations_for_specific_date() {

        $date = $this->input->post("reservation_date");
        if(!isset($date)) {
            $date = date("Y-m-d");
        }

        $this->load->model("Reservation_model");
        $res = new Reservation_model();
//
//        echo json_encode("dslkdjs");
        $sum = $res->get_prices_sum($date);
        $sum_week = $res->get_prices_sum_week($date);
        $sum_month = $res->get_prices_sum_month($date);
        $res->get_by_date("2014-08-10");
        $reservations = array();

        foreach ($res->get_by_date($date) as $r) {
            $reservations[] = array(
                "studio_id"         => $r->studio_id,
                "customer"          => $r->customer,
                "reservation_code"  => $r->reservation_code,
                "color"             => $this->generate_random_rgb_color(),
                "reservation_id"    => $r->reservation_id,
                "price"             => $r->price
            );
        }

        echo json_encode(array(
            "reservations"      => $reservations
            , "sum"             => $sum[0]->sum
            , "sum_week"        => $sum_week[0]->sum
            , "sum_month"       => $sum_month[0]->sum
            , "day_of_the_week" => $this->day_of_week($date)
        ));

    }

    /**
     *
     */
    public function get_prices()
    {
        $studio_id = $this->input->post("studio_id");
        $reservation_date = $this->input->post("reservation_date");
        $this->load->model("Prices_model");
        $pri = new Prices_model();
        $prices = array();
        foreach ($pri->get_by_studio_id($studio_id, $reservation_date) as $r) {
            $prices[] = array(
                "price"     => $r->value,
                "id"        => $r->prices_id,
                "default"   => $r->default
            );
        }
        echo json_encode($prices);
    }

    /**
     * opens log page
     */
    public function show_history() {
        $this->load->view('bootstrap/header');

        $this->load->model("Log_model");
        $log = new Log_model();

        $data = $log->get_all_history();

        $this->load->view("history", array(
            "data"  => $data
        ));
        $this->load->view('bootstrap/footer');
    }
    
    /**
     * Date validation callback.
     * @param string $input
     * @return boolean
     */
    public function date_validation($input) {
        $test_date = explode('-', $input);
        if (!@checkdate($test_date[1], $test_date[2], $test_date[0])) {
            $this->form_validation->set_message('date_validation', 'The %s field must be in YYYY-MM-DD format.');
            return FALSE;
        }
        return TRUE;
    }

    /**
     * helper function to generate random rgba color
     * @param int $min Optional
     * @param int $max Optional
     * @return string
     */
    private function generate_random_rgb_color($min=0, $max=5) {
        $color = "";
        for($i=0; $i<3; $i++) {
            $color .= rand($min, $max);
        }
        return $color;
    }

    private function day_of_week($date) {
        $date_obj = strtotime($date);
        $date_name = date("l", $date_obj);
        return $this->to_serbian_day_of_week($date_name);
    }

    private function to_serbian_day_of_week($day)
    {
        $days = array(
            "Monday"        => "Ponedeljak"
            , "Tuesday"     => "Utorak"
            , "Wednesday"   => "Sreda"
            , "Thursday"    => "Četvrtak"
            , "Friday"      => "Petak"
            , "Saturday"    => "Subota"
            , "Sunday"      => "Nedelja"
        );

        return $days[$day];
    }

    private function log_action($type, $reservation) {
        $this->load->model("User_model");
        $u = new User_model();
        $data = array(
            "user_id"           => $this->session->userdata("user_id")
//            "user_id"           => $this->input->post('user_id')
            , "reservation"  => $reservation
            , "action"          => $type
        );
        if(!$this->db->insert("log", $data)) {
            die("error");
        }
    }
}