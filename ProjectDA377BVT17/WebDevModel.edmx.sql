
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/11/2017 11:30:11
-- Generated from EDMX file: C:\Users\panos\Documents\Visual Studio 2015\Projects\ProjectDA377BVT17\ProjectDA377BVT17\WebDevModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Eshop];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ProductHasCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_ProductHasCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductsOrder_Details]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order_Details] DROP CONSTRAINT [FK_ProductsOrder_Details];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdersOrder_Details]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order_Details] DROP CONSTRAINT [FK_OrdersOrder_Details];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductsEntity1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[productTags] DROP CONSTRAINT [FK_ProductsEntity1];
GO
IF OBJECT_ID(N'[dbo].[FK_AdSeller_Ads]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Seller_Ads] DROP CONSTRAINT [FK_AdSeller_Ads];
GO
IF OBJECT_ID(N'[dbo].[FK_SellerSeller_Ads]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Seller_Ads] DROP CONSTRAINT [FK_SellerSeller_Ads];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductsAd]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Ads] DROP CONSTRAINT [FK_ProductsAd];
GO
IF OBJECT_ID(N'[dbo].[FK_BuyersOrders]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_BuyersOrders];
GO
IF OBJECT_ID(N'[dbo].[FK_SellerPayMethods]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PayMethods] DROP CONSTRAINT [FK_SellerPayMethods];
GO
IF OBJECT_ID(N'[dbo].[FK_SellerReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_SellerReport];
GO
IF OBJECT_ID(N'[dbo].[FK_BuyersReport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_BuyersReport];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductsReview]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [FK_ProductsReview];
GO
IF OBJECT_ID(N'[dbo].[FK_BuyersReview]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [FK_BuyersReview];
GO
IF OBJECT_ID(N'[dbo].[FK_TagsproductTags]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[productTags] DROP CONSTRAINT [FK_TagsproductTags];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[Tags]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tags];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO
IF OBJECT_ID(N'[dbo].[Order_Details]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order_Details];
GO
IF OBJECT_ID(N'[dbo].[productTags]', 'U') IS NOT NULL
    DROP TABLE [dbo].[productTags];
GO
IF OBJECT_ID(N'[dbo].[Sellers1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sellers1];
GO
IF OBJECT_ID(N'[dbo].[Buyers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Buyers];
GO
IF OBJECT_ID(N'[dbo].[Ads]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ads];
GO
IF OBJECT_ID(N'[dbo].[Seller_Ads]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Seller_Ads];
GO
IF OBJECT_ID(N'[dbo].[PayMethods]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PayMethods];
GO
IF OBJECT_ID(N'[dbo].[Reports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reports];
GO
IF OBJECT_ID(N'[dbo].[Reviews]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reviews];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [prod_Id] int IDENTITY(1,1) NOT NULL,
    [prod_name] nvarchar(max)  NOT NULL,
    [prod_price] decimal(2,0)  NOT NULL,
    [prod_description] nvarchar(max)  NULL,
    [prod_active] bit  NOT NULL,
    [prod_rating] float  NULL,
    [prod_onstock] int  NOT NULL,
    [Category_cat_Id] int  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [cat_Id] int IDENTITY(1,1) NOT NULL,
    [cat_name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Tags'
CREATE TABLE [dbo].[Tags] (
    [name] nvarchar(max)  NOT NULL,
    [tag_Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [order_Id] int IDENTITY(1,1) NOT NULL,
    [order_date] datetime  NOT NULL,
    [order_total] nvarchar(max)  NOT NULL,
    [Buyer_buyer_Id] int  NOT NULL
);
GO

-- Creating table 'Order_Details'
CREATE TABLE [dbo].[Order_Details] (
    [orderdetails_Id] int IDENTITY(1,1) NOT NULL,
    [quantity] int  NOT NULL,
    [Product_prod_Id] int  NOT NULL,
    [Order_order_Id] int  NOT NULL
);
GO

-- Creating table 'productTags'
CREATE TABLE [dbo].[productTags] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Product_prod_Id] int  NOT NULL,
    [Tag_tag_Id] int  NOT NULL
);
GO

-- Creating table 'Sellers1'
CREATE TABLE [dbo].[Sellers1] (
    [seller_Id] int IDENTITY(1,1) NOT NULL,
    [sel_rating] float  NULL,
    [reported] bit  NOT NULL
);
GO

-- Creating table 'Buyers'
CREATE TABLE [dbo].[Buyers] (
    [buyer_Id] int IDENTITY(1,1) NOT NULL,
    [buyer_active] bit  NOT NULL
);
GO

-- Creating table 'Ads'
CREATE TABLE [dbo].[Ads] (
    [ad_Id] int IDENTITY(1,1) NOT NULL,
    [active] bit  NOT NULL,
    [Product_prod_Id] int  NOT NULL
);
GO

-- Creating table 'Seller_Ads'
CREATE TABLE [dbo].[Seller_Ads] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ad_ad_Id] int  NOT NULL,
    [Seller_seller_Id] int  NOT NULL
);
GO

-- Creating table 'PayMethods'
CREATE TABLE [dbo].[PayMethods] (
    [method_Id] int IDENTITY(1,1) NOT NULL,
    [method_name] nvarchar(max)  NOT NULL,
    [method_properties] nvarchar(max)  NOT NULL,
    [Seller_seller_Id] int  NOT NULL
);
GO

-- Creating table 'Reports'
CREATE TABLE [dbo].[Reports] (
    [report_Id] int IDENTITY(1,1) NOT NULL,
    [description] nvarchar(max)  NOT NULL,
    [Seller_seller_Id] int  NOT NULL,
    [Buyer_buyer_Id] int  NOT NULL
);
GO

-- Creating table 'Reviews'
CREATE TABLE [dbo].[Reviews] (
    [review_Id] int IDENTITY(1,1) NOT NULL,
    [review_Text] nvarchar(max)  NOT NULL,
    [Product_prod_Id] int  NOT NULL,
    [Buyer_buyer_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [prod_Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([prod_Id] ASC);
GO

-- Creating primary key on [cat_Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([cat_Id] ASC);
GO

-- Creating primary key on [tag_Id] in table 'Tags'
ALTER TABLE [dbo].[Tags]
ADD CONSTRAINT [PK_Tags]
    PRIMARY KEY CLUSTERED ([tag_Id] ASC);
GO

-- Creating primary key on [order_Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([order_Id] ASC);
GO

-- Creating primary key on [orderdetails_Id] in table 'Order_Details'
ALTER TABLE [dbo].[Order_Details]
ADD CONSTRAINT [PK_Order_Details]
    PRIMARY KEY CLUSTERED ([orderdetails_Id] ASC);
GO

-- Creating primary key on [Id] in table 'productTags'
ALTER TABLE [dbo].[productTags]
ADD CONSTRAINT [PK_productTags]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [seller_Id] in table 'Sellers1'
ALTER TABLE [dbo].[Sellers1]
ADD CONSTRAINT [PK_Sellers1]
    PRIMARY KEY CLUSTERED ([seller_Id] ASC);
GO

-- Creating primary key on [buyer_Id] in table 'Buyers'
ALTER TABLE [dbo].[Buyers]
ADD CONSTRAINT [PK_Buyers]
    PRIMARY KEY CLUSTERED ([buyer_Id] ASC);
GO

-- Creating primary key on [ad_Id] in table 'Ads'
ALTER TABLE [dbo].[Ads]
ADD CONSTRAINT [PK_Ads]
    PRIMARY KEY CLUSTERED ([ad_Id] ASC);
GO

-- Creating primary key on [Id] in table 'Seller_Ads'
ALTER TABLE [dbo].[Seller_Ads]
ADD CONSTRAINT [PK_Seller_Ads]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [method_Id] in table 'PayMethods'
ALTER TABLE [dbo].[PayMethods]
ADD CONSTRAINT [PK_PayMethods]
    PRIMARY KEY CLUSTERED ([method_Id] ASC);
GO

-- Creating primary key on [report_Id] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [PK_Reports]
    PRIMARY KEY CLUSTERED ([report_Id] ASC);
GO

-- Creating primary key on [review_Id] in table 'Reviews'
ALTER TABLE [dbo].[Reviews]
ADD CONSTRAINT [PK_Reviews]
    PRIMARY KEY CLUSTERED ([review_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Category_cat_Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_ProductHasCategory]
    FOREIGN KEY ([Category_cat_Id])
    REFERENCES [dbo].[Categories]
        ([cat_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductHasCategory'
CREATE INDEX [IX_FK_ProductHasCategory]
ON [dbo].[Products]
    ([Category_cat_Id]);
GO

-- Creating foreign key on [Product_prod_Id] in table 'Order_Details'
ALTER TABLE [dbo].[Order_Details]
ADD CONSTRAINT [FK_ProductsOrder_Details]
    FOREIGN KEY ([Product_prod_Id])
    REFERENCES [dbo].[Products]
        ([prod_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductsOrder_Details'
CREATE INDEX [IX_FK_ProductsOrder_Details]
ON [dbo].[Order_Details]
    ([Product_prod_Id]);
GO

-- Creating foreign key on [Order_order_Id] in table 'Order_Details'
ALTER TABLE [dbo].[Order_Details]
ADD CONSTRAINT [FK_OrdersOrder_Details]
    FOREIGN KEY ([Order_order_Id])
    REFERENCES [dbo].[Orders]
        ([order_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdersOrder_Details'
CREATE INDEX [IX_FK_OrdersOrder_Details]
ON [dbo].[Order_Details]
    ([Order_order_Id]);
GO

-- Creating foreign key on [Product_prod_Id] in table 'productTags'
ALTER TABLE [dbo].[productTags]
ADD CONSTRAINT [FK_ProductsEntity1]
    FOREIGN KEY ([Product_prod_Id])
    REFERENCES [dbo].[Products]
        ([prod_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductsEntity1'
CREATE INDEX [IX_FK_ProductsEntity1]
ON [dbo].[productTags]
    ([Product_prod_Id]);
GO

-- Creating foreign key on [Ad_ad_Id] in table 'Seller_Ads'
ALTER TABLE [dbo].[Seller_Ads]
ADD CONSTRAINT [FK_AdSeller_Ads]
    FOREIGN KEY ([Ad_ad_Id])
    REFERENCES [dbo].[Ads]
        ([ad_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdSeller_Ads'
CREATE INDEX [IX_FK_AdSeller_Ads]
ON [dbo].[Seller_Ads]
    ([Ad_ad_Id]);
GO

-- Creating foreign key on [Seller_seller_Id] in table 'Seller_Ads'
ALTER TABLE [dbo].[Seller_Ads]
ADD CONSTRAINT [FK_SellerSeller_Ads]
    FOREIGN KEY ([Seller_seller_Id])
    REFERENCES [dbo].[Sellers1]
        ([seller_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SellerSeller_Ads'
CREATE INDEX [IX_FK_SellerSeller_Ads]
ON [dbo].[Seller_Ads]
    ([Seller_seller_Id]);
GO

-- Creating foreign key on [Product_prod_Id] in table 'Ads'
ALTER TABLE [dbo].[Ads]
ADD CONSTRAINT [FK_ProductsAd]
    FOREIGN KEY ([Product_prod_Id])
    REFERENCES [dbo].[Products]
        ([prod_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductsAd'
CREATE INDEX [IX_FK_ProductsAd]
ON [dbo].[Ads]
    ([Product_prod_Id]);
GO

-- Creating foreign key on [Buyer_buyer_Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_BuyersOrders]
    FOREIGN KEY ([Buyer_buyer_Id])
    REFERENCES [dbo].[Buyers]
        ([buyer_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BuyersOrders'
CREATE INDEX [IX_FK_BuyersOrders]
ON [dbo].[Orders]
    ([Buyer_buyer_Id]);
GO

-- Creating foreign key on [Seller_seller_Id] in table 'PayMethods'
ALTER TABLE [dbo].[PayMethods]
ADD CONSTRAINT [FK_SellerPayMethods]
    FOREIGN KEY ([Seller_seller_Id])
    REFERENCES [dbo].[Sellers1]
        ([seller_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SellerPayMethods'
CREATE INDEX [IX_FK_SellerPayMethods]
ON [dbo].[PayMethods]
    ([Seller_seller_Id]);
GO

-- Creating foreign key on [Seller_seller_Id] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_SellerReport]
    FOREIGN KEY ([Seller_seller_Id])
    REFERENCES [dbo].[Sellers1]
        ([seller_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SellerReport'
CREATE INDEX [IX_FK_SellerReport]
ON [dbo].[Reports]
    ([Seller_seller_Id]);
GO

-- Creating foreign key on [Buyer_buyer_Id] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_BuyersReport]
    FOREIGN KEY ([Buyer_buyer_Id])
    REFERENCES [dbo].[Buyers]
        ([buyer_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BuyersReport'
CREATE INDEX [IX_FK_BuyersReport]
ON [dbo].[Reports]
    ([Buyer_buyer_Id]);
GO

-- Creating foreign key on [Product_prod_Id] in table 'Reviews'
ALTER TABLE [dbo].[Reviews]
ADD CONSTRAINT [FK_ProductsReview]
    FOREIGN KEY ([Product_prod_Id])
    REFERENCES [dbo].[Products]
        ([prod_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductsReview'
CREATE INDEX [IX_FK_ProductsReview]
ON [dbo].[Reviews]
    ([Product_prod_Id]);
GO

-- Creating foreign key on [Buyer_buyer_Id] in table 'Reviews'
ALTER TABLE [dbo].[Reviews]
ADD CONSTRAINT [FK_BuyersReview]
    FOREIGN KEY ([Buyer_buyer_Id])
    REFERENCES [dbo].[Buyers]
        ([buyer_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BuyersReview'
CREATE INDEX [IX_FK_BuyersReview]
ON [dbo].[Reviews]
    ([Buyer_buyer_Id]);
GO

-- Creating foreign key on [Tag_tag_Id] in table 'productTags'
ALTER TABLE [dbo].[productTags]
ADD CONSTRAINT [FK_TagsproductTags]
    FOREIGN KEY ([Tag_tag_Id])
    REFERENCES [dbo].[Tags]
        ([tag_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TagsproductTags'
CREATE INDEX [IX_FK_TagsproductTags]
ON [dbo].[productTags]
    ([Tag_tag_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------