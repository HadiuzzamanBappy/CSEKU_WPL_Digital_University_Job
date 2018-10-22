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
	//read an user with role information object based on its id form user object
	public function readJobPositions($Job){


		$Result = new Result();	
		$Result = $this->_JobListDAO->readJobPositions($Job);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in UserDAO.readUserRolesPositions()");		

		return $Result;


	}
		//delete an existing user
	public function deleteJob($Job){

		$Result = new Result();	
		$Result = $this->_JobListDAO->deleteJob($Job);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in UserDAO.deleteUser()");		

		return $Result;

	}
	//update an user object based on its current information
	public function updateJobRequest($Job){

		$Result = new Result();	
		$Result = $this->_JobListDAO->updateJobRequest($Job);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in UserDAO.updateUser()");		

		return $Result;
	}

	//update an user object based on its current information
	public function checkForCV($UserDetails){
		$Result = new Result();	
		$Result = $this->_JobListDAO->checkForCV($UserDetails);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in UserDAO.readUserDetails()");		

		return $Result;
	}

	//update an user object based on its current information
	public function applyJob($Applicant){
		$Result = new Result();	
		$Result = $this->_JobListDAO->applyJob($Applicant);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in UserDAO.readUserDetails()");		

		return $Result;
	}
	//update an user object based on its current information
	public function getJobDetails($Job){
		$Result = new Result();	
		$Result = $this->_JobListDAO->getJobDetails($Job);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in UserDAO.readUserDetails()");		

		return $Result;
	}
}
?>