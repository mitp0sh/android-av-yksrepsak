.class public final Lqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;


# direct methods
.method public constructor <init>(Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lqg;->b:Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;

    iput-object p2, p0, Lqg;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lqg;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-static {}, Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lwz;->a(Z)V

    .line 47
    :cond_0
    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->a(Z)V

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
