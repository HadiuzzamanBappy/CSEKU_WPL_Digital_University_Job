<?php
include_once UTILITY.'class.util.inc';
include_once MODULES_JOB.'bao/class.job_cv_create_bao.inc';

$_JobCVCreateBAO = new JobCVCreateBAO();
$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();

/* saving a new job details*/
if(isset($_POST['request']))
{
	$CV = new CV();
	$CV_Education = new CV_Education();	
	$CV_Experience = new CV_Experience();		
	$CV_Skills = new CV_Skills();

	$globalUser = '';
	$globalUser = $_SESSION["globalUser"];
	$Education_List = array();
	$Experience_List = array();
	$Skills_List = array();

	$CV->setapplicantID($globalUser->getID()); 

	$CV->setName($_DB->secureInput($_POST['txtCVName']));

	$CV->setsector($_DB->secureInput($_POST['txtCVSector']));

	$CV->setemail($_DB->secureInput($_POST['txtCVEmail']));

	$CV->setphone($_DB->secureInput($_POST['txtCVPhone']));

	$CV->setprofile($_DB->secureInput($_POST['txtCVProfile'])); 

	$CV->settechnical_skill($_DB->secureInput($_POST['txtCVTechnicalSkills']));

    $CV_Education->setinstituition ( $_DB->secureInput($_POST['txtCVEducationInstituitionOne']) );   
    $CV_Education->setsubject ( $_DB->secureInput($_POST['txtCVEducationSubjectOne']) );
    $CV_Education->setcgpa ( $_DB->secureInput($_POST['txtCVEducationGPAOne']) );

    $Education_List[]=$CV_Education;

    $CV_Education->setinstituition ( $_DB->secureInput($_POST['txtCVEducationInstituitionTwo']) );   
    $CV_Education->setsubject ( $_DB->secureInput($_POST['txtCVEducationSubjectTwo']) );
    $CV_Education->setcgpa ( $_DB->secureInput($_POST['txtCVEducationGPATwo']) );

    $Education_List[]=$CV_Education;

    $CV_Experience->setjobname ( $_DB->secureInput($_POST['txtCVExperienceNameOne']) );   
    $CV_Experience->setjobposition ( $_DB->secureInput($_POST['txtCVExperiencePostOne']) );
    $CV_Experience->setworkingyear ( $_DB->secureInput($_POST['txtCVExperienceTimeSpanOne']) );
    $CV_Experience->setworkdetails ( $_DB->secureInput($_POST['txtCVExperienceDetailsOne']) );

    $Experience_List[]=$CV_Experience;

    $CV_Experience->setjobname ( $_DB->secureInput($_POST['txtCVExperienceNameTwo']) );   
    $CV_Experience->setjobposition ( $_DB->secureInput($_POST['txtCVExperiencePostTwo']) );
    $CV_Experience->setworkingyear ( $_DB->secureInput($_POST['txtCVExperienceTimeSpanTwo']) );
    $CV_Experience->setworkdetails ( $_DB->secureInput($_POST['txtCVExperienceDetailsTwo']) );

    $Experience_List[]=$CV_Experience;

    $CV_Skills->setname ( $_DB->secureInput($_POST['txtCVSkillHeadOne']) );
    $CV_Skills->setdetails ( $_DB->secureInput($_POST['txtCVSkillDetailsOne']) );

    $Skills_List[]=$CV_Skills;

    $CV_Skills->setname ( $_DB->secureInput($_POST['txtCVSkillHeadTwo']) );
    $CV_Skills->setdetails ( $_DB->secureInput($_POST['txtCVSkillDetailsTwo']) );

    $Skills_List[]=$CV_Skills;

    $CV->seteducation($Education_List);
    $CV->setexperience($Experience_List);
    $CV->setskills($Skills_List);

	$Result = $_JobCVCreateBAO->newJobCVCreateRequest($CV);		

	if($Result->getIsSuccess()){
	   Util::printToast($Result->getResultObject());	
	}
}

/* saving a new job details*/
if(isset($_POST['request']))
{
    $CV = new CV();
    $CV_Education = new CV_Education(); 
    $CV_Experience = new CV_Experience();       
    $CV_Skills = new CV_Skills();

    $globalUser = '';
    $globalUser = $_SESSION["globalUser"];
    $Education_List = array();
    $Experience_List = array();
    $Skills_List = array();

    $CV->setapplicantID($globalUser->getID()); 

    $CV->setName($_DB->secureInput($_POST['txtCVName']));

    $CV->setsector($_DB->secureInput($_POST['txtCVSector']));

    $CV->setemail($_DB->secureInput($_POST['txtCVEmail']));

    $CV->setphone($_DB->secureInput($_POST['txtCVPhone']));

    $CV->setprofile($_DB->secureInput($_POST['txtCVProfile'])); 

    $CV->settechnical_skill($_DB->secureInput($_POST['txtCVTechnicalSkills']));

    $CV_Education->setinstituition ( $_DB->secureInput($_POST['txtCVEducationInstituitionOne']) );   
    $CV_Education->setsubject ( $_DB->secureInput($_POST['txtCVEducationSubjectOne']) );
    $CV_Education->setcgpa ( $_DB->secureInput($_POST['txtCVEducationGPAOne']) );

    $Education_List[]=$CV_Education;

    $CV_Education->setinstituition ( $_DB->secureInput($_POST['txtCVEducationInstituitionTwo']) );   
    $CV_Education->setsubject ( $_DB->secureInput($_POST['txtCVEducationSubjectTwo']) );
    $CV_Education->setcgpa ( $_DB->secureInput($_POST['txtCVEducationGPATwo']) );

    $Education_List[]=$CV_Education;

    $CV_Experience->setjobname ( $_DB->secureInput($_POST['txtCVExperienceNameOne']) );   
    $CV_Experience->setjobposition ( $_DB->secureInput($_POST['txtCVExperiencePostOne']) );
    $CV_Experience->setworkingyear ( $_DB->secureInput($_POST['txtCVExperienceTimeSpanOne']) );
    $CV_Experience->setworkdetails ( $_DB->secureInput($_POST['txtCVExperienceDetailsOne']) );

    $Experience_List[]=$CV_Experience;

    $CV_Experience->setjobname ( $_DB->secureInput($_POST['txtCVExperienceNameTwo']) );   
    $CV_Experience->setjobposition ( $_DB->secureInput($_POST['txtCVExperiencePostTwo']) );
    $CV_Experience->setworkingyear ( $_DB->secureInput($_POST['txtCVExperienceTimeSpanTwo']) );
    $CV_Experience->setworkdetails ( $_DB->secureInput($_POST['txtCVExperienceDetailsTwo']) );

    $Experience_List[]=$CV_Experience;

    $CV_Skills->setname ( $_DB->secureInput($_POST['txtCVSkillHeadOne']) );
    $CV_Skills->setdetails ( $_DB->secureInput($_POST['txtCVSkillDetailsOne']) );

    $Skills_List[]=$CV_Skills;

    $CV_Skills->setname ( $_DB->secureInput($_POST['txtCVSkillHeadTwo']) );
    $CV_Skills->setdetails ( $_DB->secureInput($_POST['txtCVSkillDetailsTwo']) );

    $Skills_List[]=$CV_Skills;

    $CV->seteducation($Education_List);
    $CV->setexperience($Experience_List);
    $CV->setskills($Skills_List);

    $Result = $_JobCVCreateBAO->JobCVUpdateRequest($CV);     

    if($Result->getIsSuccess()){
       Util::printToast($Result->getResultObject());    
    }
}
?>