USE [AD3]
GO
/****** Object:  Table [dbo].[WorkOrderRouting]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderRouting](
	[WorkOrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[OperationSequence] [smallint] NOT NULL,
	[LocationID] [smallint] NOT NULL,
	[ScheduledStartDate] [datetime] NOT NULL,
	[ScheduledEndDate] [datetime] NOT NULL,
	[ActualStartDate] [datetime] NULL,
	[ActualEndDate] [datetime] NULL,
	[ActualResourceHrs] [decimal](9, 4) NULL,
	[PlannedCost] [money] NOT NULL,
	[ActualCost] [money] NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrder]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrder](
	[WorkOrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrderQty] [int] NOT NULL,
	[StockedQty] [int] NOT NULL,
	[ScrappedQty] [smallint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[DueDate] [datetime] NOT NULL,
	[ScrapReasonID] [smallint] NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vVendor]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vVendor](
	[VendorID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ContactType] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[Phone] [nvarchar](25) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[EmailPromotion] [int] NOT NULL,
	[AddressLine1] [nvarchar](60) NOT NULL,
	[AddressLine2] [nvarchar](60) NULL,
	[City] [nvarchar](30) NOT NULL,
	[StateProvinceName] [nvarchar](50) NOT NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[CountryRegionName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vStoreWithDemographics]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vStoreWithDemographics](
	[CustomerID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ContactType] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[Phone] [nvarchar](25) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[EmailPromotion] [int] NOT NULL,
	[AddressType] [nvarchar](50) NOT NULL,
	[AddressLine1] [nvarchar](60) NOT NULL,
	[AddressLine2] [nvarchar](60) NULL,
	[City] [nvarchar](30) NOT NULL,
	[StateProvinceName] [nvarchar](50) NOT NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[CountryRegionName] [nvarchar](50) NOT NULL,
	[AnnualSales] [money] NULL,
	[AnnualRevenue] [money] NULL,
	[BankName] [nvarchar](50) NULL,
	[BusinessType] [nvarchar](5) NULL,
	[YearOpened] [int] NULL,
	[Specialty] [nvarchar](50) NULL,
	[SquareFeet] [int] NULL,
	[Brands] [nvarchar](30) NULL,
	[Internet] [nvarchar](30) NULL,
	[NumberEmployees] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vStateProvinceCountryRegion]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vStateProvinceCountryRegion](
	[StateProvinceID] [int] NOT NULL,
	[StateProvinceCode] [nchar](3) NOT NULL,
	[IsOnlyStateProvinceFlag] [bit] NOT NULL,
	[StateProvinceName] [nvarchar](50) NOT NULL,
	[TerritoryID] [int] NOT NULL,
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[CountryRegionName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vSalesPersonSalesByFiscalYears]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vSalesPersonSalesByFiscalYears](
	[SalesPersonID] [int] NULL,
	[FullName] [nvarchar](152) NULL,
	[Title] [nvarchar](50) NOT NULL,
	[SalesTerritory] [nvarchar](50) NOT NULL,
	[2002] [money] NULL,
	[2003] [money] NULL,
	[2004] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vSalesPerson]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vSalesPerson](
	[SalesPersonID] [int] NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[JobTitle] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](25) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[EmailPromotion] [int] NOT NULL,
	[AddressLine1] [nvarchar](60) NOT NULL,
	[AddressLine2] [nvarchar](60) NULL,
	[City] [nvarchar](30) NOT NULL,
	[StateProvinceName] [nvarchar](50) NOT NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[CountryRegionName] [nvarchar](50) NOT NULL,
	[TerritoryName] [nvarchar](50) NULL,
	[TerritoryGroup] [nvarchar](50) NULL,
	[SalesQuota] [money] NULL,
	[SalesYTD] [money] NOT NULL,
	[SalesLastYear] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vProductModelInstructions]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vProductModelInstructions](
	[ProductModelID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Instructions] [nvarchar](max) NULL,
	[LocationID] [int] NULL,
	[SetupHours] [decimal](9, 4) NULL,
	[MachineHours] [decimal](9, 4) NULL,
	[LaborHours] [decimal](9, 4) NULL,
	[LotSize] [int] NULL,
	[Step] [nvarchar](1024) NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vProductModelCatalogDescription]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vProductModelCatalogDescription](
	[ProductModelID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Summary] [nvarchar](max) NULL,
	[Manufacturer] [nvarchar](max) NULL,
	[Copyright] [nvarchar](30) NULL,
	[ProductURL] [nvarchar](256) NULL,
	[WarrantyPeriod] [nvarchar](256) NULL,
	[WarrantyDescription] [nvarchar](256) NULL,
	[NoOfYears] [nvarchar](256) NULL,
	[MaintenanceDescription] [nvarchar](256) NULL,
	[Wheel] [nvarchar](256) NULL,
	[Saddle] [nvarchar](256) NULL,
	[Pedal] [nvarchar](256) NULL,
	[BikeFrame] [nvarchar](max) NULL,
	[Crankset] [nvarchar](256) NULL,
	[PictureAngle] [nvarchar](256) NULL,
	[PictureSize] [nvarchar](256) NULL,
	[ProductPhotoID] [nvarchar](256) NULL,
	[Material] [nvarchar](256) NULL,
	[Color] [nvarchar](256) NULL,
	[ProductLine] [nvarchar](256) NULL,
	[Style] [nvarchar](256) NULL,
	[RiderExperience] [nvarchar](1024) NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vProductAndDescription]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vProductAndDescription](
	[ProductID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProductModel] [nvarchar](50) NOT NULL,
	[CultureID] [nchar](6) NOT NULL,
	[Description] [nvarchar](400) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vJobCandidateEmployment]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vJobCandidateEmployment](
	[JobCandidateID] [int] NOT NULL,
	[Emp.StartDate] [datetime] NULL,
	[Emp.EndDate] [datetime] NULL,
	[Emp.OrgName] [nvarchar](100) NULL,
	[Emp.JobTitle] [nvarchar](100) NULL,
	[Emp.Responsibility] [nvarchar](max) NULL,
	[Emp.FunctionCategory] [nvarchar](max) NULL,
	[Emp.IndustryCategory] [nvarchar](max) NULL,
	[Emp.Loc.CountryRegion] [nvarchar](max) NULL,
	[Emp.Loc.State] [nvarchar](max) NULL,
	[Emp.Loc.City] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vJobCandidateEducation]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vJobCandidateEducation](
	[JobCandidateID] [int] NOT NULL,
	[Edu.Level] [nvarchar](max) NULL,
	[Edu.StartDate] [datetime] NULL,
	[Edu.EndDate] [datetime] NULL,
	[Edu.Degree] [nvarchar](50) NULL,
	[Edu.Major] [nvarchar](50) NULL,
	[Edu.Minor] [nvarchar](50) NULL,
	[Edu.GPA] [nvarchar](5) NULL,
	[Edu.GPAScale] [nvarchar](5) NULL,
	[Edu.School] [nvarchar](100) NULL,
	[Edu.Loc.CountryRegion] [nvarchar](100) NULL,
	[Edu.Loc.State] [nvarchar](100) NULL,
	[Edu.Loc.City] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vJobCandidate]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vJobCandidate](
	[JobCandidateID] [int] NOT NULL,
	[EmployeeID] [int] NULL,
	[Name.Prefix] [nvarchar](30) NULL,
	[Name.First] [nvarchar](30) NULL,
	[Name.Middle] [nvarchar](30) NULL,
	[Name.Last] [nvarchar](30) NULL,
	[Name.Suffix] [nvarchar](30) NULL,
	[Skills] [nvarchar](max) NULL,
	[Addr.Type] [nvarchar](30) NULL,
	[Addr.Loc.CountryRegion] [nvarchar](100) NULL,
	[Addr.Loc.State] [nvarchar](100) NULL,
	[Addr.Loc.City] [nvarchar](100) NULL,
	[Addr.PostalCode] [nvarchar](20) NULL,
	[EMail] [nvarchar](max) NULL,
	[WebSite] [nvarchar](max) NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vIndividualDemographics]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vIndividualDemographics](
	[CustomerID] [int] NOT NULL,
	[TotalPurchaseYTD] [money] NULL,
	[DateFirstPurchase] [datetime] NULL,
	[BirthDate] [datetime] NULL,
	[MaritalStatus] [nvarchar](1) NULL,
	[YearlyIncome] [nvarchar](30) NULL,
	[Gender] [nvarchar](1) NULL,
	[TotalChildren] [int] NULL,
	[NumberChildrenAtHome] [int] NULL,
	[Education] [nvarchar](30) NULL,
	[Occupation] [nvarchar](30) NULL,
	[HomeOwnerFlag] [bit] NULL,
	[NumberCarsOwned] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vIndividualCustomer]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vIndividualCustomer](
	[CustomerID] [int] NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[Phone] [nvarchar](25) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[EmailPromotion] [int] NOT NULL,
	[AddressType] [nvarchar](50) NOT NULL,
	[AddressLine1] [nvarchar](60) NOT NULL,
	[AddressLine2] [nvarchar](60) NULL,
	[City] [nvarchar](30) NOT NULL,
	[StateProvinceName] [nvarchar](50) NOT NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[CountryRegionName] [nvarchar](50) NOT NULL,
	[Demographics] [xml] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorContact]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorContact](
	[VendorID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[ContactTypeID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorAddress]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorAddress](
	[VendorID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[AddressTypeID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[VendorID] [int] NOT NULL,
	[AccountNumber] [nvarchar](15) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreditRating] [tinyint] NOT NULL,
	[PreferredVendorStatus] [bit] NOT NULL,
	[ActiveFlag] [bit] NOT NULL,
	[PurchasingWebServiceURL] [nvarchar](1024) NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vEmployeeDepartmentHistory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vEmployeeDepartmentHistory](
	[EmployeeID] [int] NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[Shift] [nvarchar](50) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vEmployeeDepartment]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vEmployeeDepartment](
	[EmployeeID] [int] NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[JobTitle] [nvarchar](50) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vEmployee]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vEmployee](
	[EmployeeID] [int] NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[JobTitle] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](25) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[EmailPromotion] [int] NOT NULL,
	[AddressLine1] [nvarchar](60) NOT NULL,
	[AddressLine2] [nvarchar](60) NULL,
	[City] [nvarchar](30) NOT NULL,
	[StateProvinceName] [nvarchar](50) NOT NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[CountryRegionName] [nvarchar](50) NOT NULL,
	[AdditionalContactInfo] [xml] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vAdditionalContactInfo]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vAdditionalContactInfo](
	[ContactID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[TelephoneNumber] [nvarchar](50) NULL,
	[TelephoneSpecialInstructions] [nvarchar](max) NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[StateProvince] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](50) NULL,
	[CountryRegion] [nvarchar](50) NULL,
	[HomeAddressSpecialInstructions] [nvarchar](max) NULL,
	[EMailAddress] [nvarchar](128) NULL,
	[EMailSpecialInstructions] [nvarchar](max) NULL,
	[EMailTelephoneNumber] [nvarchar](50) NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitMeasure]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitMeasure](
	[UnitMeasureCode] [nchar](3) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionHistoryArchive]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionHistoryArchive](
	[TransactionID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ReferenceOrderID] [int] NOT NULL,
	[ReferenceOrderLineID] [int] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[TransactionType] [nchar](1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ActualCost] [money] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionHistory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionHistory](
	[TransactionID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ReferenceOrderID] [int] NOT NULL,
	[ReferenceOrderLineID] [int] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[TransactionType] [nchar](1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ActualCost] [money] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoreContact]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreContact](
	[CustomerID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[ContactTypeID] [int] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[CustomerID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SalesPersonID] [int] NULL,
	[Demographics] [xml] NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateProvince]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateProvince](
	[StateProvinceID] [int] NOT NULL,
	[StateProvinceCode] [nchar](3) NOT NULL,
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[IsOnlyStateProvinceFlag] [bit] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TerritoryID] [int] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecialOfferProduct]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialOfferProduct](
	[SpecialOfferID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecialOffer]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialOffer](
	[SpecialOfferID] [int] NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[DiscountPct] [smallmoney] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[MinQty] [int] NOT NULL,
	[MaxQty] [int] NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartItem]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItem](
	[ShoppingCartItemID] [int] NOT NULL,
	[ShoppingCartID] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipMethod]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipMethod](
	[ShipMethodID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ShipBase] [money] NOT NULL,
	[ShipRate] [money] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shift]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift](
	[ShiftID] [tinyint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScrapReason]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScrapReason](
	[ScrapReasonID] [smallint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesTerritoryHistory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesTerritoryHistory](
	[SalesPersonID] [int] NOT NULL,
	[TerritoryID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesTerritory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesTerritory](
	[TerritoryID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[Group] [nvarchar](50) NOT NULL,
	[SalesYTD] [money] NOT NULL,
	[SalesLastYear] [money] NOT NULL,
	[CostYTD] [money] NOT NULL,
	[CostLastYear] [money] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesTaxRate]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesTaxRate](
	[SalesTaxRateID] [int] NOT NULL,
	[StateProvinceID] [int] NOT NULL,
	[TaxType] [tinyint] NOT NULL,
	[TaxRate] [smallmoney] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesReason]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesReason](
	[SalesReasonID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ReasonType] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesPersonQuotaHistory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPersonQuotaHistory](
	[SalesPersonID] [int] NOT NULL,
	[QuotaDate] [datetime] NOT NULL,
	[SalesQuota] [money] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesPerson]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPerson](
	[SalesPersonID] [int] NOT NULL,
	[TerritoryID] [int] NULL,
	[SalesQuota] [money] NULL,
	[Bonus] [money] NOT NULL,
	[CommissionPct] [smallmoney] NOT NULL,
	[SalesYTD] [money] NOT NULL,
	[SalesLastYear] [money] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderHeaderSalesReason]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderHeaderSalesReason](
	[SalesOrderID] [int] NOT NULL,
	[SalesReasonID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderHeader]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesOrderHeader](
	[SalesOrderID] [int] NOT NULL,
	[RevisionNumber] [tinyint] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NULL,
	[Status] [tinyint] NOT NULL,
	[OnlineOrderFlag] [bit] NOT NULL,
	[SalesOrderNumber] [nvarchar](25) NOT NULL,
	[PurchaseOrderNumber] [nvarchar](25) NULL,
	[AccountNumber] [nvarchar](15) NULL,
	[CustomerID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[SalesPersonID] [int] NULL,
	[TerritoryID] [int] NULL,
	[BillToAddressID] [int] NOT NULL,
	[ShipToAddressID] [int] NOT NULL,
	[ShipMethodID] [int] NOT NULL,
	[CreditCardID] [int] NULL,
	[CreditCardApprovalCode] [varchar](15) NULL,
	[CurrencyRateID] [int] NULL,
	[SubTotal] [money] NOT NULL,
	[TaxAmt] [money] NOT NULL,
	[Freight] [money] NOT NULL,
	[TotalDue] [money] NOT NULL,
	[Comment] [nvarchar](128) NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesOrderDetail]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderDetail](
	[SalesOrderID] [int] NOT NULL,
	[SalesOrderDetailID] [int] NOT NULL,
	[CarrierTrackingNumber] [nvarchar](25) NULL,
	[OrderQty] [smallint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[SpecialOfferID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitPriceDiscount] [money] NOT NULL,
	[LineTotal] [numeric](38, 6) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SalesOrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderHeader]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderHeader](
	[PurchaseOrderID] [int] NOT NULL,
	[RevisionNumber] [tinyint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
	[ShipMethodID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NULL,
	[SubTotal] [money] NOT NULL,
	[TaxAmt] [money] NOT NULL,
	[Freight] [money] NOT NULL,
	[TotalDue] [money] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderDetail]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetail](
	[PurchaseOrderID] [int] NOT NULL,
	[PurchaseOrderDetailID] [int] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[OrderQty] [smallint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[LineTotal] [money] NOT NULL,
	[ReceivedQty] [decimal](8, 2) NOT NULL,
	[RejectedQty] [decimal](8, 2) NOT NULL,
	[StockedQty] [decimal](9, 2) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVendor]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVendor](
	[ProductID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
	[AverageLeadTime] [int] NOT NULL,
	[StandardPrice] [money] NOT NULL,
	[LastReceiptCost] [money] NULL,
	[LastReceiptDate] [datetime] NULL,
	[MinOrderQty] [int] NOT NULL,
	[MaxOrderQty] [int] NOT NULL,
	[OnOrderQty] [int] NULL,
	[UnitMeasureCode] [nchar](3) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSubcategory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSubcategory](
	[ProductSubcategoryID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReview]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReview](
	[ProductReviewID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ReviewerName] [nvarchar](50) NOT NULL,
	[ReviewDate] [datetime] NOT NULL,
	[EmailAddress] [nvarchar](50) NOT NULL,
	[Rating] [int] NOT NULL,
	[Comments] [nvarchar](3850) NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductProductPhoto]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductProductPhoto](
	[ProductID] [int] NOT NULL,
	[ProductPhotoID] [int] NOT NULL,
	[Primary] [bit] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPhoto]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductPhoto](
	[ProductPhotoID] [int] NOT NULL,
	[ThumbNailPhoto] [varbinary](max) NULL,
	[ThumbnailPhotoFileName] [nvarchar](50) NULL,
	[LargePhoto] [varbinary](max) NULL,
	[LargePhotoFileName] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductModelProductDescriptionCulture]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductModelProductDescriptionCulture](
	[ProductModelID] [int] NOT NULL,
	[ProductDescriptionID] [int] NOT NULL,
	[CultureID] [nchar](6) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductModelIllustration]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductModelIllustration](
	[ProductModelID] [int] NOT NULL,
	[IllustrationID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductModel]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductModel](
	[ProductModelID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CatalogDescription] [xml] NULL,
	[Instructions] [xml] NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductListPriceHistory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductListPriceHistory](
	[ProductID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[ListPrice] [money] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInventory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInventory](
	[ProductID] [int] NOT NULL,
	[LocationID] [smallint] NOT NULL,
	[Shelf] [nvarchar](10) NOT NULL,
	[Bin] [tinyint] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDocument]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDocument](
	[ProductID] [int] NOT NULL,
	[DocumentID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDescription]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDescription](
	[ProductDescriptionID] [int] NOT NULL,
	[Description] [nvarchar](400) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCostHistory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCostHistory](
	[ProductID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[StandardCost] [money] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProductNumber] [nvarchar](25) NOT NULL,
	[MakeFlag] [bit] NOT NULL,
	[FinishedGoodsFlag] [bit] NOT NULL,
	[Color] [nvarchar](15) NULL,
	[SafetyStockLevel] [smallint] NOT NULL,
	[ReorderPoint] [smallint] NOT NULL,
	[StandardCost] [money] NOT NULL,
	[ListPrice] [money] NOT NULL,
	[Size] [nvarchar](5) NULL,
	[SizeUnitMeasureCode] [nchar](3) NULL,
	[WeightUnitMeasureCode] [nchar](3) NULL,
	[Weight] [decimal](8, 2) NULL,
	[DaysToManufacture] [int] NOT NULL,
	[ProductLine] [nchar](2) NULL,
	[Class] [nchar](2) NULL,
	[Style] [nchar](2) NULL,
	[ProductSubcategoryID] [int] NULL,
	[ProductModelID] [int] NULL,
	[SellStartDate] [datetime] NOT NULL,
	[SellEndDate] [datetime] NULL,
	[DiscontinuedDate] [datetime] NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationID] [smallint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CostRate] [smallmoney] NOT NULL,
	[Availability] [decimal](8, 2) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobCandidate]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobCandidate](
	[JobCandidateID] [int] NOT NULL,
	[EmployeeID] [int] NULL,
	[Resume] [xml] NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Individual]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Individual](
	[CustomerID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[Demographics] [xml] NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Illustration]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Illustration](
	[IllustrationID] [int] NOT NULL,
	[Diagram] [xml] NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePayHistory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePayHistory](
	[EmployeeID] [int] NOT NULL,
	[RateChangeDate] [datetime] NOT NULL,
	[Rate] [money] NOT NULL,
	[PayFrequency] [tinyint] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeDepartmentHistory]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDepartmentHistory](
	[EmployeeID] [int] NOT NULL,
	[DepartmentID] [smallint] NOT NULL,
	[ShiftID] [tinyint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeAddress]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeAddress](
	[EmployeeID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[NationalIDNumber] [nvarchar](15) NOT NULL,
	[ContactID] [int] NOT NULL,
	[LoginID] [nvarchar](256) NOT NULL,
	[ManagerID] [int] NULL,
	[Title] [nvarchar](50) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[MaritalStatus] [nchar](1) NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	[HireDate] [datetime] NOT NULL,
	[SalariedFlag] [bit] NOT NULL,
	[VacationHours] [smallint] NOT NULL,
	[SickLeaveHours] [smallint] NOT NULL,
	[CurrentFlag] [bit] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Document](
	[DocumentID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[FileName] [nvarchar](400) NOT NULL,
	[FileExtension] [nvarchar](8) NOT NULL,
	[Revision] [nchar](5) NOT NULL,
	[ChangeNumber] [int] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[DocumentSummary] [nvarchar](max) NULL,
	[Document] [varbinary](max) NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [smallint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddress](
	[CustomerID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[AddressTypeID] [int] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[TerritoryID] [int] NULL,
	[AccountNumber] [varchar](10) NOT NULL,
	[CustomerType] [nchar](1) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CurrencyRate]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyRate](
	[CurrencyRateID] [int] NOT NULL,
	[CurrencyRateDate] [datetime] NOT NULL,
	[FromCurrencyCode] [nchar](3) NOT NULL,
	[ToCurrencyCode] [nchar](3) NOT NULL,
	[AverageRate] [money] NOT NULL,
	[EndOfDayRate] [money] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[CurrencyCode] [nchar](3) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Culture]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Culture](
	[CultureID] [nchar](6) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[CreditCardID] [int] NOT NULL,
	[CardType] [nvarchar](50) NOT NULL,
	[CardNumber] [nvarchar](25) NOT NULL,
	[ExpMonth] [tinyint] NOT NULL,
	[ExpYear] [smallint] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryRegionCurrency]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryRegionCurrency](
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[CurrencyCode] [nchar](3) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryRegion]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryRegion](
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactType]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactType](
	[ContactTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactCreditCard]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactCreditCard](
	[ContactID] [int] NOT NULL,
	[CreditCardID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] NOT NULL,
	[NameStyle] [bit] NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[EmailPromotion] [int] NOT NULL,
	[Phone] [nvarchar](25) NULL,
	[PasswordHash] [varchar](128) NOT NULL,
	[PasswordSalt] [varchar](10) NOT NULL,
	[AdditionalContactInfo] [xml] NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BillOfMaterials]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillOfMaterials](
	[BillOfMaterialsID] [int] NOT NULL,
	[ProductAssemblyID] [int] NULL,
	[ComponentID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[UnitMeasureCode] [nchar](3) NOT NULL,
	[BOMLevel] [smallint] NOT NULL,
	[PerAssemblyQty] [decimal](8, 2) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddressType]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressType](
	[AddressTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 03/23/2016 15:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] NOT NULL,
	[AddressLine1] [nvarchar](60) NOT NULL,
	[AddressLine2] [nvarchar](60) NULL,
	[City] [nvarchar](30) NOT NULL,
	[StateProvinceID] [int] NOT NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
