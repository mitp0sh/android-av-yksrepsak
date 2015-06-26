.class public final Lkh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lkh;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 101
    sget-object v1, Lkh;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 102
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 104
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    .line 105
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    .line 107
    float-to-int v4, v2

    float-to-int v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 108
    float-to-int v5, v2

    float-to-int v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 110
    const/16 v6, 0x1b8

    if-lt v4, v6, :cond_2

    const/16 v4, 0x2f8

    if-lt v5, v4, :cond_2

    .line 111
    iget v4, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v4

    float-to-double v4, v2

    .line 112
    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v3, v1

    float-to-double v1, v1

    .line 114
    mul-double v3, v4, v4

    mul-double/2addr v1, v1

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 115
    const-wide/16 v3, 0x7

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lkh;->a:Ljava/lang/Boolean;

    .line 121
    :cond_1
    :goto_0
    sget-object v0, Lkh;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 117
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lkh;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 125
    invoke-static {p0}, Lcom/kms/kmsshared/KMSApplication;->a(Landroid/app/Activity;)Z

    move-result v0

    .line 126
    if-eqz v0, :cond_0

    invoke-static {p0}, Lkh;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, LbI;->a(ILandroid/content/res/Configuration;)Z

    move-result v0

    .line 131
    invoke-static {p0}, LbI;->a(Landroid/app/Activity;)Lcom/kaspersky/components/views/ScreenOrientation;

    move-result-object v1

    .line 132
    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaspersky/components/views/ScreenOrientation;->Portrait:Lcom/kaspersky/components/views/ScreenOrientation;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
