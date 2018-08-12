<?php

include_once UTILITY.'class.util.inc';
include_once MODULES_JOB.'dao/class.job_post_dao.inc';


/*
	Job Process Object 
*/
Class JobBAO{

	private $_DB;
	private $_JobDAO;

	public function __construct(){

		$this->_JobDAO = new JobDAO();

	}

	//new Job post request funtion with the job object
	public function newJobRequest($Job){

		$Result = new Result();	
		$Result = $this->_JobDAO->newJobRequest($Job);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in JobDAO.newJobRequest()");		

		return $Result;

	
	}

}

//$_Log->log(LogUtil::$DEBUG," exit the class.userbao.inc");

?>