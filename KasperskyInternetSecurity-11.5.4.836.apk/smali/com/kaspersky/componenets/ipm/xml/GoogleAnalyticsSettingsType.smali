.class public Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;
.super Ljava/lang/Object;
.source "GoogleAnalyticsSettingsType.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlAccessorType;
    value = .enum Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "GoogleAnalyticsSettingsType"
    propOrder = {
        "id",
        "sendApplicationStatistics"
    }
.end annotation


# instance fields
.field protected id:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "Id"
        required = true
    .end annotation
.end field

.field protected sendApplicationStatistics:Z
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "SendApplicationStatistics"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isSendApplicationStatistics()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;->sendApplicationStatistics:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;->id:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setSendApplicationStatistics(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;->sendApplicationStatistics:Z

    .line 87
    return-void
.end method
