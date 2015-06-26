.class public final LrQ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, LrQ;->b(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 15
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 30
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    if-eqz p2, :cond_0

    move v0, v1

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 35
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
