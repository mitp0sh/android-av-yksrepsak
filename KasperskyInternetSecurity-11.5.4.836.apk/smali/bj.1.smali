.class final Lbj;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Z

.field private synthetic c:Lbi;


# direct methods
.method public constructor <init>(Lbi;Landroid/net/Uri;Z)V
    .locals 1

    .prologue
    .line 456
    iput-object p1, p0, Lbj;->c:Lbi;

    .line 457
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 458
    iput-object p2, p0, Lbj;->a:Landroid/net/Uri;

    .line 459
    iput-boolean p3, p0, Lbj;->b:Z

    .line 460
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 6

    .prologue
    .line 464
    iget-object v0, p0, Lbj;->c:Lbi;

    invoke-static {v0}, Lbi;->a(Lbi;)LcJ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbj;->c:Lbi;

    invoke-static {v0}, Lbi;->a(Lbi;)LcJ;

    move-result-object v0

    invoke-virtual {v0}, LcJ;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lbj;->c:Lbi;

    invoke-static {v0}, Lbi;->b(Lbi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    :try_start_0
    iget-object v0, p0, Lbj;->c:Lbi;

    invoke-static {v0}, Lbi;->c(Lbi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lbj;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "date <= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lbj;->c:Lbi;

    new-instance v2, LcI;

    invoke-direct {v2, v0}, LcI;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-boolean v4, p0, Lbj;->b:Z

    invoke-static {v1, v2, v3, v4}, Lbi;->a(Lbi;LcI;Ljava/io/OutputStream;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lbj;->c:Lbi;

    invoke-static {v1}, Lbi;->c(Lbi;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lbj;->a:Landroid/net/Uri;

    invoke-static {v0}, Lbi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
