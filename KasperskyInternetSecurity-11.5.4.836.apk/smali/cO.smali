.class public final LcO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v2

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 25
    invoke-virtual {v2, p1}, Lsk;->b(Ljava/lang/String;)V

    move v0, v1

    .line 28
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 29
    invoke-virtual {v2, p2}, Lsk;->c(Ljava/lang/String;)V

    .line 33
    :goto_0
    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v2}, Lsk;->g_()V

    .line 36
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Z)V

    .line 41
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lsr;->o()Lsn;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    invoke-interface {v1}, LsY;->a()LaC;

    move-result-object v1

    invoke-interface {v1}, LaC;->c()I

    move-result v1

    .line 47
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 51
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsn;->a(Z)V

    .line 56
    :goto_0
    invoke-virtual {v0}, Lsn;->g_()V

    .line 57
    return-void

    .line 53
    :cond_1
    invoke-virtual {v0, p1}, Lsn;->a(Z)V

    .line 54
    invoke-virtual {v0, p2}, Lsn;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
