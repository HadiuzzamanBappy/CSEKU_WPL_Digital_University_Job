<?php
// write dao object for each class

include_once COMMON.'class.common.inc';
include_once UTILITY.'class.util.inc';
include_once COMMON.'class.common.job.inc';


Class JobListDAO{

	private $_DB;
	private $_Job;

	public function __construct(){

		$this->_DB = DBUtil::getInstance();
		$this->_Job = new Job();
	}

	// get all the users from the database using the database query
	public function getAllJobs(){

		$JobList = array();

		$this->_DB->doQuery("SELECT * FROM jms_job");

		$rows = $this->_DB->getAllRows();

		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$this->_Job = new Job();

		    $this->_Job->setID ( $row['ID']);
		    $this->_Job->setTitle ( $row['Title'] );   
		    $this->_Job->setSubtitle ( $row['Subtitle'] );
		    $this->_Job->setPublishDate ( $row['PublishDate'] );
		    $this->_Job->setOrganization( $row['Organization'] );
		    $this->_Job->setQualification( $row['Qualification'] );
		    $this->_Job->setGender( $row['Gender'] );
		    $this->_Job->setAgeLimit ( $row['AgeLimit'] );
		    $this->_Job->setEmploymentType( $row['EmploymentType'] );
		    $this->_Job->setNumberOfVacancy( $row['NumberOfVacancy'] );
		    $this->_Job->setEmail( $row['Email'] );
		    $this->_Job->setContactNumber ( $row['ContactNumber'] );
		    $this->_Job->setSalary( $row['Salary'] );
		    $this->_Job->setLocation( $row['Location'] );
		    $this->_Job->setJobExperience( $row['JobExperience'] );
		    $this->_Job->setLastDateOfApplication( $row['LastDateOfApplication'] );


		    $JobList[]=$this->_Job;
   
		}


		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($JobList);

		return $Result;
	}
}

?>