.class public Lcom/kaspersky/components/ucp/MobileStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAlarmOn:I

.field private final mAvBaseStatus:I

.field private final mAvOn:I

.field private final mGpsFindOn:I

.field private final mGsmModuleExists:I

.field private final mMugshotOn:I

.field private final mPrivacyProtectionMode:I

.field private final mWebProtectionOn:I

.field private final mWipeOn:I


# direct methods
.method public constructor <init>(Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mAvBaseStatus:I

    .line 96
    invoke-virtual {p2}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mAvOn:I

    .line 97
    invoke-virtual {p3}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mAlarmOn:I

    .line 98
    invoke-virtual {p4}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mGpsFindOn:I

    .line 99
    invoke-virtual {p5}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mMugshotOn:I

    .line 100
    invoke-virtual {p6}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mWebProtectionOn:I

    .line 101
    invoke-virtual {p7}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mWipeOn:I

    .line 102
    invoke-virtual {p8}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mGsmModuleExists:I

    .line 103
    invoke-virtual {p9}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->getFeatureStatus()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mPrivacyProtectionMode:I

    .line 104
    return-void
.end method


# virtual methods
.method public getAlarmStatus()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mAlarmOn:I

    return v0
.end method

.method public getAvBaseStatus()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mAvBaseStatus:I

    return v0
.end method

.method public getAvStasus()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mAvOn:I

    return v0
.end method

.method public getGpsFindStatus()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mGpsFindOn:I

    return v0
.end method

.method public getGsmModuleStatus()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mGsmModuleExists:I

    return v0
.end method

.method public getMugshotStatus()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mMugshotOn:I

    return v0
.end method

.method public getPrivacyProtectionStatus()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mPrivacyProtectionMode:I

    return v0
.end method

.method public getWebProtectionStatus()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mWebProtectionOn:I

    return v0
.end method

.method public getWipeStatus()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/kaspersky/components/ucp/MobileStatus;->mWipeOn:I

    return v0
.end method
