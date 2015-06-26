.class public Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;
.super Ljava/lang/Object;
.source "IpmContentCustomization.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlAccessorType;
    value = .enum Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlRootElement;
    name = "IpmContentCustomization"
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = ""
    propOrder = {
        "news",
        "googleAnalyticsSettings",
        "webSurveySettings",
        "googlePlaySettings"
    }
.end annotation


# instance fields
.field protected googleAnalyticsSettings:Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "GoogleAnalyticsSettings"
    .end annotation
.end field

.field protected googlePlaySettings:Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "GooglePlaySettings"
    .end annotation
.end field

.field protected news:Lcom/kaspersky/componenets/ipm/xml/NewsType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "News"
    .end annotation
.end field

.field protected version:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlAttribute;
        name = "Version"
    .end annotation
.end field

.field protected webSurveySettings:Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "WebSurveySettings"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoogleAnalyticsSettings()Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->googleAnalyticsSettings:Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;

    return-object v0
.end method

.method public getGooglePlaySettings()Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->googlePlaySettings:Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;

    return-object v0
.end method

.method public getNews()Lcom/kaspersky/componenets/ipm/xml/NewsType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->news:Lcom/kaspersky/componenets/ipm/xml/NewsType;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWebSurveySettings()Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->webSurveySettings:Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;

    return-object v0
.end method

.method public setGoogleAnalyticsSettings(Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->googleAnalyticsSettings:Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;

    .line 109
    return-void
.end method

.method public setGooglePlaySettings(Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->googlePlaySettings:Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;

    .line 157
    return-void
.end method

.method public setNews(Lcom/kaspersky/componenets/ipm/xml/NewsType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/NewsType;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->news:Lcom/kaspersky/componenets/ipm/xml/NewsType;

    .line 85
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->version:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setWebSurveySettings(Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;)V
    .locals 0
    .param p1, "value"    # Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->webSurveySettings:Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;

    .line 133
    return-void
.end method
