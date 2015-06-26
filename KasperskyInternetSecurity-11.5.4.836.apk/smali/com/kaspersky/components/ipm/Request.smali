.class public Lcom/kaspersky/components/ipm/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mApplicationInfo:Lcom/kaspersky/components/ipm/ApplicationInfo;

.field public mKasperskyId:Ljava/lang/String;

.field public mLicenseInfo:Lcom/kaspersky/components/ipm/LicenseInfo;

.field public mLocalizationId:Ljava/lang/String;

.field public mMachineId:Ljava/lang/String;

.field public mPPCSId:I

.field public mRebrandingCode:Ljava/lang/String;

.field public mUcpStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/Request;->mMachineId:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/Request;->mRebrandingCode:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/Request;->mKasperskyId:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/Request;->mLocalizationId:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/kaspersky/components/ipm/Request$UcpStatus;->DISABLED:Lcom/kaspersky/components/ipm/Request$UcpStatus;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/Request$UcpStatus;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ipm/Request;->mUcpStatus:I

    .line 7
    return-void
.end method


# virtual methods
.method public getmPPCSId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/kaspersky/components/ipm/Request;->mPPCSId:I

    return v0
.end method

.method public setmPPCSId(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/kaspersky/components/ipm/Request;->mPPCSId:I

    .line 37
    return-void
.end method
