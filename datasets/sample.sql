BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES('Account-1','Sample Account for Entitlements','');
INSERT INTO "Account" VALUES('Account-2','Toto','');
INSERT INTO "Account" VALUES('Account-3','Titi','');
CREATE TABLE "Delivery_Item__c" (
	id VARCHAR(255) NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-1','2025-01-04','Non-refrigerated','D-0001-1','Delivery__c-1');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-2','2025-01-11','Non-refrigerated','D-0001-2','Delivery__c-1');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-3','2025-01-08','Frozen','D-0001-2','Delivery__c-2');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-4','2025-12-19','Non-refrigerated','D-0001-1','Delivery__c-2');
CREATE TABLE "Delivery__c" (
	id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES('Delivery__c-1','2025-01-05T11:00:00.000+0000','Scheduled','Account-3');
INSERT INTO "Delivery__c" VALUES('Delivery__c-2','2025-01-01T11:00:00.000+0000','Requested','Account-2');
COMMIT;
