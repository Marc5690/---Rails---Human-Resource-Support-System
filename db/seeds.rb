# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(name:'apple', subdomain:'http://apple.humanresourcesupportsystem.cloudfoundry.com')
Company.create(name:'tesco', subdomain:'http://tesco.lvh.me:3000/')
Company.create(name:'chevron', subdomain:'http://chevron.lvh.me:3000/')

User.create(name:'Marc Laffan', email:'marclaffan@gmail.com', personnel_number:'1', address:'New Ross, Co. Wexford, Ballylane East', 
  telephone:'0872530956', date_of_birth:'1990-6-5', sex:'Male', commencement:'2011/6/5', 
  insurance:'AXA Life Insurance', grade:'1.1',  division:'I.T. and Programming', 
  salary_scale:'1',  admin:true, password:'PASSWORD', password_confirmation:'PASSWORD', company_id: 1)
User.create(name:'Sample', email:'sample@gmail.com', personnel_number:'5', address:'Waterford', 
  telephone:'0879876543', date_of_birth:'1989/7/5', sex:'Male', commencement:'2011/6/5', 
  insurance:'Irish Life Insurance', grade:'3.1', division:'I.T. and Programming', 
  salary_scale:'1',  admin:false, password:'PASSWORD', password_confirmation:'PASSWORD', company_id: 1)
User.create(name:'Jack Murphy', email:'jack@gmail.com', personnel_number:'2', address:'Enniscorthy, Co. Wexford', 
  telephone:'087267543', date_of_birth:'1988-9-1', sex:'Male', commencement:'2011/6/5', 
  insurance:'Sheridan Life Insurance', grade:'2.1',  division:'Marketing and Sales', 
  salary_scale:'2',  admin:true, password:'PASSWORD', password_confirmation:'PASSWORD', company_id: 1)
User.create(name:'Sofie Taylor', email:'st@gmail.com', personnel_number:'3', address:'Dublin, Co. Dublin, Four Courts', 
  telephone:'0879876543', date_of_birth:'1989-7-5', sex:'Female', commencement:'2011/6/5',  
  insurance:'Irish Life Insurance', grade:'3.1',  division:'I.T. and Programming',
  salary_scale:'1',  admin:true, password:'PASSWORD', password_confirmation:'PASSWORD', company_id: 2)
User.create(name:'Sofie Taylor', email:'st@gmail.com', personnel_number:'3', address:'Dublin, Co. Dublin, Four Courts', 
  telephone:'0879876543', date_of_birth:'1989-7-5', sex:'Female', commencement:'2011/6/5',  
  insurance:'Irish Life Insurance', grade:'3.1',  division:'I.T. and Programming',
  salary_scale:'1',  admin:true, password:'PASSWORD', password_confirmation:'PASSWORD', company_id: 3)

Project.create(title: 'API interface between Tesco and Cisco', estimated_hours:300, date_started:'2011-02-02 00:00:00.000000', date_ended:'2013-05-05 00:00:00.000000', company_id: 1)
Project.create(title: 'Build bespoke mass-tax-calculating software', estimated_hours:400, date_started:'2011-05-01 00:00:00.000000', date_ended:'2014-03-02 00:00:00.000000', company_id: 1)
Project.create(title: 'Language Localization System', estimated_hours:500, date_started:'2010-01-01 00:00:00.000000', date_ended:'2016-08-09 00:00:00.000000', company_id: 1)

#Project 1
Task.create(title:'API Initial Design', estimated_hours:40,  description:'This task involves the finialization of the design plan for this project' ,project_id:1, start_date:'2011-02-02 00:00:00.000000', end_date:'2011-03-02 00:00:00.000000', company_id: 1)
Task.create(title:'API Implement Design', estimated_hours:60,  description:'This task involves the actual implementation and integration of the design plan for this project', project_id:1, start_date:'2011-03-03 00:00:00.000000', end_date:'2011-04-15 00:00:00.000000', company_id: 1)
Task.create(title:'Program Cisco interface', estimated_hours:80, description:'This task involves the creation of Ciscos GUI and associated pages for this project' ,project_id:1, start_date:'2011-04-16 00:00:00.000000', end_date:'2011-06-16 00:00:00.000000', company_id: 1)
Task.create(title:'Program Tesco interface', estimated_hours:80, description:'This task involves the creation of Tescos GUI and associated pages for this project' ,project_id:1, start_date:'2011-06-17 00:00:00.000000', end_date:'2011-08-17 00:00:00.000000', company_id: 1)
Task.create(title:'Combine interfaces and cleanup', estimated_hours:40, description:'This task involves the finishing of the project and the tying up of both interfaces' ,project_id:1, start_date:'2011-08-18 00:00:00.000000', end_date:'2011-09-18 00:00:00.000000', company_id: 1)
#Project 2
Task.create(title:'Software Initial Design', estimated_hours:40, description:'This task involves the finialization of the design plan for this project' ,project_id:2, start_date:'2011-02-02 00:00:00.000000', end_date:'2011-03-02 00:00:00.000000', company_id: 1)
Task.create(title:'Software Implement Design', estimated_hours:60, description:'This task involves the actual implementation and integration of the design plan for this project' ,project_id:2, start_date:'2011-03-03 00:00:00.000000', end_date:'2011-04-15 00:00:00.000000', company_id: 1)
Task.create(title:'Plan structure of program based on data collect on employees', estimated_hours:130, description:'This task involves the creation of Ciscos GUI and associated pages for this project' ,project_id:2, start_date:'2011-04-16 00:00:00.000000', end_date:'2011-06-16 00:00:00.000000', company_id: 1)
Task.create(title:'Create number-crunching softwasre based on previously collected data', estimated_hours:130, description:'This task involves the creation of Tescos GUI and associated pages for this project' ,project_id:2, start_date:'2011-06-17 00:00:00.000000', end_date:'2011-08-17 00:00:00.000000', company_id: 1)
Task.create(title:'Solve bugs and cleanup', estimated_hours:40,  description:'This task involves the finishing of the project and the tying up of both interfaces',project_id:2, start_date:'2011-08-18 00:00:00.000000', end_date:'2011-09-18 00:00:00.000000', company_id: 1)
#Project 3
Task.create(title:'Localization Initial Design', estimated_hours:40, description:'This task involves the finialization of the design plan for this project' ,project_id:3, start_date:'2011-02-02 00:00:00.000000', end_date:'2011-03-02 00:00:00.000000', company_id: 1)
Task.create(title:'Localization Implement Design', estimated_hours:60, description:'This task involves the actual implementation and integration of the design plan for this project',project_id:3, start_date:'2011-03-03 00:00:00.000000', end_date:'2011-04-15 00:00:00.000000', company_id: 1)
Task.create(title:'Determine scale and area of localization', estimated_hours:80, description:'This task involves the collecting of data to determine the scope of the following two steps',project_id:3, start_date:'2011-04-16 00:00:00.000000', end_date:'2011-06-16 00:00:00.000000', company_id: 1)
Task.create(title:'Utilize translation dictionaries and integrate with software', estimated_hours:80, description:'This task involves integrating external software with the current build' ,project_id:3, start_date:'2011-06-17 00:00:00.000000', end_date:'2011-08-17 00:00:00.000000', company_id: 1)
Task.create(title:'Testing', estimated_hours:140, description:'This task involves the testing and evaluation of the beta builds of this system' ,project_id:3, start_date:'2011-08-18 00:00:00.000000', end_date:'2011-09-18 00:00:00.000000', company_id: 1)

#Records for project 1
TimeAndAttendance.create(hours_worked:8, user_id:1, project_id:1, task_id:1, date:'2012-01-01 00:00:00.000000', company_id: 1)
TimeAndAttendance.create(hours_worked:12, user_id:2, project_id:1, task_id:2, date:"2012-02-02 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:4, user_id:3, project_id:1, task_id:3, date:"2012-03-03 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:2, user_id:1, project_id:1, task_id:4, date:"2012-04-04 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:1, task_id:5, date:"2012-05-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:9, user_id:1, project_id:1, task_id:1, date:"2012-06-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:1, user_id:2, project_id:1, task_id:2, date:"2012-07-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:1, user_id:3, project_id:1, task_id:3, date:"2012-08-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:2, user_id:1, project_id:1, task_id:4, date:"2012-09-06 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:10, user_id:2, project_id:1, task_id:5, date:"2012-10-07 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:12, user_id:1, project_id:1, task_id:1, date:"2012-11-07 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:14, user_id:2, project_id:1, task_id:2, date:"2012-12-07 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:11, user_id:3, project_id:1, task_id:3, date:"2012-01-10 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:3, user_id:1, project_id:1, task_id:4, date:"2012-02-11 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:5, user_id:2, project_id:1, task_id:5, date:"2012-03-12 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:8, user_id:1, project_id:1, task_id:1, date:"2012-04-01 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:12, user_id:2, project_id:1, task_id:2, date:"2012-05-02 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:4, user_id:3, project_id:1, task_id:3, date:"2012-06-03 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:2, user_id:1, project_id:1, task_id:4, date:"2012-07-04 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:1, task_id:5, date:"2012-08-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:9, user_id:1, project_id:1, task_id:1, date:"2012-09-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:1, user_id:2, project_id:1, task_id:2, date:"2012-10-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:1, user_id:3, project_id:1, task_id:3, date:"2012-11-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:2, user_id:1, project_id:1, task_id:4, date:"2012-12-06 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:10, user_id:2, project_id:1, task_id:5, date:"2012-01-07 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:12, user_id:1, project_id:1, task_id:1, date:"2012-02-07 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:14, user_id:2, project_id:1, task_id:2, date:"2012-03-07 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:11, user_id:3, project_id:1, task_id:3, date:"2012-04-10 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:3, user_id:1, project_id:1, task_id:4, date:"2012-05-11 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:5, user_id:2, project_id:1, task_id:5, date:"2012-06-12 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:8, user_id:1, project_id:1, task_id:1, date:"2012-07-01 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:12, user_id:2, project_id:1, task_id:2, date:"2012-08-02 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:4, user_id:3, project_id:1, task_id:3, date:"2012-09-03 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:2, user_id:1, project_id:1, task_id:4, date:"2012-10-04 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:1, task_id:5, date:"2012-11-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:9, user_id:1, project_id:1, task_id:1, date:"2012-12-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:1, user_id:2, project_id:1, task_id:2, date:"2012-01-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:1, user_id:3, project_id:1, task_id:3, date:"2012-02-05 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:2, user_id:1, project_id:1, task_id:4, date:"2012-03-06 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:10, user_id:2, project_id:1, task_id:5, date:"2012-04-07 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:12, user_id:1, project_id:1, task_id:1, date:"2012-05-07 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:14, user_id:2, project_id:1, task_id:2, date:"2012-06-07 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:11, user_id:3, project_id:1, task_id:3, date:"2012-07-10 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:3, user_id:1, project_id:1, task_id:4, date:"2012-08-11 00:00:00.000000", company_id: 1)
TimeAndAttendance.create(hours_worked:5, user_id:2, project_id:1, task_id:5, date:"2012-09-12 00:00:00.000000", company_id: 1)

#Records for project 2
#project_id:2,
TimeAndAttendance.create(hours_worked:5, user_id:1, project_id:2, task_id:1, date:"2012-02-01 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:9, user_id:2, project_id:2, task_id:2, date:"2012-03-02 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:2, task_id:3, date:"2012-04-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:2, user_id:1, project_id:2, task_id:4, date:"2012-05-04 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:3, user_id:2, project_id:2, task_id:5, date:"2012-06-05 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:1, project_id:2, task_id:1, date:"2012-07-06 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:2, task_id:2, date:"2012-08-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:3, user_id:3, project_id:2, task_id:3, date:"2012-09-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:11, user_id:1, project_id:2, task_id:4, date:"2012-10-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:8, user_id:2, project_id:2, task_id:5, date:"2012-11-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:1, project_id:2, task_id:1, date:"2012-12-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:11, user_id:2, project_id:2, task_id:2, date:"2012-01-10 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:2, task_id:3, date:"2012-02-11 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:13, user_id:1, project_id:2, task_id:4, date:"2012-03-12 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:5, user_id:2, project_id:2, task_id:5, date:"2012-04-01 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:5, user_id:1, project_id:2, task_id:1, date:"2012-05-01 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:9, user_id:2, project_id:2, task_id:2, date:"2012-06-02 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:2, task_id:3, date:"2012-07-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:2, user_id:1, project_id:2, task_id:4, date:"2012-08-04 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:3, user_id:2, project_id:2, task_id:5, date:"2012-09-05 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:1, project_id:2, task_id:1, date:"2012-10-06 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:2, task_id:2, date:"2012-11-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:3, user_id:3, project_id:2, task_id:3, date:"2012-12-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:11, user_id:1, project_id:2, task_id:4, date:"2012-01-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:8, user_id:2, project_id:2, task_id:5, date:"2012-02-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:1, project_id:2, task_id:1, date:"2012-03-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:11, user_id:2, project_id:2, task_id:2, date:"2012-04-10 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:2, task_id:3, date:"2012-05-11 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:13, user_id:1, project_id:2, task_id:4, date:"2012-06-12 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:5, user_id:2, project_id:2, task_id:5, date:"2012-07-01 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:5, user_id:1, project_id:2, task_id:1, date:"2012-08-01 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:9, user_id:2, project_id:2, task_id:2, date:"2012-09-02 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:2, task_id:3, date:"2012-10-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:2, user_id:1, project_id:2, task_id:4, date:"2012-11-04 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:3, user_id:2, project_id:2, task_id:5, date:"2012-12-05 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:1, project_id:2, task_id:1, date:"2012-01-06 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:2, task_id:2, date:"2012-02-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:3, user_id:3, project_id:2, task_id:3, date:"2012-03-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:11, user_id:1, project_id:2, task_id:4, date:"2012-04-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:8, user_id:2, project_id:2, task_id:5, date:"2012-05-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:1, project_id:2, task_id:1, date:"2012-06-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:11, user_id:2, project_id:2, task_id:2, date:"2012-07-10 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:2, task_id:3, date:"2012-08-11 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:13, user_id:1, project_id:2, task_id:4, date:"2012-09-12 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:5, user_id:2, project_id:2, task_id:5, date:"2012-10-01 00:00:00.000000", company_id: 1)# 00:00:00.000000)

#Records for project 3
TimeAndAttendance.create(hours_worked:4, user_id:1, project_id:3, task_id:1, date:"2012-01-01 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:3, task_id:2, date:"2012-01-02 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:3, task_id:3, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:3, user_id:1, project_id:3, task_id:4, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:3, task_id:5, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:1, project_id:3, task_id:1, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:9, user_id:2, project_id:3, task_id:2, date:"2012-01-04 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:10, user_id:3, project_id:3, task_id:3, date:"2012-01-05 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:13, user_id:1, project_id:3, task_id:4, date:"2012-01-06 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:2, project_id:3, task_id:5, date:"2012-01-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:4, user_id:1, project_id:3, task_id:1, date:"2012-01-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:9, user_id:2, project_id:3, task_id:2, date:"2012-01-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:3, task_id:3, date:"2012-01-10 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:1, project_id:3, task_id:4, date:"2012-01-11 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:2, user_id:2, project_id:3, task_id:5, date:"2012-01-12 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:4, user_id:1, project_id:3, task_id:1, date:"2012-01-01 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:3, task_id:2, date:"2012-01-02 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:3, task_id:3, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:3, user_id:1, project_id:3, task_id:4, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:3, task_id:5, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:1, project_id:3, task_id:1, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:9, user_id:2, project_id:3, task_id:2, date:"2012-01-04 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:10, user_id:3, project_id:3, task_id:3, date:"2012-01-05 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:13, user_id:1, project_id:3, task_id:4, date:"2012-01-06 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:2, project_id:3, task_id:5, date:"2012-01-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:4, user_id:1, project_id:3, task_id:1, date:"2012-01-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:9, user_id:2, project_id:3, task_id:2, date:"2012-01-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:3, task_id:3, date:"2012-01-10 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:1, project_id:3, task_id:4, date:"2012-01-11 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:2, user_id:2, project_id:3, task_id:5, date:"2012-01-12 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:4, user_id:1, project_id:3, task_id:1, date:"2012-01-01 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:3, task_id:2, date:"2012-01-02 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:3, task_id:3, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:3, user_id:1, project_id:3, task_id:4, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:2, project_id:3, task_id:5, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:6, user_id:1, project_id:3, task_id:1, date:"2012-01-03 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:9, user_id:2, project_id:3, task_id:2, date:"2012-01-04 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:10, user_id:3, project_id:3, task_id:3, date:"2012-01-05 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:13, user_id:1, project_id:3, task_id:4, date:"2012-01-06 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:2, project_id:3, task_id:5, date:"2012-01-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:4, user_id:1, project_id:3, task_id:1, date:"2012-01-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:9, user_id:2, project_id:3, task_id:2, date:"2012-01-07 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:12, user_id:3, project_id:3, task_id:3, date:"2012-01-10 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:1, user_id:1, project_id:3, task_id:4, date:"2012-01-11 00:00:00.000000", company_id: 1)# 00:00:00.000000)
TimeAndAttendance.create(hours_worked:2, user_id:2, project_id:3, task_id:5, date:"2012-01-12 00:00:00.000000", company_id: 1)# 00:00:00.000000)


Noticeboard.create(content:"Default Notice", company_id:1)
Noticeboard.create(content:"Default Notice", company_id:2)
Noticeboard.create(content:"Default Notice", company_id:3)


#user #1
Absence.create(:skip_on_create_validation => true,reason:"Broken leg",form:"illness",user_id:1,date:"2013-02-02 00:00:00.000000", date_ended:"2013-03-03 00:00:00.000000", company_id: 1)
Absence.create(:skip_on_create_validation => true,reason:"Broken arm",form:"illness",user_id:1,date:"2013-04-04 00:00:00.000000",date_ended:"2013-05-05 00:00:00.000000", company_id: 1)
Absence.create(:skip_on_create_validation => true,reason:"Business trip",form:"Authorised",user_id:1,date:"2013-06-06 00:00:00.000000",date_ended:"2013-07-07 00:00:00.000000", company_id: 1)

#user #2
Absence.create(:skip_on_create_validation => true,reason:"Broken leg",form:"illness",user_id:2,date:"2013-02-02 00:00:00.000000", date_ended:"2013-03-03 00:00:00.000000",company_id: 1)
Absence.create(:skip_on_create_validation => true,reason:"Broken arm",form:"illness",user_id:2,date:"2013-04-04 00:00:00.000000", date_ended:"2013-05-05 00:00:00.000000",company_id: 1)
Absence.create(:skip_on_create_validation => true,reason:"Business trip",form:"Authorised",user_id:2,date:"2013-06-06 00:00:00.000000",date_ended:"2013-07-07 00:00:00.000000", company_id: 1)

#user #3
Absence.create(:skip_on_create_validation => true,reason:"Broken leg",form:"illness",user_id:3,date:"2013-02-02 00:00:00.000000", date_ended:"2013-03-03 00:00:00.000000", company_id: 1)
Absence.create(:skip_on_create_validation => true,reason:"Broken arm",form:"illness",user_id:3,date:"2013-04-04 00:00:00.000000", date_ended:"2013-05-05 00:00:00.000000", company_id: 1)
Absence.create(:skip_on_create_validation => true,reason:"Business trip",form:"Authorised",user_id:3,date:"2013-06-06 00:00:00.000000", date_ended:"2013-07-07 00:00:00.000000", company_id: 1)

