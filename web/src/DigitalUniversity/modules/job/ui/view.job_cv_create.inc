<?php

include_once 'blade/view.job_cv_create.blade.inc';
include_once COMMON.'class.common.inc';

?>

<div class="panel panel-default">
    <div class="panel-heading">
    	Create CV
    </div>
    <div class="panel-body">
    	<div id="form">
			<form method="post" class="form-horizontal">

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVName">Name**:</label>
	              	<div class="col-sm-6">
	              		<input type="text" name="txtCVName" class="form-control" placeholder="Your full name here" required/>
				  	</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVSector">Your Proficient Sector**:</label>
	              	<div class="col-sm-6">
	              		<input type="text" name="txtCVSector" class="form-control" placeholder="Give a good title of your efficiency" required/>
				  	</div>
				</div>
		
				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVEmail">Your CV Email**:</label>
	              	<div class="col-sm-6">  		
						<input type="text" name="txtCVEmail" class="form-control" placeholder="Give your email no" required/>
					</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVPhone">Your CV Phone**:</label>
	              	<div class="col-sm-6">  		
						<input type="text" name="txtCVPhone" class="form-control" placeholder="Your Phone Number" required/>
					</div>
				</div> 

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVProfile">Short Profile description(Max-500words)**:</label>
	              	<div class="col-sm-6">	
						<textarea name="txtCVProfile" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Profile description" required></textarea>
					</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVSkillheadOne">Skill Set 1:</label>
	              	<div class="col-sm-6">
	              		<input type="text" name="txtCVSkillHeadOne" class="form-control" placeholder="Skill header 1"/>	
						<textarea name="txtCVSkillDetailsOne" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Skill description 1"></textarea>

						<br>

						<input type="text" name="txtCVSkillHeadTwo" class="form-control" placeholder="Skill header 2"/>
						<textarea name="txtCVSkillDetailsTwo" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Skill description 2"></textarea>
					</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVTechnicalSkills">Technical Skill Set**(Max-500words)**:</label>
	              	<div class="col-sm-6">	
						<textarea name="txtCVTechnicalSkills" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Such as.. XHTML,CSS,Javascript,Jquery" required></textarea>
					</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVExperienceNameOne">Experience:</label>
	              	<div class="col-sm-6">
	              		<input type="text" name="txtCVExperienceNameOne" class="form-control" placeholder="Experience Proffession Name 1"/>	
	              		<input type="text" name="txtCVExperiencePostOne" class="form-control" placeholder="Experience Proffession Post 1"/>	
	              		<input type="text" name="txtCVExperienceTimeSpanOne" class="form-control" placeholder="Experience Proffession Time Span 1 such as = 2007-2009"/>	
						<textarea name="txtCVExperienceDetailsOne" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Experience Proffession description 1"></textarea>

						<br>

						<input type="text" name="txtCVExperienceNameTwo" class="form-control" placeholder="Experience Proffession Name 2"/>
						<input type="text" name="txtCVExperiencePostTwo" class="form-control" placeholder="Experience Proffession Post 2"/>
						<input type="text" name="txtCVExperienceTimeSpanTwo" class="form-control" placeholder="Experience Proffession Time Span 2 such as = 2007-2009"/>
						<textarea name="txtCVExperienceDetailsTwo" class="form-control" rows="4" cols="50" maxlength="500" placeholder="Experience Proffession description 2"></textarea>
					</div>
				</div>

				<div class="form-group">
	              	<label class="control-label col-sm-4" for="txtCVEducationInstituitionOne">Education**:</label>
	              	<div class="col-sm-6">
	              		<input type="text" name="txtCVEducationInstituitionOne" class="form-control" placeholder="Experience Education Instituition 1" required/>	
	              		<input type="text" name="txtCVEducationSubjectOne" class="form-control" placeholder="Experience Education Subject 1" required/>	
	              		<input type="text" name="txtCVEducationGPAOne" class="form-control" placeholder="Experience Education GPA 1 such as = 4.0" required/>	

						<br>

						<input type="text" name="txtCVEducationInstituitionTwo" class="form-control" placeholder="Experience Education Instituition 2" required/>	
	              		<input type="text" name="txtCVEducationSubjectTwo" class="form-control" placeholder="Experience Education Subject 2" required/>	
	              		<input type="text" name="txtCVEducationGPATwo" class="form-control" placeholder="Experience Education GPA 2 such as = 4.0" required/>
					</div>
				</div>
				
		        <div class="form-group">        
	              	<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" value="request" name="request">Save</button>
				    </div>
	            </div> 
			</form>
		</div>
		<div id="toastME">
			Some Text Message..
		</div>
    </div>
</div>