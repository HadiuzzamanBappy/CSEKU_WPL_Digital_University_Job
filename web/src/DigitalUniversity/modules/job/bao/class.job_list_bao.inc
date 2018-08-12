<?php

include_once UTILITY.'class.util.inc';
include_once MODULES_JOB.'dao/class.job_list_dao.inc';


/*
	User Business Object 
*/
Class JobListBAO{

	private $_DB;
	private $_JobListDAO;

	public function __construct(){

		$this->_JobListDAO = new JobListDAO();

	}

	//get all users value
	public function getAllJobs(){

		$Result = new Result();	
		$Result = $this->_JobListDAO->getAllJobs();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in JobListDAO.getAllJobs()");		

		return $Result;
	}
}
?>