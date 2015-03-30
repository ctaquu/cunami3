<h2>History</h2>
<?php //var_dump($data[0]->action); die; ?>
<ul class="log_list">
<?php foreach ($data as $log): ?>

<li>
    [<?php echo $log->date; ?>]
    <?php echo $log->user; ?>:
    <?php echo $log->action; ?> ->
    <?php echo $log->reservation; ?>
</li>

<?php endforeach; ?>
</ul>
