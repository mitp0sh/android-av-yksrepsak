.class public final LkR;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;ILkU;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 30
    invoke-static {v0, p0}, Lgo;->a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Lgo;

    move-result-object v0

    .line 31
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 33
    new-instance v1, LkS;

    invoke-direct {v1, v0, p2, p1, p0}, LkS;-><init>(Lgo;LkU;ILandroid/content/Context;)V

    .line 58
    const v2, 0x7f070280

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lgo;->c:Ljava/util/List;

    invoke-static {v0}, LbC;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v2, LoN;

    invoke-direct {v2, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07027f

    invoke-virtual {v2, v3}, LoN;->a(I)LoN;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, LoN;->b(Ljava/lang/CharSequence;)LoN;

    move-result-object v0

    const v2, 0x7f070281

    invoke-virtual {v0, v2, v1}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->d()V

    .line 73
    const v1, 0x7f070283

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lgo;->c:Ljava/util/List;

    invoke-static {v0}, LbC;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, LkT;

    invoke-direct {v1, p2, p1, p0}, LkT;-><init>(LkU;ILandroid/content/Context;)V

    .line 90
    new-instance v2, LoN;

    invoke-direct {v2, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070282

    invoke-virtual {v2, v3}, LoN;->a(I)LoN;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, LoN;->b(Ljava/lang/CharSequence;)LoN;

    move-result-object v0

    const v2, 0x7f070284

    invoke-virtual {v0, v2, v1}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0
.end method
