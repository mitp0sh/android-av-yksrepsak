.class public Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivationErrorCode:I

.field private final mLicenseData:[B

.field private final mLicenseStatus:I

.field private final mLicenseType:I


# direct methods
.method public constructor <init>(Lcom/kaspersky/components/ucp/UcpLicenseType;[BLcom/kaspersky/components/ucp/UcpLicenseStatus;I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/kaspersky/components/ucp/UcpLicenseType;->getLicenseType()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;->mLicenseType:I

    .line 20
    invoke-virtual {p3}, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->getLicenseStatus()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;->mLicenseStatus:I

    .line 21
    iput-object p2, p0, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;->mLicenseData:[B

    .line 22
    iput p4, p0, Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;->mActivationErrorCode:I

    .line 23
    return-void
.end method
