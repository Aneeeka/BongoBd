Feature: Login Bongobd

Scenario Outline: Successfull Login with SMS
  Given We navigate to the BongoBd WebSite
  When We click the login button
  And we click the Login with phone Button
  And we enter '<mobile_number>' as phone number 
  And we click use SMS button
  And we enter the correct OTP
  Then we expect profile in main window

  Examples:
    | mobile_number | 
    |    1316100575 |

Scenario Outline: Login with Facebook notification when I didnot get the code at first for SMS
  Given We navigate to the BongoBd WebSite
  When We click the login button
  And we click the Login with phone Button
  And we enter '<mobile_number>' as phone number 
  And we click use SMS button
  And we click I didnt get the code
  And we click Get Code on Facebook
  And we enter the correct OTP
  Then we expect profile in main window

  Examples:
    | mobile_number | 
    |    1316100575 |

Scenario Outline: Login with SMS when I didnot get the code at first for Whatsapp
  Given We navigate to the BongoBd WebSite
  When We click the login button
  And we click the Login with phone Button
  And we enter '<mobile_number>' as phone number 
  And we click use SMS button
  And we click I didnt get the code
  And we click Get a WhatsApp code
  And we enter the correct OTP
  Then we expect profile in main window

  Examples:
    | mobile_number | 
    |    1316100575 |

Scenario Outline: Invalid Phone number during Login with SMS
	Given We navigate to the BongoBd WebSite
	When We click the login button
	And we click the Login with phone Button
	And we enter '<mobile_number>' as phone number 
	And we click use SMS button
	Then we expect message invalid phone number

	Examples:
    | mobile_number | 
    |    1234 | 
    |    2345 |

Scenario Outline: Invalid otp while Login with SMS
  Given We navigate to the BongoBd WebSite
  When We click the login button
  And we click the Login with phone Button
  And we enter '<mobile_number>' as phone number 
  And we click use SMS button
  And we enter the incorrect OTP
  Then we expect message invalid otp

  Examples:
    | mobile_number |
    |    1316100575 | 

Scenario Outline: Successfull Login with Whatsapp
  Given We navigate to the BongoBd WebSite
  When We click the login button
  And we click the Login with phone Button
  And we enter '<mobile_number>' as phone number 
  And we click use Whatsapp button
  And we enter the correct OTP
  Then we expect profile in main window

  Examples:
    | mobile_number | 
    |    1316100575 |

Scenario Outline: Invalid Phone number during Login with Whatsapp
  Given We navigate to the BongoBd WebSite
  When We click the login button
  And we click the Login with phone Button
  And we enter '<mobile_number>' as phone number 
  And we click use Whatsapp button
  Then we expect message invalid phone number

  Examples:
    | mobile_number | 
    |    1234 | 
    |    2345 |

Scenario Outline: Invalid otp while Login with Whatsapp
  Given We navigate to the BongoBd WebSite
  When We click the login button
  And we click the Login with phone Button
  And we enter '<mobile_number>' as phone number 
  And we click use Whatsapp button
  And we enter the incorrect OTP
  Then we expect message invalid otp

  Examples:
    | mobile_number | 
    |    1316100575 |

Scenario Outline: Login with Facebook notification when I didnot get the code at first for Whatsapp
  Given We navigate to the BongoBd WebSite
  When We click the login button
  And we click the Login with phone Button
  And we enter '<mobile_number>' as phone number 
  And we click use Whatsapp button
  And we click I didnt get the code
  And we click Get Code on Facebook
  And we enter the correct OTP
  Then we expect profile in main window

  Examples:
    | mobile_number | 
    |    1316100575 |

Scenario Outline: Login with SMS when I didnot get the code at first for Whatsapp
  Given We navigate to the BongoBd WebSite
  When We click the login button
  And we click the Login with phone Button
  And we enter '<mobile_number>' as phone number 
  And we click use Whatsapp button
  And we click I didnt get the code
  And we click Get an SMS code
  And we enter the correct OTP
  Then we expect profile in main window

  Examples:
    | mobile_number | 
    |    1316100575 |