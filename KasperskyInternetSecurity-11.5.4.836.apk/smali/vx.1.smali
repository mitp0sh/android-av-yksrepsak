.class public final Lvx;
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
    .line 136
    iput-object p1, p0, Lvx;->a:Lcom/kms/runningtask/ConnectToUcpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kaspersky/components/ucp/UcpConnectionStatus;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lvx;->a:Lcom/kms/runningtask/ConnectToUcpTask;

    invoke-static {v0}, Lcom/kms/runningtask/ConnectToUcpTask;->a(Lcom/kms/runningtask/ConnectToUcpTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    if-ne p1, v0, :cond_0

    .line 141
    iget-object v0, p0, Lvx;->a:Lcom/kms/runningtask/ConnectToUcpTask;

    invoke-static {v0}, Lcom/kms/runningtask/ConnectToUcpTask;->a(Lcom/kms/runningtask/ConnectToUcpTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 143
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
