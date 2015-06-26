.class public final Lvy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaY;


# instance fields
.field private synthetic a:Lcom/kms/runningtask/ConnectToUcpTask;


# direct methods
.method public constructor <init>(Lcom/kms/runningtask/ConnectToUcpTask;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lvy;->a:Lcom/kms/runningtask/ConnectToUcpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kaspersky/components/ucp/UcpConnectionStatus;)V
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Connected:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    if-ne p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lvy;->a:Lcom/kms/runningtask/ConnectToUcpTask;

    invoke-static {v0}, Lcom/kms/runningtask/ConnectToUcpTask;->b(Lcom/kms/runningtask/ConnectToUcpTask;)LaX;

    move-result-object v0

    invoke-interface {v0}, LaX;->requestAccountStatusUpdate()V

    .line 187
    :cond_0
    return-void
.end method
