.class public final Lfb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:Lfb;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 54
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lfb;->a:I

    .line 56
    const/high16 v1, 0x435c0000    # 220.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lfb;->b:I

    .line 58
    const/high16 v1, 0x44960000    # 1200.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lfb;->c:I

    .line 60
    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lfb;->d:I

    .line 62
    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lfb;->e:I

    .line 64
    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lfb;->f:I

    .line 66
    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lfb;->g:I

    .line 68
    return-void
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 118
    if-lez p0, :cond_0

    :goto_0
    if-lez p1, :cond_1

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    if-nez v0, :cond_2

    .line 120
    const/4 v0, 0x0

    .line 124
    :goto_2
    return-object v0

    :cond_0
    move p0, v0

    .line 118
    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    .line 122
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_2
.end method

.method public static final a()Lfb;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lfb;->h:Lfb;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lfb;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lfb;->h:Lfb;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lfb;

    invoke-direct {v0}, Lfb;-><init>()V

    sput-object v0, Lfb;->h:Lfb;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lfb;->h:Lfb;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 1

    .prologue
    .line 171
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 172
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 173
    invoke-static {v0, p1}, Lfb;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 174
    return-void
.end method

.method private static a(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 162
    invoke-static {p0, p1}, Lfc;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 166
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static varargs a([Landroid/view/View;)V
    .locals 4

    .prologue
    .line 223
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 224
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method public static varargs b([Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 229
    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 230
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lfb;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lfb;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lfb;->g:I

    return v0
.end method
