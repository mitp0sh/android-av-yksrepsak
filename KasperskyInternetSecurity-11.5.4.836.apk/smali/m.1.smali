.class public final Lm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Z


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    sget-boolean v0, Lm;->b:Z

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Facebook helper is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lm;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 14
    const-class v1, Lm;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lm;->b:Z

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Alerady initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 18
    :cond_0
    :try_start_1
    sput-object p0, Lm;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lm;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit v1

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    sget-boolean v0, Lm;->b:Z

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Facebook helper is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    sget-object v0, Lm;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    const-string v1, "wizard_completed"

    invoke-virtual {v0, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
