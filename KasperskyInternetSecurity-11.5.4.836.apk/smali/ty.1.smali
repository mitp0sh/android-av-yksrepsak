.class public final Lty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LtC;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, LtC;

    invoke-direct {v0}, LtC;-><init>()V

    iput-object v0, p0, Lty;->a:LtC;

    .line 24
    iget-object v0, p0, Lty;->a:LtC;

    invoke-virtual {v0, p1}, LtC;->a(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lty;->a:LtC;

    invoke-virtual {v0, p2}, LtC;->f(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 35
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v2, 0x7f070346

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {}, Lsu;->a()Lsu;

    move-result-object v4

    .line 47
    const-string v1, "installation_id"

    invoke-virtual {v4, v1, v0}, Lsu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    const/16 v1, 0x20

    :try_start_0
    invoke-static {v1}, Lcom/kms/kmsshared/Utils;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/kms/kmsshared/Utils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v5, "installation_id"

    invoke-virtual {v4, v5, v1}, Lsu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4}, Lsu;->b()V

    .line 58
    :cond_0
    invoke-static {}, Lcom/kms/kmsshared/Utils;->i()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {v4}, Lcom/kms/kmsshared/Utils;->j(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    iget-object v4, p0, Lty;->a:LtC;

    sget-object v5, Lte;->a:[I

    invoke-virtual {v4, v5}, LtC;->a([I)V

    .line 67
    iget-object v4, p0, Lty;->a:LtC;

    invoke-virtual {v4, v2}, LtC;->b(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lty;->a:LtC;

    invoke-virtual {v2, v3}, LtC;->c(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lty;->a:LtC;

    invoke-virtual {v2, v1}, LtC;->d(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lty;->a:LtC;

    invoke-virtual {v1, v0}, LtC;->e(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lty;->a:LtC;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LtC;->a(J)V

    .line 73
    iget-object v0, p0, Lty;->a:LtC;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LtC;->a(I)V

    .line 74
    iget-object v0, p0, Lty;->a:LtC;

    invoke-static {}, LjJ;->o()LvH;

    move-result-object v1

    invoke-virtual {v1}, LvH;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LtC;->a(Ljava/lang/Integer;)V

    .line 75
    iget-object v0, p0, Lty;->a:LtC;

    invoke-virtual {v0}, LtC;->a()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
