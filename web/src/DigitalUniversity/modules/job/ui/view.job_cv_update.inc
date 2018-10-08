<?php
include_once 'blade/view.job_cv_create.blade.inc';
include_once 'blade/view.job_cv_show.blade.inc';
include_once COMMON.'class.common.inc';

?>

<div class="panel panel-default">
    <div class="panel-heading">
    	Update CV
    </div>
    <div class="panel-body">
    	<?php
    		$globalUser = '';
			$globalUser = $_SESSION["globalUser"];
			$Result = $_JobCVShowBAO->getCV($globalUser->getID());
			//if DAO access is successful to load all the Jobs then show them one by one
			if($Result->getIsSuccess()){
				$CV = $Result->getResultObject();
		?>
    	<div id="form">
			<form method="post" class="form-horizontal">

				<input type="hidden" name="txtCVID" class="form-control" value="<?php echo $CV->getID(); ?>"/>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVName">Name**:</label>
	              	<div class="col-sm-6">
	              		<input type="text" name="txtCVName" class="form-control" placeholder="Your full name here" value="<?php echo $CV->getName(); ?>" required/>
				  	</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVSector">Your Proficient Sector**:</label>
	              	<div class="col-sm-6">
	              		<input type="text" name="txtCVSector" class="form-control" placeholder="Give a good title of your efficiency" value="<?php echo $CV->getsector(); ?>" required/>
				  	</div>
				</div>
		
				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVEmail">Your CV Email**:</label>
	              	<div class="col-sm-6">  		
						<input type="text" name="txtCVEmail" class="form-control" placeholder="Give your email no" value="<?php echo $CV->getemail(); ?>" required/>
					</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVPhone">Your CV Phone**:</label>
	              	<div class="col-sm-6">  		
						<input type="text" name="txtCVPhone" class="form-control" placeholder="Your Phone Number" value="<?php echo $CV->getphone(); ?>" required/>
					</div>
				</div> 

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVProfile">Short Profile description(Max-500words)**:</label>
	              	<div class="col-sm-6">	
						<textarea name="txtCVProfile" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Profile description" required><?php echo $CV->getprofile(); ?></textarea>
					</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVSkillheadOne">Skill Set:</label>
	              	<div class="col-sm-6">
	              		<input type="hidden" name="txtCVSkillIDOne" class="form-control" value="<?php echo $CV->getskills()[0]->getID(); ?>"/>
	              		<input type="text" name="txtCVSkillHeadOne" class="form-control" placeholder="Skill header 1" value="<?php echo $CV->getskills()[0]->getname(); ?>"/>	
						<textarea name="txtCVSkillDetailsOne" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Skill description 1" ><?php echo $CV->getskills()[0]->getdetails(); ?></textarea>

						<br>

						<input type="hidden" name="txtCVSkillIDTwo" class="form-control" value="<?php echo $CV->getskills()[1]->getID(); ?>"/>
						<input type="text" name="txtCVSkillHeadTwo" class="form-control" placeholder="Skill header 2" value="<?php echo $CV->getskills()[1]->getname(); ?>" />
						<textarea name="txtCVSkillDetailsTwo" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Skill description 2"><?php echo $CV->getskills()[1]->getdetails(); ?></textarea>
					</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVTechnicalSkills">Technical Skill Set**(Max-500words)**:</label>
	              	<div class="col-sm-6">	
						<textarea name="txtCVTechnicalSkills" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Such as.. XHTML,CSS,Javascript,Jquery" required><?php echo $CV->gettechnical_skill(); ?></textarea>
					</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVExperienceNameOne">Experience:</label>
	              	<div class="col-sm-6">

	              		<input type="hidden" name="txtCVExperienceIDOne" class="form-control" value="<?php echo $CV->getexperience()[0]->getID(); ?>"/>
	              		<input type="text" name="txtCVExperienceNameOne" class="form-control" placeholder="Experience Proffession Name 1" value="<?php echo $CV->getexperience()[0]->getjobname(); ?>"/>	
	              		<input type="text" name="txtCVExperiencePostOne" class="form-control" placeholder="Experience Proffession Post 1" value="<?php echo $CV->getexperience()[0]->getjobposition(); ?>"/>	
	              		<input type="text" name="txtCVExperienceTimeSpanOne" class="form-control" placeholder="Experience Proffession Time Span 1 such as = 2007-2009" value="<?php echo $CV->getexperience()[0]->getworkingyear(); ?>"/>	
						<textarea name="txtCVExperienceDetailsOne" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Experience Proffession description 1"><?php echo $CV->getexperience()[0]->getworkdetails(); ?></textarea>

						<br>

						<input type="hidden" name="txtCVExperienceIDTwo" class="form-control" value="<?php echo $CV->getexperience()[1]->getID(); ?>"/>
						<input type="text" name="txtCVExperienceNameTwo" class="form-control" placeholder="Experience Proffession Name 2" value="<?php echo $CV->getexperience()[1]->getjobname(); ?>"/>
						<input type="text" name="txtCVExperiencePostTwo" class="form-control" placeholder="Experience Proffession Post 2" value="<?php echo $CV->getexperience()[1]->getjobposition(); ?>"/>
						<input type="text" name="txtCVExperienceTimeSpanTwo" class="form-control" placeholder="Experience Proffession Time Span 2 such as = 2007-2009" value="<?php echo $CV->getexperience()[1]->getworkingyear(); ?>"/>
						<textarea name="txtCVExperienceDetailsTwo" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Experience Proffession description 2"><?php echo $CV->getexperience()[1]->getworkdetails(); ?></textarea>
					</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVEducationInstituitionOne">Education**:</label>
	              	<div class="col-sm-6">

	              		<input type="hidden" name="txtCVEducationIDOne" class="form-control" value="<?php echo $CV->geteducation()[0]->getID(); ?>"/>
	              		<input type="text" name="txtCVEducationInstituitionOne" class="form-control" placeholder="Experience Education Instituition 1" value="<?php echo $CV->geteducation()[0]->getinstituition(); ?>" required/>	
	              		<input type="text" name="txtCVEducationSubjectOne" class="form-control" placeholder="Experience Education Subject 1" value="<?php echo $CV->geteducation()[0]->getsubject(); ?>" required/>	
	              		<input type="text" name="txtCVEducationGPAOne" class="form-control" placeholder="Experience Education GPA 1 such as = 4.0" value="<?php echo $CV->geteducation()[0]->getcgpa(); ?>" required/>	

						<br>

						<input type="hidden" name="txtCVEducationIDTwo" class="form-control" value="<?php echo $CV->geteducation()[1]->getID(); ?>"/>
						<input type="text" name="txtCVEducationInstituitionTwo" class="form-control" placeholder="Experience Education Instituition 2" value="<?php echo $CV->geteducation()[1]->getinstituition(); ?>" required/>	
	              		<input type="text" name="txtCVEducationSubjectTwo" class="form-control" placeholder="Experience Education Subject 2" value="<?php echo $CV->geteducation()[1]->getsubject(); ?>" required/>	
	              		<input type="text" name="txtCVEducationGPATwo" class="form-control" placeholder="Experience Education GPA 2 such as = 4.0" value="<?php echo $CV->geteducation()[1]->getcgpa(); ?>" required/>
					</div>
				</div>
				
		        <div class="form-group">        
	              	<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" value="update" name="update">Update</button>
				    </div>
	            </div> 
			</form>
		</div>
		<?php
			}
			else{
				echo $Result->getResultObject(); //giving failure message
			}
		?>
		<div id="toastME">
			Some Text Message..
		</div>
    </div>
</div>