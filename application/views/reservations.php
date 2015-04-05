<?php
    $hour_from = 10;
    $hour_to   = 23;
?>

<div id="main_container">
    <input id="txt_date" type="text" value="<?php echo $date; ?>" />
    <lablel id="txt_date_name" class="day_of_the_week"><?php echo $date_name; ?></lablel>
    <div class="clear"></div>
    <div class="hour_column row_hour_title_right">
        <div class="row_hour_title"></div>
        <?php for ($i = $hour_from; $i <= $hour_to; $i++): ?>
            <div rel="<?php echo ($i < 10) ? "0" . $i : $i; ?>"
                 class="row_hour_title"><?php echo ($i < 10) ? "0" . $i : $i; ?>h
            </div>
        <?php endfor; ?>
    </div>
    <?php for ($i = 0; $i < count($studios_data); $i++): ?>
    <div class="studio_column">
        <div class="studio_column_title">
            <?php echo $studios_data[$i]->name; ?>
        </div>
        <?php for ($j = $hour_from; $j <= $hour_to; $j++): ?>
        <div class="reservation_hour"
         id="<?php echo $i+1; ?><?php echo ($j < 10) ? "0" . $j : $j; ?>"
         hour           = "<?php echo $j; ?>"
        studio = "<?php echo $studios_data[$i]->studio_id; ?>"
        selected_hour = 0
        >
            <span class='customer_name_container'></span>
    </div>
<?php endfor; ?>
</div>
<?php endfor; ?>
<!--        --><?php //if($_SERVER['REMOTE_ADDR'] == "89.216.16.193") { ?>
            <div class="hour_column row_hour_title_left">
                <div class="row_hour_title"></div>
                <?php for ($i = $hour_from; $i <= $hour_to; $i++): ?>
                    <div rel="<?php echo ($i < 10) ? "0" . $i : $i; ?>"
                         class="row_hour_title"><?php echo ($i < 10) ? "0" . $i : $i; ?>h
                    </div>
                <?php endfor; ?>
            </div>
<!--        --><?php //} ?>
</div>
<div class="clear"></div>
<div class="sum_container">
    <label>
        Total:: <span id="sum">0</span>
    </label>
    <label>
        Week(<span id="week_number">0</span>) Total:: <span id="sum_week">0</span>
    </label>
    <label>
        Month Total:: <span id="sum_month">0</span>
    </label>
</div>
<div class="action_button book_button">Book</div>

<!-- Modal -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal_book">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Booking</h3>
        </div>
        <div class="modal-body">
            <div><input type="text" id="txt_customer_book" class="txt_customer" name="txt_customer" placeholder="Name"/> &nbsp;
            <select class="price_select" id="price_select_book" ></select>
        </div>
        <div class="modal-footer">
                <button class="btn btn-primary btn_submit_reservation" >Book</button></div>
        </div>
    </div>
    <div class="modal_edit">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Editing</h3>
        </div>
        <div class="modal-body">
            <div><input type="text" id="txt_customer_edit" class="txt_customer" name="txt_customer" placeholder="Name"/> &nbsp;
                <select class="price_select" id="price_select_edit">
                    <option>to</option>
                    <option>be</option>
                    <option>replaced</option>
                </select>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary btn_update_reservation" >Update</button>
                <button class="btn btn-primary btn_delete_reservation" >Delete</button></div>
        </div>
    </div>
    <div class="modal_desc">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Description</h3>
        </div>
        <div class="modal-body">
            <div><input type="text" id="txt_customer_edit" class="txt_customer" name="txt_customer" placeholder="Name" disabled /> &nbsp;
                <select class="price_select" id="price_select_edit" disabled >
                    <option>to</option>
                    <option>be</option>
                    <option>replaced</option>
                </select>
            </div>
        </div>
    </div>
</div>

<div class="overlay_modal"><!-- Place at bottom of page --></div>

<script src="<?php echo base_url("js/jquery-1.10.2.js"); ?>" ></script>
<script>
<!--    --><?php //foreach ($reservations as $res): ?>
//    set_selected_reservation_div("<?php //echo $res["reservation_code"]; ?>//"
//                                    , "<?php //echo $res["color"]; ?>//"
//                                    , "<?php //echo $res["customer"]; ?>//"
//                                    , "<?php //echo $res["reservation_id"]; ?>//"
//                                    , "<?php //echo $res["price"]; ?>//"
//    );
//    <?php //endforeach; ?>


//    /**
//     * helper function to set the style of selected div
//     * @param int div_id
//     */
//    function set_selected_reservation_div(code, div_color, customer, reservation_id, price) {
//        ids = code.split("_");
////        ids.every(function(div_id, i, arr) {
//        for(i=ids[0]; i<=ids[1]; i++) {
////            console.log(i);
//            $(" #" + i ).addClass("hour_selected");
//            $(" #" + i ).addClass("old_reservation");
//            $(" #" + i ).html(customer.length > 7 ? customer.substr(0, 6) + "..." : customer );
//            $(" #" + i ).css({
//                "background-color": "#" + div_color
//            });
//            $(" #" + i ).attr("idd", reservation_id);
//            $(" #" + i ).attr("full_name", customer);
//            $(" #" + i ).attr("price", price);
//        }
//    }

    var background_color = "<?php echo $studios_data[0]->color; ?>";

    $(document).ready(function(ee) {

    });

</script>