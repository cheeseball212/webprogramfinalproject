
USE master
CREATE DATABASE DOCTORS_OFFICE



USE DOCTORS_OFFICE 
drop table patient
CREATE TABLE PATIENT(
PATIENT_ID	VARCHAR(6) NOT NULL
			CONSTRAINT PK_PATIENT_ID
			PRIMARY KEY,
FNAME		VARCHAR(25) NOT NULL,
LNAME		VARCHAR(25) NOT NULL,
MIDINIT		CHAR(1),
DOB			DATE	NOT NULL,
GENDER		CHAR(6) NOT NULL,
			CHECK(GENDER IN('MALE', 'FEMALE', 'NA')),
ACCT_BAL	DECIMAL(9,2) NOT NULL
			DEFAULT 0,
PHONE1		VARCHAR(15),
PHONE2		VARCHAR(15),
STATE_ST	CHAR(2),
ZIP			VARCHAR(5),
STREET		VARCHAR(60),
CITY		VARCHAR(60),
EMAIL1		VARCHAR(100),
EMAIL2		VARCHAR(100) 
)

Drop Proc add_patient
CREATE PROC add_PATIENT(
@PATIENT_ID       varchar(6),
@fname          	varchar(25),
@lname          	varchar(25),
@midint          	char(1),
@DOB					DATE, 
@ACCT_BAL		DECIMAL(9,2) =0,
@gender         	char(6), 	
@phone1  		varchar(15)  = ' ',
@email1     		varchar(100)  = ' ',
@street				varchar(60) = ' ',
@zip            	varchar(5) = ' ',
@state_st          	char(2) = ' ',
@city           	varchar(60) = ' ',
@phone2  		varchar(15)  = ' ',
@email2      		varchar(100)  = ' '
)


AS
BEGIN
SET NOCOUNT ON;
BEGIN TRANSACTION
INSERT INTO PATIENT (PATIENT_ID, fname, lname, midinit, DOB, acct_bal, gender, phone1, email1, street, zip, state_st, city, phone2, email2)
 
VALUES (@PATIENT_ID, @fname, @lname, @midint, @DOB, @acct_bal, @gender, @phone1, @email1, @street, @zip, @state_st, @city, @phone2, @email2 )
if @@ERROR <> 0
begin
rollback transaction
raiserror ('Unable to insert PATIENT record.',16,1)
return -1
end
else
begin
commit transaction
print 'PATIENT Record added successfully!'
end
end             	
GO

EXEC add_patient '000003','Justin','Gochenaur','T', '1994-3-3', '0', 'Male',
'7175176759', 'jtgochenaur@stevenscollege.edu', '4 State St', '17548','PA','Willow'
drop table doctor
CREATE TABLE DOCTOR(
DOCTOR_ID	VARCHAR(6) NOT NULL
			CONSTRAINT PK_DOCTOR_ID
			PRIMARY KEY,
FNAME		VARCHAR(25) NOT NULL,
LNAME		VARCHAR(25) NOT NULL,
MIDINIT		CHAR(1),
DOB			DATE	NOT NULL,
GENDER		CHAR(6) NOT NULL,
			CHECK(GENDER IN('MALE', 'FEMALE', 'NA')),
HOME_PHONE	VARCHAR(15),
WORK_PHONE	VARCHAR(15),
STATE_ST	CHAR(2),
ZIP			VARCHAR(5),
STREET		VARCHAR(60),
CITY		VARCHAR(60),
EMAIL1		VARCHAR(100), 
EMAIL2		VARCHAR(100),
SALARY		DECIMAL(8,2) NOT NULL DEFAULT 100000,
SPECIALTY1 VARCHAR(50) NOT NULL,
SPECIALTY2 VARCHAR(50),
SPECIALTY3 VARCHAR(50),
SPECIALTY4 VARCHAR(50)
)

drop proc add_doctor

CREATE PROC add_DOCTOR(
@DOCTOR_ID       varchar(6),
@fname          	varchar(25),
@midint          	char(1),
@lname          	varchar(25),
@DOB					DATE, 
@gender         	char(6),
@specialty1		varchar(50) = ' ',
@salary         	decimal(8,2) = 100000,
@email1     		varchar(100)  = ' ', 	
@work_phone  		varchar(15)  = ' ',
@city           	varchar(60) = ' ',
@street				varchar(60) = ' ',
@state_st          	char(2) = ' ',
@zip            	varchar(5) = ' ',
@email2      		varchar(100)  = ' ',  
@specialty2		varchar(50) = ' ',
@specialty3		varchar(50) = ' ',
@specialty4		varchar(50) = ' ',
@HOME_phone  		varchar(15)  = ' '
)

AS
BEGIN
SET NOCOUNT ON;
BEGIN TRANSACTION
INSERT INTO DOCTOR (DOCTOR_ID, fname, midinit, lname, DOB, gender, specialty1, salary, email1, work_phone, city, street, state_st, zip, email2, specialty2, specialty3, specialty4, HOME_phone)
 
VALUES (@DOCTOR_ID, @fname, @midint, @lname, @DOB, @gender, @specialty1, @salary, @email1, @work_phone, @city, @street, @state_st, @zip, @email2, @specialty2, @specialty3, @specialty4, @HOME_phone)
if @@ERROR <> 0
begin
rollback transaction
raiserror ('Unable to insert DOCTOR record.',16,1)
return -1
end
else
begin
commit transaction
print 'DOCTOR Record added successfully!'
end
end             	
GO

exec add_doctor '100007','Travis','Q', 'Burton','1994-3-3','Male','Gyno', 400000, 'TJBurton111@stevenscollege.edu', '7175176759','Harrisburg','12 State st', 'PA', '17544'
 

drop table visit
CREATE TABLE VISIT(
	visit_ID	int IDENTITY(1,1)
					PRIMARY KEY,
	DOCTOR_ID	VARCHAR(6) NOT NULL
				FOREIGN KEY (DOCTOR_ID) REFERENCES
				DOCTOR(DOCTOR_ID),
	PATIENT_ID	VARCHAR(6) NOT NULL
				FOREIGN KEY (PATIENT_ID) REFERENCES
				PATIENT(PATIENT_ID),
	DIAGNOSIS1	VARCHAR(50),
	DIAGNOSIS2	VARCHAR(50),
	DIAGNOSIS3	VARCHAR(50),
	DIAGNOSIS4	VARCHAR(50),
	DATEOFVISIT	DATETIME	NOT NULL
				DEFAULT(GETDATE()),
	COST		DECIMAL(7,2) NOT NULL DEFAULT 50
)


---------------------------------------------------------------------------

drop proc add_visit
CREATE PROC add_visit(
	@doctor_ID		VARCHAR(6),
	@patient_ID		VARCHAR(6),
	@cost		DECIMAL(7,2) = 50

)
AS
	BEGIN
	SET NOCOUNT ON
		BEGIN TRANSACTION
			INSERT INTO visit(doctor_ID,patient_ID,cost)
		VALUES(@doctor_ID,@patient_ID,@cost)
IF @@ERROR <>0
	BEGIN
		ROLLBACK TRANSACTION
	RAISERROR ('Unable to insert record.',16,1)
		RETURN -1
	END
ELSE
	BEGIN
		COMMIT TRANSACTION
			PRINT 'Record added successfully!'
		END
END
GO

EXEC add_visit '100007','000003'


--------------------------------------------------------------------------------

drop proc update_visit
CREATE PROCEDURE update_visit(
    @visit_ID			int,
	@cost				DECIMAL(7,2) = 50,
	@diagnosis1			VARCHAR(50) = 'Scirosis',
	@diagnosis2			VARCHAR(50) = '',
	@diagnosis3			VARCHAR(50) = ''
)
AS
BEGIN
    SET NOCOUNT ON;
	BEGIN TRANSACTION
    UPDATE visit
    SET cost=ISNULL(@cost,cost), 
        diagnosis1=ISNULL(@diagnosis1,diagnosis1), 
        diagnosis2=ISNULL(@diagnosis2, diagnosis2),
		diagnosis3=ISNULL(@diagnosis3, diagnosis3)
    WHERE visit_ID = @visit_ID 
IF @@ERROR <>0
	BEGIN
		ROLLBACK TRANSACTION
	RAISERROR ('Unable to insert record.',16,1)
		RETURN -1
	END
ELSE
	BEGIN
		COMMIT TRANSACTION
			PRINT 'Record added successfully!'
		END
END
GO

EXEC update_visit 3,100,'Scirosis'

-----------------------------------------------------------------------------------------

drop proc delete_visit
CREATE PROC delete_visit(
	@visit_ID int
)
AS
BEGIN
    SET NOCOUNT ON;
	BEGIN TRANSACTION
		DELETE FROM visit
	WHERE visit_ID=@visit_ID
IF @@ERROR <>0
	BEGIN
		ROLLBACK TRANSACTION
	RAISERROR ('Unable to insert record.',16,1)
		RETURN -1
	END
ELSE
	BEGIN
		COMMIT TRANSACTION
			PRINT 'Record added successfully!'
		END
END
GO

EXEC delete_visit 3

-------------------------------------------------------------------------------------------------

SELECT COUNT(patient_ID) AS TotalPatient
FROM patient
--------------------------------------------------------------------------------------------
SELECT doctor_ID, COUNT(patient_ID) AS TotalPatients
FROM visit
GROUP BY doctor_ID


SELECT patient_ID, diagnosis1, doctor_ID
FROM visit
ORDER BY diagnosis1, doctor_ID

-------------------------------------------------------------------------------------

drop table payment

USE DOCTORS_OFFICE
CREATE TABLE PAYMENT(
	PAYMENT_ID	INT NOT NULL
				IDENTITY(1,1)
				CONSTRAINT PK_PAYMENT_ID PRIMARY KEY,
	PATIENT_ID	VARCHAR(6) NOT NULL
				FOREIGN KEY (PATIENT_ID) REFERENCES
				PATIENT(PATIENT_ID),
	DOCTOR_ID	VARCHAR(6) NOT NULL
				FOREIGN KEY (DOCTOR_ID) REFERENCES
				DOCTOR(DOCTOR_ID),
	PAYMENTDATE	DATETIME	NOT NULL
				DEFAULT(GETDATE()),
	PAYMENTTYPE	VARCHAR(6) NOT NULL,
			CHECK(PAYMENTTYPE IN('CREDIT', 'DEBIT', 'CASH', 'CHECK')),
	PAYMENTAMOUNT	DECIMAL(7,2) NOT NULL DEFAULT 0
)


---------------------------------------------------------------------------------------------------
drop trigger update_acct_Bal
CREATE TRIGGER update_acct_Bal
ON VISIT
FOR INSERT
AS
	Begin
		declare @patient_ID varchar(6);
		declare @Cost	decimal(7,2);
		declare @totalpaid	decimal(7,2);
		select @patient_ID = i.patient_ID from inserted i;
		select @Cost = sum(cost) from Visit v where v.patient_id =
		@patient_ID;
		select @totalpaid = sum(paymentamount) from PAYMENT p where p.patient_id =
		@patient_ID;
		update PATIENT
		set acct_bal = @Cost - @totalpaid
		where patient_id=@patient_ID;
	IF @@ERROR <> 0
	BEGIN
		ROLLBACK TRANSACTION
	RAISERROR ('Unable to insert record.',16,1)
	END
	End
GO


SELECT *
FROM patient
WHERE patient_ID = '000001'

--~~~~~~~~~~~~COMMENTS~~~~~~~~~~~~--

Select * from DOCTOR
Select * from PATIENT
select PATIENT_ID from patient where PATIENT_ID ='' 

select * from pa_em
select * from pa_em where id_em ='138928' 
update pa_em set sc_em = 1 where id_login ='103973' 
update pa_em set ID_ALT = '026549' where id_login ='026549'
update pa_em set ts_crt_pw= timestamp '2017-12-30 00:00:00' where id_login='139871' 
update pa_em set pw_slt_em='ba48db58-0b68-4352-a18d-6b9580cd0623' where id_em='140281' 
update pa_em set pw_acs_em='Kb5ZDQnWGO9aYSC5+ZOt/fzXfZg0vtwigUcWTjRFZcw=' where id_em='140281'  
update as_ws set sc_tml_ws=2 where id_ws='002' --AND dc_dy_bsn='2017-05-10'
update as_drw_ws set sc_drw_ws=2 where id_ws='002'
update as_tl set sc_tl=2 where id_ws='002' --AND dc_dy_bsn='2017-05-10'
select * from as_tl
update pa_em set numb_fld_pw=0 where id_login='140281'  
update pa_em set ts_crt_pw= timestamp '2017-12-30 00:00:00' where id_login='pos' 
select * from tr_trn where dc_dy_bsn = '2017-05-'



INSERT INTO PATIENT(PATIENT_ID, FNAME, LNAME, MIDINIT, DOB, GENDER)
VALUES ('111111', 'Justin', 'Gochenaur', 'T', '03/03/1994', 'Male')

INSERT INTO DOCTOR(DOCTOR_ID, FNAME, LNAME, DOB, GENDER, SALARY, SPECIALTY1)
VALUES ('222222', 'Cameron', 'Weiler', '02/02/1992', 'Male', '9000.00', 'GYNO')

INSERT INTO PAYMENT(PATIENT_ID, DOCTOR_ID, PAYMENTDATE, PAYMENTTYPE, PAYMENTAMOUNT)
VALUES ('111111', '222222', '10/05/2017', 'CREDIT', '10.00')


select * from PAYMENT 

--~~update patient table and set email1 to desired email where patientid is equal to~~--

update PATIENT set EMAIL1 ='justingochenaur@gmail.com' where PATIENT_ID = '111111'

update PATIENT set PHONE1 ='justingochenaur@gmail.com' where PATIENT_ID = '111111'