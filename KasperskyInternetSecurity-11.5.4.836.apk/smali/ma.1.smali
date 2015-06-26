.class public final Lma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LqJ;
.implements LrL;


# instance fields
.field private final a:LlZ;

.field private b:LrF;


# direct methods
.method public constructor <init>(LlZ;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lma;->a:LlZ;

    .line 21
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 22
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->o()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 25
    invoke-virtual {v0, p0}, Lcom/kms/kmsshared/KMSApplication;->a(LqJ;)V

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/kms/kmsdaemon/KMSDaemon;->a()LrF;

    move-result-object v0

    iput-object v0, p0, Lma;->b:LrF;

    .line 30
    iget-object v0, p0, Lma;->b:LrF;

    invoke-virtual {v0, p0}, LrF;->a(LrL;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lma;->b:LrF;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lma;->b:LrF;

    invoke-virtual {v0, p0}, LrF;->b(LrL;)V

    .line 40
    :cond_0
    return-void
.end method

.method public final a(Landroid/telephony/ServiceState;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lma;->b:LrF;

    invoke-virtual {v0}, LrF;->a()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lma;->b:LrF;

    invoke-virtual {v0}, LrF;->a()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lma;->a:LlZ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lma;->a:LlZ;

    invoke-virtual {v0}, LlZ;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lma;->a:LlZ;

    invoke-virtual {v0}, LlZ;->interrupt()V

    .line 76
    :cond_0
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 46
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->o()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/kms/kmsdaemon/KMSDaemon;->a()LrF;

    move-result-object v0

    iput-object v0, p0, Lma;->b:LrF;

    .line 48
    iget-object v0, p0, Lma;->b:LrF;

    invoke-virtual {v0, p0}, LrF;->a(LrL;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method
