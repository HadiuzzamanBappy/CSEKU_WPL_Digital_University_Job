<?php

include_once UTILITY.'class.util.inc';
include_once MODULES_JOB.'bao/class.job_list_bao.inc';


$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();
$_JobListBAO = new JobListBAO();

?>