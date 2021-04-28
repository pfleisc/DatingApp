Create table tblSensorTemps (
	sensorTemps_ID INT IDENTITY(1,1) PRIMARY KEY,
	sensorID VARCHAR(30) NOT NULL,
	sensorTempCelsius DECIMAL(17,4) NOT NULL,
	sensorDatetime DATETIME2 NOT NULL
)

Create table tblSensorNameReference (
	sensorID VARCHAR(30) NOT NULL PRIMARY KEY,
	sensorName VARCHAR(150),
	deviceConnected bit NOT NULL DEFAULT 0,
	currentTemp decimal(17,4) NOT NULL,
	addedDatetime DATETIME2 NOT NULL,
	updatedDatetime DATETIME2 NOT NULL
)

Create table tblSensorConfiguration (
	configurationID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	configurationName VARCHAR(150), 
	isActive BIT NOT NULL DEFAULT 1,
	updatedDatetime DATETIME2 NOT NULL
)