.class public Lcom/kaspersky/componenets/ipm/xml/NewsType;
.super Ljava/lang/Object;
.source "NewsType.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlAccessorType;
    value = .enum Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "NewsType"
    propOrder = {
        "id",
        "contentUri",
        "severity",
        "title",
        "announcement",
        "schedule",
        "publicationDate",
        "autoOpenInApplication",
        "ignoreDisableShowSetting"
    }
.end annotation


# instance fields
.field protected announcement:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "Announcement"
        required = true
    .end annotation
.end field

.field protected autoOpenInApplication:Z
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "AutoOpenInApplication"
    .end annotation
.end field

.field protected contentUri:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "ContentUri"
        required = true
    .end annotation

    .annotation runtime Lae/javax/xml/bind/annotation/XmlSchemaType;
        name = "anyURI"
    .end annotation
.end field

.field protected id:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "Id"
        required = true
    .end annotation
.end field

.field protected ignoreDisableShowSetting:Z
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "IgnoreDisableShowSetting"
    .end annotation
.end field

.field protected publicationDate:Ljavax/xml/datatype/XMLGregorianCalendar;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "PublicationDate"
        required = true
    .end annotation

    .annotation runtime Lae/javax/xml/bind/annotation/XmlSchemaType;
        name = "dateTime"
    .end annotation
.end field

.field protected schedule:Lcom/kaspersky/componenets/ipm/xml/ScheduleType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "Schedule"
        required = true
    .end annotation
.end field

.field protected severity:Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "Severity"
        required = true
    .end annotation
.end field

.field protected title:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "Title"
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnouncement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->announcement:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->contentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicationDate()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->publicationDate:Ljavax/xml/datatype/XMLGregorianCalendar;

    return-object v0
.end method

.method public getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->schedule:Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    return-object v0
.end method

.method public getSeverity()Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->severity:Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoOpenInApplication()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->autoOpenInApplication:Z

    return v0
.end method

.method public isIgnoreDisableShowSetting()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->ignoreDisableShowSetting:Z

    return v0
.end method

.method public setAnnouncement(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->announcement:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setAutoOpenInApplication(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->autoOpenInApplication:Z

    .line 263
    return-void
.end method

.method public setContentUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->contentUri:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->id:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setIgnoreDisableShowSetting(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->ignoreDisableShowSetting:Z

    .line 279
    return-void
.end method

.method public setPublicationDate(Ljavax/xml/datatype/XMLGregorianCalendar;)V
    .locals 0
    .param p1, "value"    # Ljavax/xml/datatype/XMLGregorianCalendar;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->publicationDate:Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 247
    return-void
.end method

.method public setSchedule(Lcom/kaspersky/componenets/ipm/xml/ScheduleType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->schedule:Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    .line 223
    return-void
.end method

.method public setSeverity(Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->severity:Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;

    .line 151
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/NewsType;->title:Ljava/lang/String;

    .line 175
    return-void
.end method
