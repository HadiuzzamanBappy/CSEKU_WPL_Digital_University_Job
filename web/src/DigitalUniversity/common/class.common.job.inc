<?php 
class Job{
    
    private $_ID;
    private $_Title;
    private $_Subtitle;
    private $_PublishDate;
    private $_Organization;
    private $_Qualification;
    private $_Gender;
    private $_AgeLimit;
    private $_EmploymentType;
    private $_NumberOfVacancy;
    private $_Email;
    private $_ContactNumber;
    private $_Salary;
    private $_Location;
    private $_JobExperience;
    private $_LastDateOfApplication;

    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setTitle( $Title ) {
        $this->_Title = $Title;
    }

    public function getTitle() {
        return $this->_Title;
    }

    public function setSubtitle ( $Subtitle ) {
        $this->_Subtitle = $Subtitle;
    }

    public function getSubtitle () {
        return $this->_Subtitle;
    }

    public function setPublishDate ( $PublishDate ) {
        $this->_PublishDate = $PublishDate;
    }

    public function getPublishDate () {
        return $this->_PublishDate;
    }

    public function setOrganization ( $Organization ) {
        $this->_Organization = $Organization;
    }

    public function getOrganization () {
        return $this->_Organization;
    }

    public function setQualification ( $Qualification ) {
        $this->_Qualification = $Qualification;
    }

    public function getQualification () {
        return $this->_Qualification;
    }

    public function setGender ( $Gender ) {
        $this->_Gender = $Gender;
    }

    public function getGender () {
        return $this->_Gender;
    }


    public function setAgeLimit( $AgeLimit ) {
        $this->_AgeLimit = $AgeLimit;
    }

    public function getAgeLimit() {
        return $this->_AgeLimit;
    }

    public function setEmploymentType ( $EmploymentType ) {
        $this->_EmploymentType = $EmploymentType;
    }

    public function getEmploymentType () {
        return $this->_EmploymentType;
    }

    public function setNumberOfVacancy ( $NumberOfVacancy ) {
        $this->_NumberOfVacancy = $NumberOfVacancy;
    }

    public function getNumberOfVacancy () {
        return $this->_NumberOfVacancy;
    }

    public function setEmail ( $Email ) {
        $this->_Email = $Email;
    }

    public function getEmail () {
        return $this->_Email;
    }

    public function setContactNumber ( $ContactNumber ) {
        $this->_ContactNumber = $ContactNumber;
    }

    public function getContactNumber () {
        return $this->_ContactNumber;
    }

    public function setSalary ( $Salary ) {
        $this->_Salary = $Salary;
    }

    public function getSalary () {
        return $this->_Salary;
    }


    public function setLocation( $Location ) {
        $this->_Location = $Location;
    }

    public function getLocation() {
        return $this->_Location;
    }

    public function setJobExperience ( $JobExperience ) {
        $this->_JobExperience = $JobExperience;
    }

    public function getJobExperience () {
        return $this->_JobExperience;
    }

    public function setLastDateOfApplication ( $LastDateOfApplication ) {
        $this->_LastDateOfApplication = $LastDateOfApplication;
    }

    public function getLastDateOfApplication () {
        return $this->_LastDateOfApplication;
    }
}

class applicant{
    private $_ID;
    private $_JobID;
    private $_CV;
    private $_SubmissionDate;

    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }

    public function setJobID ( $JobID ) {
        $this->_JobID = $JobID;
    }

    public function getJobID () {
        return $this->_JobID;
    }

    public function setCV ( $CV ) {
        $this->_CV = $CV;
    }

    public function getCV () {
        return $this->_CV;
    }

    public function setSubmissionDate( $SubmissionDate) {
        $this->_SubmissionDate= $SubmissionDate;
    }

    public function getSubmissionDate() {
        return $this->_SubmissionDate;
    }
}
?>