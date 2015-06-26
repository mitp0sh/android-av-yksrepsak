.class public Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;
.super Ljava/lang/Object;
.source "LicenseExpirationType.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlAccessorType;
    value = .enum Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "LicenseExpirationType"
    propOrder = {
        "daysToExpiration",
        "daysAfterExpiration",
        "daysAfterActivation"
    }
.end annotation


# instance fields
.field protected daysAfterActivation:Ljava/util/List;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "DaysAfterActivation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;",
            ">;"
        }
    .end annotation
.end field

.field protected daysAfterExpiration:Ljava/util/List;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "DaysAfterExpiration"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;",
            ">;"
        }
    .end annotation
.end field

.field protected daysToExpiration:Ljava/util/List;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "DaysToExpiration"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDaysAfterActivation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->daysAfterActivation:Ljava/util/List;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->daysAfterActivation:Ljava/util/List;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->daysAfterActivation:Ljava/util/List;

    return-object v0
.end method

.method public getDaysAfterExpiration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->daysAfterExpiration:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->daysAfterExpiration:Ljava/util/List;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->daysAfterExpiration:Ljava/util/List;

    return-object v0
.end method

.method public getDaysToExpiration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->daysToExpiration:Ljava/util/List;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->daysToExpiration:Ljava/util/List;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->daysToExpiration:Ljava/util/List;

    return-object v0
.end method
