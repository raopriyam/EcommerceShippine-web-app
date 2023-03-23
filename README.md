# EcommerceShippine-web-app

EcommerceShipping web Application user manual


Table of Contents
Overview	1
Sign up Page	2
Sign in Page	3
Inventory page	4
Room for Improvement	5


Overview:
EcommerceShipping web application is an application that allows the users to create their accounts login into that account and reach the inventory. Where they can look at the products available and check which ones of them can be shipped on weekends as well. Based on that, after they choose the order date. A earliest shipping date is generated and shown to the user. 




Sign In Page:
 
If the user already has an account. They can login using their credentials. The email address is your username when you signed up and the password you created. If they don’t have an account, they can click on the Create an account link. They can use that link to sign up. Basic server side and client side validations are implemented here.










Sign up Page:
 

If the user isn’t signed up, they can sign up on this page. All the fields in here are mandatory. If you leave any field empty, it won’t let you register. Once you register, it will show you a success message that the user has successfully created the account. Basic server-side and client-side validations are implemented here. If you have already logged in, click on the I am already a member. 









Inventory Page
 
There is the inventory page where the user can check the products and their ship On Weekends values and the shipping date by entering the order date. 

















Room for improvement:
-	I created the inventory database where the user info and their credentials are stored. There password is still in plain text. So, it is not completely protected. 
-	When we are talking about the web application for inventory management, it should keep the record of the orders placed by the users. That functionality is still missing.
-	I wrote the functions but all those functions needs to have test cases for them.
-	Since the quantity can be an issue as well, adding a functionality that places an order when the quantity goes below 20 or any number preferable need to be there. If not automated, it should provide the reminder to the worker through the email or when the purchase was made and the number went lower than the threshold. 
-	The customers need to be told when the item is shipped through automated email or something. 
-	Forgot password functionality should also be there. So, it would need to send the email with ne link or temporary password. 
This is all I can come up with now.  There might be a few more ways we can make this even better. 

**Deployment:
Unfortunately, I am not able to deploy this application. I am not very good with the deployment process. Within the context of my project, the DevOps team has constructed the pipeline that is used to distribute the code in Kubetnets clusters. I am interested in learning more about the Docker and Kubernetes technologies, so I am currently investigating how they work. So, I were to try to deploy this now it would take a lot more time. So I am submitting this for now. **
