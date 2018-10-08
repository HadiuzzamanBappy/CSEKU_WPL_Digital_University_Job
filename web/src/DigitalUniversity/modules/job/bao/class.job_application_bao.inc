<?php

include_once UTILITY.'class.util.inc';
include_once MODULES_JOB.'dao/class.job_application_dao.inc';


/*
	User Business Object 
*/
Class JobApplicationBAO{

	private $_DB;
	private $_JobApplicationDAO;

	public function __construct(){

		$this->_JobApplicationDAO = new JobApplicationDAO();

	}

	//get all users value
	public function getMyApplication($globaluser){

		$Result = new Result();	
		$Result = $this->_JobApplicationDAO->getMyApplication($globaluser);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in JobListDAO.getAllJobs()");		

		return $Result;
	}

	//get all users value
	public function getAllApplication(){

		$Result = new Result();	
		$Result = $this->_JobApplicationDAO->getAllApplication();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in JobListDAO.getAllJobs()");		

		return $Result;
	}
}
?>