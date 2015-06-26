.class public final LqZ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 10
    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 12
    invoke-static {}, LqZ;->a()V

    .line 14
    :cond_0
    return-void
.end method
