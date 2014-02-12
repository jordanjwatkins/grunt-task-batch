#Grunt Task Batch

**Simple Batch File Runs Grunt Tasks For Selected Project(s)**

I created a batch file to make running Grunt tasks for my projects quicker and to allow my command line impaired coworkers to start using the new Grunt workflow improvements (like Sass and LiveReload) that I have been introducing.

The file is setup to point to a build folder within a theme within a WordPress project. Since my team has a consistent folder structure for projects, I have used this one file on my desktop to run grunt tasks for most of my projects.

## Installation

- Adjust line 4 (`cd /d c:\wamp\www\projects\%project%\%project%\wp-content\themes\%project%\_build`) to match the path to your projects (`%project%` will be replaced with the project slug you provide)
- If the batch file is only going to point to one specific project you can remove line 3 (`SET /P project="Project Slug: "`) and setup the path to the project without using `%project%`

##Usage

The batch file asks for a project slug and then a task to run. It then starts the requested task and opens the folder containing the Gruntfile in an explorer window. The default task will run if no task is entered.

