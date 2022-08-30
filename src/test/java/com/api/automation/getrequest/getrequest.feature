Feature: to test the GET end point of the application 
	To test different get end point with different data formate supported by the application

	Background: Setup the base path
		Given url 'https://jobportalkarate.herokuapp.com'
		And print 'deu certo'

	@TC-01
	Scenario: To get all the data from application in JSON format
	#Given url 'https://jobportalkarate.herokuapp.com/normal/webapi/all'
		Given path '/normal/webapi/all'
	When method get
	Then status 200



	@TC-02
	Scenario: To get all the data from application in JSON format
		#Given url 'https://jobportalkarate.herokuapp.com'
		And path '/normal/webapi/all'
		And header Accept = 'application/json'
		When method get
		Then status 200

	@TC-03
	Scenario: To get all the data from application in JSON format
	#Given url 'https://jobportalkarate.herokuapp.com'
		And path '/normal/webapi/all'
		And header Accept = 'application/xml'
		When method get
		Then status 200
