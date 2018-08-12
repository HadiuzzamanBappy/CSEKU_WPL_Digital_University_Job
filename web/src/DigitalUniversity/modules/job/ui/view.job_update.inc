<?php

include_once 'blade/view.job_list.blade.inc';
include_once COMMON.'class.common.inc';

?>

<div class="panel panel-default">
    <div class="panel-heading">
    	Job Informations
    </div>
    <div class="panel-body over">
    	<table class="table table-bordered">
	    	<?php
				$Result = $_JobListBAO->getAllJobs();
				//if DAO access is successful to load all the users then show them one by one
				if($Result->getIsSuccess()){
					$JobList = $Result->getResultObject();
					?>
					<tr>
						<th>Title</th>
						<th>Sub-Title</th>
						<th>Publish Date</th>
						<th>Organization</th>
						<th>Employment Type</th>
						<th>Education Qualification</th>
						<th>Gender</th>
						<th>Age Limit</th>
						<th>Vacancy</th>
						<th>Contact Email</th>
						<th>Contact Phone</th>
						<th>Salary</th>
						<th>Job Experience</th>
						<th>Job Location</th>
						<th>Last Application Date</th>
					</tr>
					<?php
					for($i = 0; $i < sizeof($JobList); $i++) {
						$Job = $JobList[$i];
						?>
					    <tr>
						    <td><?php echo $Job->getTitle(); ?></td>
						    <td><?php echo $Job->getSubtitle(); ?></td>
						    <td><?php echo $Job->getPublishDate(); ?></td>
						    <td><?php echo $Job->getOrganization(); ?></td>
						    <td><?php echo $Job->getEmploymentType(); ?></td>
						    <td><?php echo $Job->getQualification(); ?></td>
						    <td><?php echo $Job->getGender(); ?></td>
						    <td><?php echo $Job->getAgeLimit(); ?></td>
						    <td><?php echo $Job->getNumberOfVacancy(); ?></td>
						    <td><?php echo $Job->getEmail(); ?></td>
						    <td><?php echo $Job->getContactNumber(); ?></td>
						    <td><?php echo $Job->getSalary(); ?></td>
						    <td><?php echo $Job->getJobExperience(); ?></td>
						    <td><?php echo $Job->getLocation(); ?></td>
						    <td><?php echo $Job->getLastDateOfApplication(); ?></td>
						    <td>
						    <a href="?edit=<?php echo $Job->getID(); ?>" onclick="return confirm('sure to edit !'); " >edit</a>
						    </td>
						    <td>
						    <a href="?del=<?php echo $Job->getID(); ?>" onclick="return confirm('sure to delete !'); " >delete</a>
						    </td>
					    </tr>
					<?php
					}
				}
				else{
					echo $Result->getResultObject(); //giving failure message
				}
			?>
		</table>
    </div>
</div>