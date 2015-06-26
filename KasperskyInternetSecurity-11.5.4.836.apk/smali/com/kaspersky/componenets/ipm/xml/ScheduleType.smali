.class public Lcom/kaspersky/componenets/ipm/xml/ScheduleType;
.super Ljava/lang/Object;
.source "ScheduleType.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlAccessorType;
    value = .enum Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "ScheduleType"
    propOrder = {
        "licenseExpiration",
        "licenseSubscription",
        "includeLicenseStatusList",
        "excludeLicenseStatusList",
        "includeLicenseTypeList",
        "excludeLicenseTypeList",
        "includeApplicationStatusList",
        "excludeApplicationStatusList",
        "dateTimeRangeList"
    }
.end annotation


# instance fields
.field protected dateTimeRangeList:Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "DateTimeRangeList"
    .end annotation
.end field

.field protected excludeApplicationStatusList:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "ExcludeApplicationStatusList"
    .end annotation
.end field

.field protected excludeLicenseStatusList:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "ExcludeLicenseStatusList"
    .end annotation
.end field

.field protected excludeLicenseTypeList:Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "ExcludeLicenseTypeList"
    .end annotation
.end field

.field protected includeApplicationStatusList:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "IncludeApplicationStatusList"
    .end annotation
.end field

.field protected includeLicenseStatusList:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "IncludeLicenseStatusList"
    .end annotation
.end field

.field protected includeLicenseTypeList:Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "IncludeLicenseTypeList"
    .end annotation
.end field

.field protected licenseExpiration:Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "LicenseExpiration"
    .end annotation
.end field

.field protected licenseSubscription:Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "LicenseSubscription"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTimeRangeList()Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->dateTimeRangeList:Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;

    return-object v0
.end method

.method public getExcludeApplicationStatusList()Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->excludeApplicationStatusList:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    return-object v0
.end method

.method public getExcludeLicenseStatusList()Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->excludeLicenseStatusList:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    return-object v0
.end method

.method public getExcludeLicenseTypeList()Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->excludeLicenseTypeList:Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    return-object v0
.end method

.method public getIncludeApplicationStatusList()Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->includeApplicationStatusList:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    return-object v0
.end method

.method public getIncludeLicenseStatusList()Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->includeLicenseStatusList:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    return-object v0
.end method

.method public getIncludeLicenseTypeList()Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->includeLicenseTypeList:Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    return-object v0
.end method

.method public getLicenseExpiration()Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->licenseExpiration:Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    return-object v0
.end method

.method public getLicenseSubscription()Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->licenseSubscription:Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    return-object v0
.end method

.method public setDateTimeRangeList(Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->dateTimeRangeList:Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;

    .line 291
    return-void
.end method

.method public setExcludeApplicationStatusList(Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->excludeApplicationStatusList:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    .line 267
    return-void
.end method

.method public setExcludeLicenseStatusList(Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->excludeLicenseStatusList:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    .line 171
    return-void
.end method

.method public setExcludeLicenseTypeList(Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->excludeLicenseTypeList:Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    .line 219
    return-void
.end method

.method public setIncludeApplicationStatusList(Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->includeApplicationStatusList:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    .line 243
    return-void
.end method

.method public setIncludeLicenseStatusList(Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->includeLicenseStatusList:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    .line 147
    return-void
.end method

.method public setIncludeLicenseTypeList(Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->includeLicenseTypeList:Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    .line 195
    return-void
.end method

.method public setLicenseExpiration(Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->licenseExpiration:Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    .line 99
    return-void
.end method

.method public setLicenseSubscription(Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->licenseSubscription:Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    .line 123
    return-void
.end method
