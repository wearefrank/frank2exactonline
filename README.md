# Frank2ExactOnline
## Moneybird2ExactOnline

The MoneyBird2ExactOnline Frank is an application that can be used to connect two widely used financial tools, Moneybird and Exact Online.
This allows the user to combine the simple and uncluttered way of creating invoices that Moneybird provides, with the deep, all-encompassing platform Exact Online offers.

The MoneyBird2ExactOnline Frank can be used to automatically export your invoices from Moneybird over to Exact Online.
This can be activated manually if it's an irregular occurence, or it can be scheduled to take place at whatever time interval is suitable.
When executed, the MoneyBird2ExactOnline Frank saves the date of the last created invoice which is used to determine where it will pick up the process next time.
It is necessary to provide a date on first time use.
 
If any items are present on the Moneybird invoice that are not yet incorporated in your Exact Online, they will be added automatically using the information from the invoice.
This includes a generated item code, a name, a description and a sales price. Any further desired details need to be added manually in Exact Online.

To use the MoneyBird2ExactOnline Frank you will need to change the following inside the code for it to be work.


- MoneyBird Api client id/secret
- MoneyBird Api token/refresh token
- MoneyBird administration number
- Exact Online Api client id/secret
- Exact Online Api token/refresh token
- Exact Online division number

## MoneyBird Api client id/secret
To be able connect with the MoneyBird Api we have to use the Oauth2 authentication. The first thing we need for this is the client id/secret.
These can be found in the account settings. By login in to your MoneyBird account you can find the developers section inside your account settings. Here you can create an Api token or accessing an already existing token. This will give you your client id and secret. You will have to write those done inside tokenMoneyBird.xml inside the MoneyBird Api folder.

## MoneyBird Api token/refresh token
To get the Api token/refresh token we will be using Postman. You can use any other programs to retrieve the tokens, but for this example we will be using Postman.
Inside Postman make a new tab be pressing the plus in the workspace. In this tab go to the autorization. Make sure your autorization type is set to Oath 2.0, this can be done in the dropdown list on the left side. Next scroll to the Configure New Token section.
Give your token a name so you will be able to easily find it should you need it again. Make sure the grant type is set to authorization code.
Next is the callback url, this can be found above your client id in the developers section of MoneyBird.
The auth url for MoneyBird is https://moneybird.com/oauth/authorize
and the Access token url is https://moneybird.com/oauth/token
Now you just have to fill in your client id/secret and press the get new access token button. After you login you will get a screen with your access token and refresh token. Copy both into tokenMoneyBird.xml.

## MoneyBird administration number
To find your administration number you need to your administration and look at the url. https://moneybird.com/346124425543812295/feed the number in the url is your administration number.
You will need to change the administration number in the following location:
frank2exactonline\war\src\main\resources\DeploymentSpecifics.properties

## Exact Online Api client id/secret
To be able connect with the MoneyBird Api we have to use the Oauth2 authentication. The first thing we need for this is the client id/secret.
Login to Exact Online, under the section Documentation & Important links is a button named managed apps. This takes you to a new page where you have to login again. In the top right press manage my apps. Scroll down and click on the tab testing apps. Register a new testing app. As redirect url use https://www.getpostman.com/oauth2/callback now you can get your client id/secret. Copy those to tokenExact.xml in the Exact Online Api folder.

## Exact Online Api token/refresh token
To get the Api token/refresh token we will be using Postman. You can use any other programs to retrieve the tokens, but for this example we will be using Postman.
Inside Postman make a new tab be pressing the plus in the workspace. In this tab go to the autorization. Make sure your autorization type is set to Oath 2.0, this can be done in the dropdown list on the left side. Next scroll to the Configure New Token section.
Give your token a name so you will be able to easily find it should you need it again. Make sure the grant type is set to authorization code.
Next is the callback url for this use https://www.getpostman.com/oauth2/callback.
The auth url for MoneyBird is https://start.exactonline.nl/api/oauth2/auth
and the Access token url is https://start.exactonline.nl/api/oauth2/token
Now you just have to fill in your client id/secret and press the get new access token button. After you login you will get a screen with your access token and refresh token. Copy both into tokenExact.xml.

## Exact Online division number
To get your division number you will have to make an Apicall with Postman.
Using the token we created in the previous step make a get call. Make sure the dropdown on the left says get and then fill in the following url: https://start.exactonline.nl/api/v1/current/Me?$select=CurrentDivision
now press the send button. This will return your division number.
You will need to change the division number in the following location:
frank2exactonline\war\src\main\resources\DeploymentSpecifics.properties
