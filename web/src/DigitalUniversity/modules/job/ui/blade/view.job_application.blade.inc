<?php

include_once UTILITY.'class.util.inc';
include_once MODULES_JOB.'bao/class.job_application_bao.inc';

$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();
$_JobApplicationBAO = new JobApplicationBAO();

?>