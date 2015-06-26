.class public Lcom/kaspersky/components/ucp/UcpMobileClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb;


# instance fields
.field private a:Lbc;

.field private volatile mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/kaspersky/components/ucp/UcpMobileClient;->nativeClassInit()V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lcom/kaspersky/components/ucp/UcpMobileClient;->init(I)V

    .line 22
    return-void
.end method

.method private native init(I)V
.end method

.method private static native nativeClassInit()V
.end method

.method private onActivationCodes([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpMobileClient;->a:Lbc;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpMobileClient;->a:Lbc;

    invoke-interface {v0, p1}, Lbc;->a([Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method private native reportGPlayPurchase([B[B)V
.end method


# virtual methods
.method public final a(Lbc;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kaspersky/components/ucp/UcpMobileClient;->a:Lbc;

    .line 68
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kaspersky/components/ucp/UcpMobileClient;->reportGPlayPurchase([B[B)V

    .line 73
    return-void
.end method

.method public native connect()V
.end method

.method public native reportPushServiceRegistration(ZLjava/lang/String;)V
.end method

.method public native requestAvailableActivationCodes()V
.end method

.method public native sendKmsStatus(Lcom/kaspersky/components/ucp/MobileStatus;)V
.end method

.method public native sendRestoreCode(Ljava/lang/String;)V
.end method
