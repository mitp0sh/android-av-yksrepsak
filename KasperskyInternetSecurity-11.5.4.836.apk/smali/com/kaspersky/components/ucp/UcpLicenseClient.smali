.class public Lcom/kaspersky/components/ucp/UcpLicenseClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaZ;


# instance fields
.field private final a:LaR;

.field private final b:Lba;

.field private volatile mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcom/kaspersky/components/ucp/UcpLicenseClient;->nativeClassInit()V

    .line 51
    return-void
.end method

.method public constructor <init>(ILaR;Lba;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/kaspersky/components/ucp/UcpLicenseClient;->init(I)V

    .line 21
    iput-object p2, p0, Lcom/kaspersky/components/ucp/UcpLicenseClient;->a:LaR;

    .line 22
    iput-object p3, p0, Lcom/kaspersky/components/ucp/UcpLicenseClient;->b:Lba;

    .line 23
    return-void
.end method

.method private addActivationCode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpLicenseClient;->a:LaR;

    invoke-interface {v0, p1}, LaR;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private getLicenseInfoItem()[Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpLicenseClient;->b:Lba;

    invoke-interface {v0}, Lba;->a()[Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    move-result-object v0

    return-object v0
.end method

.method private native init(I)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public native getNativeClient()I
.end method

.method public native publishLicenseInfo()V
.end method
