.class public Lcom/kaspersky/components/ucp/UcpCommandClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaV;


# instance fields
.field private a:LaW;

.field private b:LaT;

.field private volatile mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Lcom/kaspersky/components/ucp/UcpCommandClient;->nativeClassInit()V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/kaspersky/components/ucp/UcpCommandClient;->init(I)V

    .line 23
    return-void
.end method

.method private native init(I)V
.end method

.method private static native nativeClassInit()V
.end method

.method private onAlarmCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->b:LaT;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->b:LaT;

    invoke-interface {v0, p1, p2}, LaT;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method private onAvProtectionSwitchCommand(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->a:LaW;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->a:LaW;

    invoke-interface {v0, p1, p2}, LaW;->b(Ljava/lang/String;Z)V

    .line 122
    :cond_0
    return-void
.end method

.method private onGpsFindCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->b:LaT;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->b:LaT;

    invoke-interface {v0, p1, p2}, LaT;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method private onMugShotCommand(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->b:LaT;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->b:LaT;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, LaT;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method private onPrivacyProtectionSwitchCommand(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->a:LaW;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->a:LaW;

    invoke-interface {v0, p1, p2}, LaW;->a(Ljava/lang/String;Z)V

    .line 112
    :cond_0
    return-void
.end method

.method private onUpdateBasesCommand(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->a:LaW;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->a:LaW;

    invoke-interface {v0, p1}, LaW;->a(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method private onWipeDataCommand(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->b:LaT;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->b:LaT;

    invoke-interface {v0, p1, p2}, LaT;->a(Ljava/lang/String;Z)V

    .line 60
    :cond_0
    return-void
.end method

.method private native reportCommandError(Ljava/lang/String;ILjava/lang/String;)V
.end method


# virtual methods
.method public final a(LaT;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->b:LaT;

    .line 132
    return-void
.end method

.method public final a(LaW;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kaspersky/components/ucp/UcpCommandClient;->a:LaW;

    .line 127
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p2}, Lcom/kaspersky/components/ucp/UcpCommandError;->getError()I

    move-result v0

    invoke-static {p3}, LbC;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/kaspersky/components/ucp/UcpCommandClient;->reportCommandError(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public native forceUpdateCommands()V
.end method

.method public native reportCommandSucced(Ljava/lang/String;)V
.end method

.method public native reportGpsCommandResult(Ljava/lang/String;Lcom/kaspersky/components/ucp/PositionInfo;)V
.end method
