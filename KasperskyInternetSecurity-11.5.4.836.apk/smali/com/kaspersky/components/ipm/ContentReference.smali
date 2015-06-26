.class public Lcom/kaspersky/components/ipm/ContentReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MESSAGE_SEEN:J = -0x2L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient a:Lcom/kaspersky/componenets/ipm/xml/NewsType;

.field private transient b:Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;

.field private transient c:Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;

.field private transient d:Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;

.field private mContentPath:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mMessageId:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->mMessageId:J

    .line 88
    iput-object p1, p0, Lcom/kaspersky/components/ipm/ContentReference;->mId:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/kaspersky/components/ipm/ContentReference;->mUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 197
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 201
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    .line 203
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_3
    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static formatNews(Lcom/kaspersky/componenets/ipm/xml/NewsType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v1, "announcement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getAnnouncement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getContentUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", publicationDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getPublicationDate()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/datatype/XMLGregorianCalendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", severity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSeverity()Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignoreDisableShowSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->isIgnoreDisableShowSetting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getDateTimeRangeList()Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, ", dateTimeRangeList="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getDateTimeRangeList()Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;->getDateTimeRange()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeApplicationStatusList()Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    const-string v1, ", excludeApplicationStatusList="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeApplicationStatusList()Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;->getApplicationStatus()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeApplicationStatusList()Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 149
    const-string v1, ", includeApplicationStatusList="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeApplicationStatusList()Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;->getApplicationStatus()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeLicenseStatusList()Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 153
    const-string v1, "includeLicenseStatusList="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeLicenseStatusList()Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;->getLicenseStatus()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeLicenseStatusList()Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 157
    const-string v1, ", excludeLicenseStatusList="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeLicenseStatusList()Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;->getLicenseStatus()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeLicenseTypeList()Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 161
    const-string v1, ", includeLicenseTypeList="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeLicenseTypeList()Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;->getLicenseType()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeLicenseTypeList()Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 165
    const-string v1, ", excludeLicenseTypeList="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeLicenseTypeList()Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;->getLicenseType()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 168
    :cond_6
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseExpiration()Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 169
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseExpiration()Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->getDaysAfterActivation()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 170
    const-string v1, ", daysAfterActivation="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseExpiration()Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->getDaysAfterActivation()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 173
    :cond_7
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseExpiration()Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->getDaysAfterExpiration()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 174
    const-string v1, ", daysAfterExpiration="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseExpiration()Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->getDaysAfterExpiration()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 177
    :cond_8
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseExpiration()Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->getDaysToExpiration()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 178
    const-string v1, ", daysToExpiration="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseExpiration()Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->getDaysToExpiration()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 182
    :cond_9
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseSubscription()Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 184
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseSubscription()Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;->getDaysAfterExpiration()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 185
    const-string v1, ", Subscription::daysAfterExpiration="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseSubscription()Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;->getDaysAfterExpiration()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 188
    :cond_a
    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseSubscription()Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;->getDaysToExpiration()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 189
    const-string v1, ", Subscription::daysToExpiration="

    invoke-virtual {p0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseSubscription()Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;->getDaysToExpiration()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaspersky/components/ipm/ContentReference;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 193
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    if-ne p0, p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    check-cast p1, Lcom/kaspersky/components/ipm/ContentReference;

    .line 115
    iget-object v2, p0, Lcom/kaspersky/components/ipm/ContentReference;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 116
    iget-object v2, p1, Lcom/kaspersky/components/ipm/ContentReference;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/kaspersky/components/ipm/ContentReference;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/kaspersky/components/ipm/ContentReference;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 119
    goto :goto_0
.end method

.method public getContentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->mContentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGaSettings()Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->b:Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;

    return-object v0
.end method

.method public getGpSettings()Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->d:Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->mMessageId:J

    return-wide v0
.end method

.method public getNews()Lcom/kaspersky/componenets/ipm/xml/NewsType;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->a:Lcom/kaspersky/componenets/ipm/xml/NewsType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebSurveySettings()Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->c:Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 100
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/components/ipm/ContentReference;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setContentPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kaspersky/components/ipm/ContentReference;->mContentPath:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setGaSettings(Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kaspersky/components/ipm/ContentReference;->b:Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;

    .line 69
    return-void
.end method

.method public setGpSettings(Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kaspersky/components/ipm/ContentReference;->d:Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;

    .line 85
    return-void
.end method

.method public setMessageId(J)V
    .locals 0

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/kaspersky/components/ipm/ContentReference;->mMessageId:J

    .line 37
    return-void
.end method

.method public setNews(Lcom/kaspersky/componenets/ipm/xml/NewsType;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kaspersky/components/ipm/ContentReference;->a:Lcom/kaspersky/componenets/ipm/xml/NewsType;

    .line 57
    return-void
.end method

.method public setWebSurveySettings(Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kaspersky/components/ipm/ContentReference;->c:Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentReference [mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kaspersky/components/ipm/ContentReference;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/components/ipm/ContentReference;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContentPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/components/ipm/ContentReference;->mContentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/components/ipm/ContentReference;->a:Lcom/kaspersky/componenets/ipm/xml/NewsType;

    invoke-static {v1}, Lcom/kaspersky/components/ipm/ContentReference;->formatNews(Lcom/kaspersky/componenets/ipm/xml/NewsType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
