.class public Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;
.super Ljava/lang/Object;
.source "LicenseStatusListType.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlAccessorType;
    value = .enum Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "LicenseStatusListType"
    propOrder = {
        "licenseStatus"
    }
.end annotation


# instance fields
.field protected licenseStatus:Ljava/util/List;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "LicenseStatus"
        required = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;",
            ">;"
        }
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
.method public getLicenseStatus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;->licenseStatus:Ljava/util/List;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;->licenseStatus:Ljava/util/List;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;->licenseStatus:Ljava/util/List;

    return-object v0
.end method
