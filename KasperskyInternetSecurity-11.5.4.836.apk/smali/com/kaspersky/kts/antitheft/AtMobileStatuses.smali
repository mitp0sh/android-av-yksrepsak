.class public Lcom/kaspersky/kts/antitheft/AtMobileStatuses;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mApplicationVersion:Ljava/lang/String;

.field private mLicenseType:Ljava/lang/String;

.field private mPushNotificationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mPushNotificationId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mLicenseType:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mApplicationVersion:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p0, p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    check-cast p1, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    .line 64
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mApplicationVersion:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 65
    iget-object v2, p1, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mApplicationVersion:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mApplicationVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mApplicationVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_5
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mLicenseType:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 70
    iget-object v2, p1, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mLicenseType:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_6
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mLicenseType:Ljava/lang/String;

    iget-object v3, p1, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mLicenseType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_7
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mPushNotificationId:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 75
    iget-object v2, p1, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mPushNotificationId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 76
    goto :goto_0

    .line 77
    :cond_8
    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mPushNotificationId:Ljava/lang/String;

    iget-object v3, p1, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mPushNotificationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mLicenseType:Ljava/lang/String;

    return-object v0
.end method

.method public getPushNotificationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mPushNotificationId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mApplicationVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 50
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mLicenseType:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mPushNotificationId:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 52
    return v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mApplicationVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mLicenseType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mPushNotificationId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mApplicationVersion:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setLicenseType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mLicenseType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPushNotificationId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mPushNotificationId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AtMobileStatuses [mPushNotificationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mPushNotificationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLicenseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mLicenseType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApplicationVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->mApplicationVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
