<?php
include_once 'blade/view.job_application.blade.inc';
include_once COMMON.'class.common.inc';
?>

<div class="panel panel-default">
    <div class="panel-heading">
    	Job Application Informations
    </div>

<div class="panel-body over">
    	<table class="table table-bordered">
	    	<?php
	    		$globalUser = '';
				$globalUser = $_SESSION["globalUser"];
				$Result = $_JobApplicationBAO->getMyApplication($globalUser->getID());
				//if DAO access is successful to load all the users then show them one by one
				if($Result->getIsSuccess()){
					$ApplicationList = $Result->getResultObject();
					?>
					<tr>
						<th>Job Title</th>
						<th>Application Date</th>
					</tr>
					<?php
					for($i = 0; $i < sizeof($ApplicationList); $i++) {
						$Application = $ApplicationList[$i];
						?>
					    <tr>
						    <td><?php echo $Application->getjobname(); ?></td>
						    <td><?php echo $Application->getSubmissionDate(); ?></td>
						    <td>
						    <a href="?del=<?php echo $Application->getJobID(); ?>" onclick="return confirm('sure to See !'); " >See This Job details</a>
						    </td>
					    </tr>
					<?php
					}
				}
				else{
					echo $Result->getResultObject(); 
				}
			?>
		</table>
    </div>
</div>