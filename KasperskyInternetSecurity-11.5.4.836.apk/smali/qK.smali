.class public final LqK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbx;


# instance fields
.field private a:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(LqK;)Landroid/os/Looper;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, LqK;->a:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic a(LqK;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, LqK;->a:Landroid/os/Looper;

    return-object p1
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v2, LqL;

    invoke-direct {v2, p0, v0, v1}, LqL;-><init>(LqK;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, LqL;->start()V

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, LqM;

    invoke-direct {v2, p0, v1}, LqM;-><init>(LqK;Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 18
    instance-of v0, p1, Lcom/kms/services/ppcs/PpcsConfigurationException;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/kms/services/ppcs/PpcsConfigurationException;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/kms/kmsshared/utils/KisUserException;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/kms/kmsshared/utils/KisUserException;

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    invoke-direct {p0, p1}, LqK;->b(Ljava/lang/Throwable;)V

    .line 23
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
