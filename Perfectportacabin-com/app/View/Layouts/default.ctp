<?php Configure::write('debug', 0); ?>
<?php echo $this->element('jenish/head'); ?>
<?php echo $this->element('jenish/header'); ?>
<?php echo $this->fetch('content'); ?>
<?php echo $this->element('jenish/footer'); ?>