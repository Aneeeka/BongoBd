Feature: See various content

Scenario Outline: Watch a single channel
	Given We navigate to the BongoBd WebSite
	When We click '<channel>' link
	Then we get the '<channel_title>' title in page


	Examples:
    | channel | channel_title | 
    | SA TV   | SA TV         |

Scenario Outline: Watch a single Category
	Given We navigate to the BongoBd WebSite
	When We click '<category>' link
	Then we get the '<category_title>' title in page


	Examples:
    | category | category_title | 
    | Movies   | Movies         |

Scenario Outline: View correctly free content
	Given We navigate to the BongoBd WebSite
	When the '<video>' content is free
	And We click '<video>' link
	Then we get the '<video_title>' title in page


	Examples:
    | video | video_title | 
    | Murgi   | Murgi        |
    | Premi O Premi.   | Premi O Premi. |

Scenario Outline: Show login page for exclusive video
	Given We navigate to the BongoBd WebSite
	When The '<video>' content is only for exclusive
	And We click '<video>' link
	# And the '<video>' is free
	Then we get the 'Login' title in page


	Examples:
    | video | video_title | 
    | Premi O Premi. | Premi O Premi. |
