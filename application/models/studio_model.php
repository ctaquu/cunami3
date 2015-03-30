<?php

class Studio_model extends MY_Model {
    
    const DB_TABLE = 'studio';
    const DB_TABLE_PK = 'studio_id';

    /**
     * studio unique id number
     * @var int
     */
    public $studio_id;

    /**
     * location of studio id number
     * @var int
     */
    public $location_id;

    /**
     * name of studio
     * @var string
     */
    public $name;

    /**
     * status of studio
     * @var string
     */
    public $status;
}