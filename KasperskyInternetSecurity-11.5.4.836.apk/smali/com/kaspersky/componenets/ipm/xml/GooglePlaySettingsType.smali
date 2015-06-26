.class public Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;
.super Ljava/lang/Object;
.source "GooglePlaySettingsType.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlAccessorType;
    value = .enum Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "GooglePlaySettingsType"
    propOrder = {
        "id",
        "buyGooglePlayProductId",
        "renewGooglePlayProductId"
    }
.end annotation


# instance fields
.field protected buyGooglePlayProductId:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "BuyGooglePlayProductId"
    .end annotation
.end field

.field protected id:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "Id"
        required = true
    .end annotation
.end field

.field protected renewGooglePlayProductId:Ljava/lang/String;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "RenewGooglePlayProductId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuyGooglePlayProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;->buyGooglePlayProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRenewGooglePlayProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;->renewGooglePlayProductId:Ljava/lang/String;

    return-object v0
.end method

.method public setBuyGooglePlayProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;->buyGooglePlayProductId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;->id:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setRenewGooglePlayProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;->renewGooglePlayProductId:Ljava/lang/String;

    .line 123
    return-void
.end method
