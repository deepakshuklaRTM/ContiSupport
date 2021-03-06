USE [LTranDSN]
GO
/****** Object:  StoredProcedure [dbo].[save_labels]    Script Date: 11/23/2018 12:24:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[save_labels]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[save_labels]
GO
/****** Object:  Table [dbo].[Table1]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table1]') AND type in (N'U'))
DROP TABLE [dbo].[Table1]
GO
/****** Object:  Table [dbo].[Table2]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table2]') AND type in (N'U'))
DROP TABLE [dbo].[Table2]
GO
/****** Object:  Table [dbo].[TMP_FOUNDITEMS]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_FOUNDITEMS]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_FOUNDITEMS]
GO
/****** Object:  Table [dbo].[TMP_FOUNDITEMS_old]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_FOUNDITEMS_old]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_FOUNDITEMS_old]
GO
/****** Object:  Table [dbo].[TMP_OTHER_LANGS]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_OTHER_LANGS]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_OTHER_LANGS]
GO
/****** Object:  Table [dbo].[TMP_UPDATE_PRI]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_UPDATE_PRI]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_UPDATE_PRI]
GO
/****** Object:  Table [dbo].[TMP_UPDATE_PRI_old]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_UPDATE_PRI_old]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_UPDATE_PRI_old]
GO
/****** Object:  Table [dbo].[TMP_UPLOAD_BYID]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_UPLOAD_BYID]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_UPLOAD_BYID]
GO
/****** Object:  Table [dbo].[TMP_UPLOAD_DATA]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_UPLOAD_DATA]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_UPLOAD_DATA]
GO
/****** Object:  Table [dbo].[TranslationGerman]    Script Date: 11/23/2018 12:24:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TranslationGerman]') AND type in (N'U'))
DROP TABLE [dbo].[TranslationGerman]
GO
/****** Object:  Table [dbo].[All_Items]    Script Date: 11/23/2018 12:24:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[All_Items]') AND type in (N'U'))
DROP TABLE [dbo].[All_Items]
GO
/****** Object:  Table [dbo].[German$]    Script Date: 11/23/2018 12:24:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[German$]') AND type in (N'U'))
DROP TABLE [dbo].[German$]
GO
/****** Object:  Table [dbo].[IOS_GERMAN_DE]    Script Date: 11/23/2018 12:24:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IOS_GERMAN_DE]') AND type in (N'U'))
DROP TABLE [dbo].[IOS_GERMAN_DE]
GO
/****** Object:  Table [dbo].[LTT_APP_GROUP]    Script Date: 11/23/2018 12:24:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APP_GROUP]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_APP_GROUP]
GO
/****** Object:  Table [dbo].[LTT_APP_GROUP Query1]    Script Date: 11/23/2018 12:24:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APP_GROUP Query1]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_APP_GROUP Query1]
GO
/****** Object:  Table [dbo].[LTT_APP_GROUP_16March]    Script Date: 11/23/2018 12:24:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APP_GROUP_16March]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_APP_GROUP_16March]
GO
/****** Object:  Table [dbo].[LTT_APP_GROUP_BKP]    Script Date: 11/23/2018 12:24:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APP_GROUP_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_APP_GROUP_BKP]
GO
/****** Object:  Table [dbo].[LTT_APP_USER]    Script Date: 11/23/2018 12:24:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APP_USER]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_APP_USER]
GO
/****** Object:  Table [dbo].[LTT_APPLICATION]    Script Date: 11/23/2018 12:24:06 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__LTT_APPLI__LTF_X__3B75D760]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LTT_APPLICATION] DROP CONSTRAINT [DF__LTT_APPLI__LTF_X__3B75D760]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__LTT_APPLI__LTF_X__3C69FB99]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LTT_APPLICATION] DROP CONSTRAINT [DF__LTT_APPLI__LTF_X__3C69FB99]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APPLICATION]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_APPLICATION]
GO
/****** Object:  Table [dbo].[LTT_APPLICATION Query]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APPLICATION Query]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_APPLICATION Query]
GO
/****** Object:  Table [dbo].[LTT_APPLICATION_LABEL]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APPLICATION_LABEL]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_APPLICATION_LABEL]
GO
/****** Object:  Table [dbo].[LTT_APPLICATION_LABEL Query]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APPLICATION_LABEL Query]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_APPLICATION_LABEL Query]
GO
/****** Object:  Table [dbo].[LTT_APPLICATION_LANGUAGE]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APPLICATION_LANGUAGE]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_APPLICATION_LANGUAGE]
GO
/****** Object:  Table [dbo].[LTT_DOWNLOAD_SCHEDULING]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_DOWNLOAD_SCHEDULING]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_DOWNLOAD_SCHEDULING]
GO
/****** Object:  Table [dbo].[LTT_DOWNLOAD_SCHEDULING_old]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_DOWNLOAD_SCHEDULING_old]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_DOWNLOAD_SCHEDULING_old]
GO
/****** Object:  Table [dbo].[LTT_DOWNLOADTASK]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_DOWNLOADTASK]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_DOWNLOADTASK]
GO
/****** Object:  Table [dbo].[LTT_FEATURE]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_FEATURE]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_FEATURE]
GO
/****** Object:  Table [dbo].[LTT_FILE_TYPE]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_FILE_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_FILE_TYPE]
GO
/****** Object:  Table [dbo].[LTT_ITEM_ID]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_ID]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_ID]
GO
/****** Object:  Table [dbo].[LTT_ITEM_ID Query]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_ID Query]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_ID Query]
GO
/****** Object:  Table [dbo].[LTT_ITEM_ID_BKP]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_ID_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_ID_BKP]
GO
/****** Object:  Table [dbo].[LTT_ITEM_ID_old]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_ID_old]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_ID_old]
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE]    Script Date: 11/23/2018 12:24:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_LANGUAGE]
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE Query]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE Query]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_LANGUAGE Query]
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE_11JAN2018]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE_11JAN2018]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_LANGUAGE_11JAN2018]
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE_17July2017]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE_17July2017]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_LANGUAGE_17July2017]
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE_21MAR2018]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE_21MAR2018]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_LANGUAGE_21MAR2018]
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE_BKP]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_LANGUAGE_BKP]
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE_old]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE_old]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ITEM_LANGUAGE_old]
GO
/****** Object:  Table [dbo].[LTT_LANGUAGE]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_LANGUAGE]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_LANGUAGE]
GO
/****** Object:  Table [dbo].[LTT_LOGIN_DETAIL]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_LOGIN_DETAIL]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_LOGIN_DETAIL]
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_PRI_ITEM]
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM Query]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM Query]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_PRI_ITEM Query]
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM_15April]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM_15April]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_PRI_ITEM_15April]
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM_16March]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM_16March]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_PRI_ITEM_16March]
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM_23dec]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM_23dec]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_PRI_ITEM_23dec]
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM_BKP]    Script Date: 11/23/2018 12:24:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_PRI_ITEM_BKP]
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM_old]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM_old]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_PRI_ITEM_old]
GO
/****** Object:  Table [dbo].[LTT_ROLE]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ROLE]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ROLE]
GO
/****** Object:  Table [dbo].[LTT_ROLE_PRIV]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ROLE_PRIV]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_ROLE_PRIV]
GO
/****** Object:  Table [dbo].[LTT_SEQUENCE]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_SEQUENCE]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_SEQUENCE]
GO
/****** Object:  Table [dbo].[LTT_USER_APPLICATION]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_USER_APPLICATION]') AND type in (N'U'))
DROP TABLE [dbo].[LTT_USER_APPLICATION]
GO
/****** Object:  Table [dbo].[Paste Errors]    Script Date: 11/23/2018 12:24:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paste Errors]') AND type in (N'U'))
DROP TABLE [dbo].[Paste Errors]
GO
/****** Object:  Table [dbo].[Paste Errors]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paste Errors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paste Errors](
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_LANG_CODE] [nvarchar](255) NULL,
	[LTF_ITEM_DESC] [nvarchar](max) NULL,
	[LTF_UPDATE_DATE] [datetime] NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_USER_APPLICATION]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_USER_APPLICATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_USER_APPLICATION](
	[LTF_LOGIN_NAME] [nvarchar](50) NOT NULL,
	[LTF_APP_ID] [nvarchar](10) NULL,
	[LTF_LANGUAGE_CODE] [nvarchar](10) NOT NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_SEQUENCE]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_SEQUENCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_SEQUENCE](
	[Sequence_Name] [nvarchar](20) NOT NULL,
	[Start_value] [int] NOT NULL,
	[Increment] [int] NOT NULL,
	[Current_value] [int] NOT NULL,
	[Max_value] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ROLE_PRIV]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ROLE_PRIV]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ROLE_PRIV](
	[LTF_ROLE_ID] [int] NOT NULL,
	[LTF_FEATURE_ID] [nvarchar](10) NOT NULL,
	[LTF_ADD] [nvarchar](1) NULL,
	[LTF_MODIFY] [nvarchar](1) NULL,
	[LTF_DELETE] [nvarchar](1) NULL,
	[LTF_VIEW] [nvarchar](1) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ROLE]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ROLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ROLE](
	[LTF_ROLE_ID] [int] NULL,
	[LTF_ROLE_DESC] [nvarchar](50) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM_old]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM_old]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_PRI_ITEM_old](
	[LTF_APP_ID] [nvarchar](10) NULL,
	[LTF_GROUP_ID] [nvarchar](100) NULL,
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_PREF_ID] [nvarchar](255) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM_BKP]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM_BKP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_PRI_ITEM_BKP](
	[LTF_APP_ID] [nvarchar](10) NULL,
	[LTF_GROUP_ID] [nvarchar](100) NULL,
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_PREF_ID] [nvarchar](255) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM_23dec]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM_23dec]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_PRI_ITEM_23dec](
	[LTF_APP_ID] [nvarchar](10) NOT NULL,
	[LTF_GROUP_ID] [nvarchar](100) NOT NULL,
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_PREF_ID] [nvarchar](255) NOT NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM_16March]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM_16March]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_PRI_ITEM_16March](
	[LTF_APP_ID] [nvarchar](10) NOT NULL,
	[LTF_GROUP_ID] [nvarchar](100) NOT NULL,
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_PREF_ID] [nvarchar](255) NOT NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM_15April]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM_15April]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_PRI_ITEM_15April](
	[LTF_APP_ID] [nvarchar](10) NOT NULL,
	[LTF_GROUP_ID] [nvarchar](100) NOT NULL,
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_PREF_ID] [nvarchar](255) NOT NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM Query]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM Query]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_PRI_ITEM Query](
	[LTF_APP_ID] [nvarchar](10) NULL,
	[LTF_GROUP_ID] [nvarchar](100) NULL,
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_PREF_ID] [nvarchar](255) NULL,
	[LTF_UPDATE_DATE] [datetime] NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_PRI_ITEM]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_PRI_ITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_PRI_ITEM](
	[LTF_APP_ID] [nvarchar](10) NOT NULL,
	[LTF_GROUP_ID] [nvarchar](100) NOT NULL,
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_PREF_ID] [nvarchar](255) NOT NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LTT_PRI_ITEM] PRIMARY KEY NONCLUSTERED 
(
	[LTF_APP_ID] ASC,
	[LTF_GROUP_ID] ASC,
	[LTF_PREF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_LOGIN_DETAIL]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_LOGIN_DETAIL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_LOGIN_DETAIL](
	[LTF_LOGIN_NAME] [nvarchar](50) NOT NULL,
	[LTF_PASSWORD] [nvarchar](50) NULL,
	[LTF_ROLE] [nvarchar](10) NOT NULL,
	[LTF_USER_CATEGORY] [nvarchar](1) NOT NULL,
	[LTF_CAN_UPDATE_DESC] [nvarchar](1) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL,
	[LTF_LAST_LOGIN_DATE] [datetime] NULL,
 CONSTRAINT [PK_LTT_LOGIN_DETAIL] PRIMARY KEY CLUSTERED 
(
	[LTF_LOGIN_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_LANGUAGE]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_LANGUAGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_LANGUAGE](
	[LTF_LANGUAGE_CODE] [nvarchar](10) NOT NULL,
	[LTF_LANGUAGE_DESC] [nvarchar](50) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL,
	[LTF_LANGUAGEID_CODE] [nvarchar](50) NULL,
 CONSTRAINT [PK_LTT_LANGUAGE] PRIMARY KEY CLUSTERED 
(
	[LTF_LANGUAGE_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE_old]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE_old]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_LANGUAGE_old](
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_LANG_CODE] [nvarchar](10) NOT NULL,
	[LTF_ITEM_DESC] [nvarchar](max) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE_BKP]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE_BKP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_LANGUAGE_BKP](
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_LANG_CODE] [nvarchar](10) NOT NULL,
	[LTF_ITEM_DESC] [nvarchar](max) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE_21MAR2018]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE_21MAR2018]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_LANGUAGE_21MAR2018](
	[LTF_ITEM_ID] [nvarchar](255) NOT NULL,
	[LTF_LANG_CODE] [nvarchar](10) NOT NULL,
	[LTF_ITEM_DESC] [nvarchar](max) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE_17July2017]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE_17July2017]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_LANGUAGE_17July2017](
	[LTF_ITEM_ID] [nvarchar](255) NOT NULL,
	[LTF_LANG_CODE] [nvarchar](10) NOT NULL,
	[LTF_ITEM_DESC] [nvarchar](max) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE_11JAN2018]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE_11JAN2018]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_LANGUAGE_11JAN2018](
	[LTF_ITEM_ID] [nvarchar](255) NOT NULL,
	[LTF_LANG_CODE] [nvarchar](10) NOT NULL,
	[LTF_ITEM_DESC] [nvarchar](max) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE Query]    Script Date: 11/23/2018 12:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE Query]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_LANGUAGE Query](
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_LANG_CODE] [nvarchar](10) NULL,
	[LTF_ITEM_DESC] [nvarchar](max) NULL,
	[LTF_UPDATE_DATE] [datetime] NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_LANGUAGE]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_LANGUAGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_LANGUAGE](
	[LTF_ITEM_ID] [nvarchar](255) NOT NULL,
	[LTF_LANG_CODE] [nvarchar](10) NOT NULL,
	[LTF_ITEM_DESC] [nvarchar](max) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LTT_ITEM_LANGUAGE] PRIMARY KEY NONCLUSTERED 
(
	[LTF_ITEM_ID] ASC,
	[LTF_LANG_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_ID_old]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_ID_old]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_ID_old](
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_MAX_LENGTH] [int] NULL,
	[LTF_PRI_COUNT] [int] NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_ID_BKP]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_ID_BKP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_ID_BKP](
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_MAX_LENGTH] [int] NULL,
	[LTF_PRI_COUNT] [int] NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_ID Query]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_ID Query]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_ID Query](
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_ITEM_desc] [nvarchar](max) NULL,
	[LTF_UPDATE_DATE] [datetime] NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_ITEM_ID]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_ITEM_ID]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_ITEM_ID](
	[LTF_ITEM_ID] [nvarchar](255) NOT NULL,
	[LTF_MAX_LENGTH] [int] NULL,
	[LTF_PRI_COUNT] [int] NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LTT_ITEM_ID] PRIMARY KEY NONCLUSTERED 
(
	[LTF_ITEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_FILE_TYPE]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_FILE_TYPE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_FILE_TYPE](
	[LTT_FILE_TYPE] [nvarchar](10) NULL,
	[LTT_FILE_TYPE_DESC] [nvarchar](100) NULL,
	[LTF_UPDATE_DATE] [datetime] NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](100) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_FEATURE]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_FEATURE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_FEATURE](
	[LTF_FEATURE_ID] [nvarchar](10) NOT NULL,
	[LTF_FEATURE_NAME] [nvarchar](50) NULL,
	[LTF_ADD] [nvarchar](1) NULL,
	[LTF_MODIFY] [nvarchar](1) NULL,
	[LTF_DELETE] [nvarchar](1) NULL,
	[LTF_VIEW] [nvarchar](1) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_DOWNLOADTASK]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_DOWNLOADTASK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_DOWNLOADTASK](
	[LTF_DownloadTask_ID] [nvarchar](50) NULL,
	[LTF_APP_ID] [nvarchar](50) NULL,
	[LTF_GROUP_ID] [nvarchar](50) NULL,
	[LTF_PRI_FLAG] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_DOWNLOAD_SCHEDULING_old]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_DOWNLOAD_SCHEDULING_old]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_DOWNLOAD_SCHEDULING_old](
	[LTF_SCHEDULED_ID] [int] NOT NULL,
	[LTF_DownloadTask_ID] [nvarchar](50) NULL,
	[LTF_LANGUAGE_CODE] [nvarchar](50) NULL,
	[LTF_DOWNLOAD_STATUS] [nvarchar](50) NULL,
	[LTF_DOWNLOAD_FOLDER] [nvarchar](50) NULL,
	[LTF_DOWNLOAD_DATE] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_DOWNLOAD_SCHEDULING]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_DOWNLOAD_SCHEDULING]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_DOWNLOAD_SCHEDULING](
	[LTF_SCHEDULED_ID] [int] IDENTITY(1,1) NOT NULL,
	[LTF_DownloadTask_ID] [nvarchar](50) NULL,
	[LTF_LANGUAGE_CODE] [nvarchar](50) NULL,
	[LTF_DOWNLOAD_STATUS] [nvarchar](50) NULL,
	[LTF_DOWNLOAD_FOLDER] [nvarchar](50) NULL,
	[LTF_DOWNLOAD_DATE] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_APPLICATION_LANGUAGE]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APPLICATION_LANGUAGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_APPLICATION_LANGUAGE](
	[LTF_APP_ID] [nvarchar](10) NOT NULL,
	[LTF_LANGUAGE_CODE] [nvarchar](10) NOT NULL,
	[LTF_UPDATE_ALLOWED] [nvarchar](1) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_APPLICATION_LABEL Query]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APPLICATION_LABEL Query]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_APPLICATION_LABEL Query](
	[LTF_LABEL_ID] [nvarchar](100) NULL,
	[LTF_LANGUAGE_CODE] [nvarchar](10) NULL,
	[LTF_LABEL_DESC] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_APPLICATION_LABEL]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APPLICATION_LABEL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_APPLICATION_LABEL](
	[LTF_APP_ID] [nvarchar](10) NULL,
	[LTF_LABEL_ID] [nvarchar](100) NULL,
	[LTF_LANGUAGE_CODE] [nvarchar](10) NOT NULL,
	[LTF_LABEL_DESC] [nvarchar](max) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL,
	[LTF_MAX_LENGTH] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_APPLICATION Query]    Script Date: 11/23/2018 12:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APPLICATION Query]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_APPLICATION Query](
	[LTF_LABEL_ID] [nvarchar](100) NULL,
	[LTF_MAX_LENGTH] [int] NULL,
	[LTF_LABEL_DESC] [nvarchar](max) NULL,
	[LTF_LANGUAGE_CODE] [nvarchar](10) NULL,
	[LTF_LANGUAGE_DESC] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_APPLICATION]    Script Date: 11/23/2018 12:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APPLICATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_APPLICATION](
	[LTF_APP_ID] [nvarchar](20) NOT NULL,
	[LTF_APP_DESC] [nvarchar](50) NULL,
	[LTF_APP_VERSION] [nvarchar](10) NULL,
	[LTF_FILE_TYPE] [nvarchar](10) NULL,
	[LTF_UPDATE_ALLOWED] [nvarchar](1) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL,
	[LTF_FILE_FORMAT] [nvarchar](50) NULL,
	[LTF_XML_FORMAT] [varchar](15) NOT NULL DEFAULT ('ID'),
	[LTF_XML_HEADER_FOOTER] [varchar](15) NOT NULL DEFAULT ('String'),
 CONSTRAINT [PK_LTT_APPLICATION] PRIMARY KEY CLUSTERED 
(
	[LTF_APP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LTT_APP_USER]    Script Date: 11/23/2018 12:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APP_USER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_APP_USER](
	[LTF_ITEM_ID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_APP_GROUP_BKP]    Script Date: 11/23/2018 12:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APP_GROUP_BKP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_APP_GROUP_BKP](
	[LTF_APP_ID] [nvarchar](10) NULL,
	[LTF_GROUP_ID] [nvarchar](100) NULL,
	[LTF_GROUP_DESC] [nvarchar](200) NULL,
	[LTF_FILE_TYPE] [nvarchar](10) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL,
	[LTF_FILE_FORMAT] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_APP_GROUP_16March]    Script Date: 11/23/2018 12:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APP_GROUP_16March]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_APP_GROUP_16March](
	[LTF_APP_ID] [nvarchar](10) NOT NULL,
	[LTF_GROUP_ID] [nvarchar](100) NOT NULL,
	[LTF_GROUP_DESC] [nvarchar](200) NULL,
	[LTF_FILE_TYPE] [nvarchar](10) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL,
	[LTF_FILE_FORMAT] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_APP_GROUP Query1]    Script Date: 11/23/2018 12:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APP_GROUP Query1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_APP_GROUP Query1](
	[LTF_GROUP_ID] [nvarchar](100) NULL,
	[LTF_GROUP_DESC] [nvarchar](200) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LTT_APP_GROUP]    Script Date: 11/23/2018 12:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LTT_APP_GROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LTT_APP_GROUP](
	[LTF_APP_ID] [nvarchar](10) NOT NULL,
	[LTF_GROUP_ID] [nvarchar](100) NOT NULL,
	[LTF_GROUP_DESC] [nvarchar](200) NULL,
	[LTF_FILE_TYPE] [nvarchar](10) NULL,
	[LTF_UPDATE_DATE] [datetime] NOT NULL,
	[LTF_UPDATE_ENTITY] [nvarchar](50) NOT NULL,
	[LTF_FILE_FORMAT] [nvarchar](50) NULL,
 CONSTRAINT [PK_LTT_APP_GROUP] PRIMARY KEY NONCLUSTERED 
(
	[LTF_APP_ID] ASC,
	[LTF_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IOS_GERMAN_DE]    Script Date: 11/23/2018 12:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IOS_GERMAN_DE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IOS_GERMAN_DE](
	[LTF_ITEM_ID] [nvarchar](max) NULL,
	[LTF_ITEM_DESC] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[German$]    Script Date: 11/23/2018 12:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[German$]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[German$](
	[Column 0] [ntext] NULL,
	[Column 1] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[All_Items]    Script Date: 11/23/2018 12:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[All_Items]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[All_Items](
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[A.LTF_ITEM_DESC] [nvarchar](max) NULL,
	[DE.LTF_ITEM_DESC] [nvarchar](max) NULL,
	[ES.LTF_ITEM_DESC] [nvarchar](max) NULL,
	[IT.LTF_ITEM_DESC] [nvarchar](max) NULL,
	[HU.LTF_ITEM_DESC] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TranslationGerman]    Script Date: 11/23/2018 12:24:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TranslationGerman]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TranslationGerman](
	[Column 0] [varchar](2000) NULL,
	[Column 1] [varchar](2000) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_UPLOAD_DATA]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_UPLOAD_DATA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_UPLOAD_DATA](
	[LABEL_ID] [nvarchar](255) NULL,
	[LABEL_DESC] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TMP_UPLOAD_BYID]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_UPLOAD_BYID]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_UPLOAD_BYID](
	[LTF_ITEM_ID] [nvarchar](255) NULL,
	[LTF_ITEM_DESC] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TMP_UPDATE_PRI_old]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_UPDATE_PRI_old]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_UPDATE_PRI_old](
	[LTF_ITEM_ID] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TMP_UPDATE_PRI]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_UPDATE_PRI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_UPDATE_PRI](
	[LTF_ITEM_ID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TMP_OTHER_LANGS]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_OTHER_LANGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_OTHER_LANGS](
	[GROUP_ID] [nvarchar](50) NULL,
	[PRI] [nvarchar](100) NULL,
	[LANG_CODE] [nvarchar](10) NULL,
	[DESC] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TMP_FOUNDITEMS_old]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_FOUNDITEMS_old]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_FOUNDITEMS_old](
	[ID] [int] NOT NULL,
	[ItemId] [nvarchar](255) NULL,
	[LabelId] [nvarchar](255) NULL,
	[New] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TMP_FOUNDITEMS]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_FOUNDITEMS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_FOUNDITEMS](
	[ID] [int] NULL,
	[ItemId] [nvarchar](255) NULL,
	[LabelId] [nvarchar](255) NULL,
	[New] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Table2]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table2](
	[num] [int] NULL,
	[ltf_item_desc] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Table1]    Script Date: 11/23/2018 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table1](
	[num] [int] NULL,
	[ltf_item_desc] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[save_labels]    Script Date: 11/23/2018 12:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[save_labels]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [dbo].[save_labels] (
@xml xml,
@logged_user varchar(100)
)
   AS BEGIN  
    declare @LTF_ITEM_ID nvarchar(255) 
	declare @LTF_LANG_CODE nvarchar(10) 
	declare @LTF_ITEM_DESC nvarchar(max) 
	declare  label_cursor CURSOR for SELECT
Pers.value(''(itemId)[1]'', ''nvarchar(255)'') ,
Pers.value(''(translatedLanguage)[1]'', ''nvarchar(10)'') ,
Pers.value(''(itemDescTranslated)[1]'',''NVARCHAR(max)'') as ''descp''

FROM @xml.nodes(''/LabelItemDetails-array/LabelItemDetails'') as ABC(Pers);
    
    open label_cursor
    FETCH NEXT from label_cursor INTO @LTF_ITEM_ID,@LTF_LANG_CODE,@LTF_ITEM_DESC
        
     while @@FETCH_STATUS=0
     BEGIN
     UPDATE LTT_ITEM_LANGUAGE SET LTF_ITEM_DESC=@LTF_ITEM_DESC,
			LTF_UPDATE_DATE=GETDATE(),
			LTF_UPDATE_ENTITY=@logged_user
			WHERE LTF_ITEM_ID=@LTF_ITEM_ID AND
			 LTF_LANG_CODE=@LTF_LANG_CODE;  
	 fetch next from label_cursor into @LTF_ITEM_ID,@LTF_LANG_CODE,@LTF_ITEM_DESC
     END 
     close label_cursor
     deallocate label_cursor
   END; 
         
' 
END
GO
