.class public final LnD;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 8
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    return-void
.end method
