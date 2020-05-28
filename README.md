# README
---
Property Hub Preconfigured 
---
Welcome to Property Hub - A House Selling and Buying Tracking System

Link to the application is [here](https://morning-savannah-83555.herokuapp.com) 

We have a preconfigured admin for the application

The admin login details are:
email id: admin@propertyhub.com, password: "qwerty"

Admin credentials: username: admin@propertyhub.com, password: "qwerty" Realtor credentials: username: realtor@realtor.com, password: "qwerty" House Hunter credentials: username: househunter@househunter.com, password: "qwerty"

Configuration of my rails APP
---
* Ruby version   
 2.4.4

* System dependencies 

  Gem dependencies: Devise, Paperclip, pg, rails12_factor 

* Configuration 

  Clone the repository and run the following commands in their order:

```
bundle install

Run rails db:migrate

Run rails db:seed

Run rails s
```

View the application on wwww.localhost:3000


Signup And Login Roles
---
You can sign up as a

 ●	Realtor

 ●	House hunter

But you can login as 

 ●	Realtor

 ●	House hunter

 ●	ADMIN
 
ADMIN
---
When admin logs in we show him 6 options to choose from namely List Users, List Companies, List Listings, List Enquiries, Update My Information, Create New User Account. In List Users, he can see the data of all users EXCEPT the passwords and has the ability to edit, delete users Except the admin accounts. He can also create users from this page by clicking on New User.

In List Companies page, he can see data of all companies and has the ability to edit, delete companies. He can also create companies from this page by clicking on New Company. Only Admin can delete a company.

In List Listings page, he can see data of all houses and have the ability to edit, delete houses. He can also create houses from this page by clicking on New House. When creating a house admin can upload images as well. He can also search houses based on the filters given on top of page.

In List Enquires page, he can see the data of all enquiries made by all users and has the ability to edit and delete these enquiries. He also can create an enquiry and has the ability to delete or edit existing ones.

Create New User Account- Inside this admin can create new Realtors and house Hunter accounts.

Update My Information- Inside here the admin can change his or her personal information like passwords and name and phone number. EXCEPT delete account he/she can perform all edit tasks associated with this account.

REALTOR
---
When realtor logs in we show him 5 options to choose from  Edit my company information(if associated with any company), List Listings, New Listing, List Enquiries, Update My Information. 
Also Upon first login Realtor has only the ability to view listings and not post any listings unless and until he is associated with a company. Reator can associate a with a company through update my profile link.

Update My Information- Inside here the admin can change his or her personal information like passwords and name and phone number. He/she can perform delete account as well as all edit tasks associated with this account. Also he/she can update their company association or if not then they can create their own company and then get associated with it.


Edit My Company Information- Edit the currently associated company information. 

In Listings page, he can see data of all houses and have the ability to edit, delete the houses which were created by him. He can also search houses based on the filters given on top of page.
Also at the bottom he has the option to create listings under his company.

New Listing- Add a new listing to the Listings platform with association with the current company


List Enquiries- The realtor only is able to see the enquiries associated with the Listings under his company.

House hunter
---
When House Hunter Logs in he/she has 5 options Update My information, List Companies, List Enquiries, List Listings.

Update My Information- Inside here the admin can change his or her personal information like passwords and name and phone number. He/she can perform delete account as well as all edit tasks associated with this account. Also he/she can update their company association or if not then they can create their own company and then get associated with it.

List Companies - The House hunter is able to view all the companies associated with the application. The house hunter has the ability to only view the companies and list them.

List Listings- This link redirects to the index page of all listings. 

The house hunter has the ability to search Listings(houses) using 
1.)MIN and MAX Price range - defaults to 1 million to 1000million
2.)MIn and MAX Square footage - dedfaults to 100 sqft. to 1,00,000 sqft.
3.)Location based search

List enquiries:
In this link the house hunter can view all of his/herb enquiries and they have the ability to view , edit and destroy them and the page has a create enquiry link
 
Create Enquiries - In this link the house hunter can post enquiries for a particular listings 


