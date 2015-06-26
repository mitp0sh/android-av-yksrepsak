.class public Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;
.super Ljava/lang/Object;
.source "WebSurveySettingsType.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlAccessorType;
    value = .enum Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "WebSurveySettingsType"
    propOrder = {
        "id",
        "performAfterPurchaseSurvey",
        "surveyUrl"
    }
.end annotation


# instance fields
.field protected id:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "Id"
        required = true
    .end annotation
.end field

.field protected performAfterPurchaseSurvey:Z
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "PerformAfterPurchaseSurvey"
    .end annotation
.end field

.field protected surveyUrl:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "SurveyUrl"
    .end annotation

    .annotation runtime Lae/javax/xml/bind/annotation/XmlSchemaType;
        name = "anyURI"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSurveyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;->surveyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isPerformAfterPurchaseSurvey()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;->performAfterPurchaseSurvey:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;->id:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPerformAfterPurchaseSurvey(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;->performAfterPurchaseSurvey:Z

    .line 93
    return-void
.end method

.method public setSurveyUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;->surveyUrl:Ljava/lang/String;

    .line 117
    return-void
.end method
