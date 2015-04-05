var selected_hours = new Array();
var selection_started = false;
var background_color;
var reservation_id_to_update;
var clicked_element;
var date = null;

// unblock when ajax activity stops
//$(document).ajaxStop($.unblockUI);
//$(document).ajaxStart($.blockUI).ajaxStop($.unblockUI);

// overylay loading
$body = $("body");

$(document).on({
    ajaxStart: function() { $body.addClass("loading");    },
    ajaxStop: function() { $body.removeClass("loading"); }
});

// document.ready //

$(document).ready(function (eee) {

    // set background color for different studio locations
    if(!background_color) {
        background_color = "EEEEEE";
    }
    $( " body ").css("background-color", "#" + background_color);
    desaturate_element_background("body");

    //calculate_sum();
    repopulate_table("now");

    // set datepicker
    $('#txt_date').datepicker({
        dateFormat: 'yy-mm-dd',
        firstDay: 1,
        onSelect: function(dateText) {
            repopulate_table(dateText);
        }
    }).val();

    // index page
    $(" .studio_selection ").on({
        click: function(e) {
            e.preventDefault();
            $studio = $(this).attr("studio");
            window.open("reservation/show/today/" + $studio, "_self");
        }
    });

    $(" .reservation_hour ").on({
        click: function (e) {
            e.preventDefault();
            //var d = new Date();
            //var n = d.getTime();
            //var now = new Date($('#txt_date').val());
            //var tomorrow = new Date();
            //tomorrow.setDate(tomorrow.getDate() + 1);
            //var max_allowed_date = new Date($('#txt_date').val());
            //max_allowed_date.setDate(max_allowed_date.getDate() + 1);

            var max_allowed_date = new Date($('#txt_date').val());
            max_allowed_date.setDate(max_allowed_date.getDate() + 1);
            //if(date )

            clicked_element = $(" #" + e.target.id);

            if($(this).hasClass("new_selection_active")) {
                modify_selection($(this));
            } else if($(this).hasClass("old_reservation")) {
                modify_reservation($(this));
            } else {
                if(new Date() <= max_allowed_date) {
                    select($(this));
                }
            }

            //if(new Date() > max_allowed_date) {
            //    debugger;
            //    //$(this).html(
            //    //    "<span class='customer_name_container'>"
            //    //    + $(this).attr("full_name")
            //    //    + "</span>"
            //    //);
            //    $(" #myModal ").modal("show");
            //    $(" .modal_book ").hide();
            //    $(" .modal_edit ").hide();
            //    $(" .modal_desc ").show();
            //    //modify_reservation($(this));
            //    return;
            //}
        }
    });

    $(" .book_button ").on({
        click: function(e) {
            e.preventDefault();

            $selectValues = new Array();

            $.ajax({
                url: base_url + "reservation/get_prices",
                method: "post",
                dataType: "json",
                data: {
                    studio_id:   $(clicked_element).attr("studio"),
                    reservation_date: $('#txt_date').val()
                },
                success: function(result) {
                    $(" #price_select_book ").empty();
                    $(" #price_select_book ").append("<option value='0'>0</option>");
                    result.forEach(function(price) {
                        $tmp = $('<option>', { value : price.price });
                        $tmp.text(price.price);
                        if(price.default === "1") {
                            $tmp.attr('selected', 'selected');
                        }
                        $(" #price_select_book ").append($tmp);
                    });

                    $.each($selectValues, function(key, value) {

                        $(" #price_select_book ")
                            .append($('<option>', { value : key })
                                .text(value));
                    });

                    $(" .modal_edit ").hide();
                    $(" .modal_desc ").hide();
                    $(" .modal_book ").show();
                    $(" #myModal ").modal("show");
                },
                error: function(x, e, m) {
                    console.log('ajax error:: ' + e + ", msg: " + m);
                }
            });
        }
    });

    $(" .btn_submit_reservation ").on({
        click: function (e) {
            e.preventDefault();
            $(" #myModal ").modal("hide");
            $(" .action_button ").fadeOut('fast');

            $max = $min = parseInt($(" .new_selection_active.reservation_hour ").attr("id"));
            $(" .new_selection_active.reservation_hour ").each(function() {
                $tmp_val = parseInt($(this).attr("id"));
                if($max < $tmp_val) {
                    $max = $tmp_val;
                }
                if($min > $tmp_val) {
                    $min = $tmp_val;
                }
            });
            $.ajax({
                url: base_url + "reservation/do_reservation",
                method: "post",
                data: {
                    user_id:            1, //TODO666: change db insert to match logged user
                    studio_id:          $(" .new_selection_active.reservation_hour ").attr("studio"),
                    customer:           $(" #txt_customer_book").val(),
                    reservation_date:   $(" #txt_date ").val() + " 00:00:01",
                    reservation_code:   $min + "_" + $max,
                    price:              $(" #price_select_book ").val()
                },
                success: function(result) {
                    repopulate_table($(" #txt_date ").val());
                    $(" #txt_customer_book").val("");
                },
                error: function(x, e, m) {
                    console.log('ajax error:: ' + e);
                }
            });
        }
    });

    $(" .btn_update_reservation ").on({
        click: function (e) {
            e.preventDefault();
            $(" #myModal ").modal("hide");
            $.ajax({
                url: base_url + "reservation/update_reservation",
                method: "post",
                data: {
                    reservation_id:     reservation_id_to_update,
                    customer:           $(" #txt_customer_edit").val(),
                    price:              $(" #price_select_edit ").val()
                },
                success: function(result) {
                    if(result === "ok") {
                        repopulate_table($(" #txt_date ").val());
                    }
                },
                error: function(x, e, m) {
                    console.log('ajax error:: ' + e);
                }
            });
        }
    });

    $(" .btn_delete_reservation ").on({
        click: function (e) {
            e.preventDefault();
            $(" #myModal ").modal("hide");
            $.ajax({
                url: base_url + "reservation/delete_reservation",
                method: "post",
                data: {
                    reservation_id:            reservation_id_to_update
                },
                success: function(result) {
                    if(result === "ok") {
                        repopulate_table($(" #txt_date ").val());
                    }
                },
                error: function(x, e, m) {
                    console.log('ajax error:: ' + e);
                }
            });
        }
    });

});

// end of document.ready //

// add to selection when clicked on previously non-selected field
function select(el) {
    $id = parseInt(el.attr("id"));

    if(!(
            // check if clicked field is first neighbour of first previously selected fields
        selected_hours.indexOf($id - 1) > -1 || selected_hours.indexOf($id + 1) > -1
            //&& !el.hasClass("new_selection_active")
        )
            // or is first one selected
        && selection_started
    ) {
        // do nothing
        return;
    }

    // all good, mark it as selected
    // mark selecting as started
    selection_started = true;

    reposition_action_button();

    $(" .action_button ").fadeIn('fast');

    // add selected field to a array of previously selected ones
    selected_hours.push(parseInt(el.attr("id")));

    el.addClass("new_selection_active");
    el.addClass("hour_selected");

}

// modify selection when clicked on previously selected field
function modify_selection(el) {
    var id_to_remove = parseInt(el.attr("id"));
    var index = selected_hours.indexOf(id_to_remove);

    // is border element or not
    if(!(id_to_remove === array_max(selected_hours) || id_to_remove === array_min(selected_hours))) {
        return;
    }

    if (index > -1) {
        selected_hours.splice(index, 1);
    }

    // reset selection if last one deselected
    if(selected_hours.length === 0) {
        selection_started = false;
        $(" .action_button ").fadeOut('fast');
    }

    el.removeClass("hour_selected");
    el.removeClass("new_selection_active");

    reposition_action_button();

    return;
}

// modify reservation when clicked on active reservation
function modify_reservation(el) {
    if(selection_started) {
        return;
    }
    reservation_id_to_update = el.attr("idd");

    $.ajax({
        url: base_url + "reservation/get_prices",
        method: "post",
        dataType: "json",
        data: {
            studio_id:   $(clicked_element).attr("studio"),
            reservation_date: $('#txt_date').val()
        },
        success: function(result) {

            var max_allowed_date = new Date($('#txt_date').val());
            max_allowed_date.setDate(max_allowed_date.getDate() + 1);

            $(" #price_select_edit ").empty();
            $(" #price_select_edit ").append("<option value='0'>0</option>");

            result.forEach(function(price) {
                $tmp = $('<option>', { value : price.price });
                $tmp.text(price.price);
                //if(price.default === "1") {
                //    $tmp.attr('selected', 'selected');
                //}
                $(" #price_select_edit ").append($tmp);
            });

            $(" #txt_customer_edit ").val(el.attr("full_name"));
            //$(" #price_select_edit ").val(el.attr("price"));
            $(' #price_select_edit option').filter(function() {
                return ($(this).text() == el.attr("price"));
            }).prop('selected', true);
            $(" .modal_book ").hide();
            if(new Date() > max_allowed_date) {
                $(" .modal_edit ").hide();
                $(" .modal_desc ").show();
            } else {
                $(" .modal_desc ").hide();
                $(" .modal_edit ").show();
            }
            $(" #myModal ").modal("show");
        },
        error: function(x, e, m) {
            console.log('ajax error:: ' + e + ", msg: " + m);
        }
    });


}

// position action button next to last modified field
function reposition_action_button() {
    var offset = clicked_element.offset();
    var posY = offset.top - $(window).scrollTop();
    var posX = offset.left - $(window).scrollLeft();

    var dX = parseInt(clicked_element.css("width").replace(/[^-\d\.]/g, ''));
    if(event.pageX > window.innerWidth - 166) {
        dX *= -1;
    }
    $(" .action_button ").css({
        left: posX + (dX),
        top: posY
    });
}

function array_max(num_array) {
    return Math.max.apply(null, num_array);
}

function array_min(num_array) {
    return Math.min.apply(null, num_array);
}

/**
 * repopulate table via ajax call for specific date
 * @param date string
 */
function repopulate_table(date) {
    if(date == "now") {
        date = $(" #txt_date ").val();
    }
    $.ajax({
        url: base_url + "reservation/get_reservations_for_specific_date",
        method: "post",
        dataType: "json",
        data: {
            reservation_date:   date
        },
        success: function(result) {
            $(" .book_button ").hide();
            $(" .new_selection_active ").removeClass("new_selection_active");
            $(" .hour_selected ").removeClass("hour_selected");
            $(" .old_reservation ").removeClass("old_reservation");
            $(" .reservation_hour ").removeAttr("style");
            $(" .customer_name_container ").html("");
            result.reservations.forEach(function(reservation) {
                set_selected_reservation_div(
                    reservation["reservation_code"],
                    generate_random_rgb_color(0, 6),
                    reservation["customer"],
                    reservation["reservation_id"],
                    reservation["price"]
                );
            });
            reset_global_variables();
            $(" #sum ").html(result.sum ? result.sum : "0");
            $(" #sum_week ").html(result.sum_week ? result.sum_week : "0");
            $(" #week_number ").html(result.week_number ? result.week_number : "0");
            $(" #sum_month ").html(result.sum_month ? result.sum_month : "0");
            $(" .day_of_the_week ").html(result.day_of_the_week);
            //calculate_sum();
        },
        error: function(x, e, m) {
            console.log('ajax error:: ' + e);
        }
    });
}

/**
 * helper function to set the style of selected div
 * @param int div_id
 */
function set_selected_reservation_div(code, div_color, customer, reservation_id, price) {
    ids = code.split("_");
    for(i=ids[0]; i<=ids[1]; i++) {
        $(" #" + i ).addClass("hour_selected");
        $(" #" + i ).addClass("old_reservation");
        //customer_name = "<span class='customer_name_container'>" + customer + "</span>";
        $(" #" + i + " .customer_name_container" ).html(customer.length > 7 ? customer.substr(0, 6) + "..." : customer );
        $(" #" + i ).css({
            "background-color": "#" + div_color
        });
        $(" #" + i ).attr("idd", reservation_id);
        $(" #" + i ).attr("full_name", customer);
        $(" #" + i ).attr("price", price);
    }
}

/**
 * helper function to generate random rgba color
 * @param int $min Optional
 * @param int $max Optional
 * @return string
 */
function generate_random_rgb_color(min, max) {
    $color = "";
    for($i=0; $i<3; $i++) {
        $color += getRandomInt(min, max);
    }
    return $color;
}

/**
 * Returns a random integer between min (inclusive) and max (inclusive)
 * Using Math.round() will give you a non-uniform distribution!
 */
function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function reset_global_variables() {
    selected_hours = new Array();
    max_burn = false;
    min_burn = false;
    selected_hours_max = new Array();
    selected_hours_min = new Array();
    selection_started = false;
}

function calculate_sum() {
    var sum = 0;
    var array = $( "div[idd]" ).map(function() { return $(this).attr('price'); });
    array = ArrNoDupe(array);
    if(array.length > 0) {
        var sum = array.reduce(function(a, b) {
            return parseInt(a) + parseInt(b);
        });
        $(" #sum ").html(sum);
    }
    return sum;
}

function ArrNoDupe(a) {
    var temp = {};
    for (var i = 0; i < a.length; i++)
        temp[a[i]] = true;
    var r = [];
    for (var k in temp)
        r.push(k);
    return r;
}

function rgb_to_string(r, g, b) {
    return 'rgb(' + r + ', ' + g + ', ' + b + ')';
}

function desaturate_element(el) {
    var rgb = $(el).css('color').match(/\d+/g);
    $(el).css('color', desaturate(rgb[0], rgb[1], rgb[2]));
}

function desaturate_element_background(el) {
    var rgb = $(el).css('background-color').match(/\d+/g);
    $(el).css('background-color', desaturate2(rgb[0], rgb[1], rgb[2]));
}

function desaturate(r, g, b) {
    var k = .1;
    r = Math.floor(intensity * k + r * (1 - k));
    g = Math.floor(intensity * k + g * (1 - k));
    b = Math.floor(intensity * k + b * (1 - k));
    return [r, g, b];
}

function desaturate2(r, g, b) {
    var k = 200;
    r = (r + k) > 255 ? 255 : r + k;
    g = (g + k) > 255 ? 255 : g + k;
    b = (b + k) > 255 ? 255 : b + k;
    return [r, g, b];
}