.class public final LbI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LbI;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;F)I
    .locals 2

    .prologue
    .line 180
    invoke-static {p1}, LbI;->a(F)V

    .line 182
    invoke-static {p0}, LbI;->b(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 185
    invoke-static {p0, p1}, LbI;->b(Landroid/app/Activity;F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/kaspersky/components/views/ScreenOrientation;
    .locals 3

    .prologue
    .line 114
    invoke-static {p0}, LbI;->b(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 119
    sget-object v0, Lcom/kaspersky/components/views/ScreenOrientation;->Portrait:Lcom/kaspersky/components/views/ScreenOrientation;

    .line 126
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v1, v0, :cond_1

    .line 121
    sget-object v0, Lcom/kaspersky/components/views/ScreenOrientation;->Landscape:Lcom/kaspersky/components/views/ScreenOrientation;

    goto :goto_0

    .line 123
    :cond_1
    sget-object v0, Lcom/kaspersky/components/views/ScreenOrientation;->Square:Lcom/kaspersky/components/views/ScreenOrientation;

    goto :goto_0
.end method

.method private static a(F)V
    .locals 3

    .prologue
    .line 234
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Percentage value is incorrect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", should be from 0 to 1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Class;LbJ;)V
    .locals 0

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, LbI;->b(Landroid/view/View;Ljava/lang/Class;LbJ;)V

    .line 81
    return-void
.end method

.method public static a(ILandroid/content/res/Configuration;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 143
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    .line 144
    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lt v1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;F)I
    .locals 2

    .prologue
    .line 198
    invoke-static {p1}, LbI;->a(F)V

    .line 200
    invoke-static {p0}, LbI;->b(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 203
    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private static b(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 135
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 138
    :cond_0
    return-object v0
.end method

.method private static b(Landroid/view/View;Ljava/lang/Class;LbJ;)V
    .locals 2

    .prologue
    .line 55
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 56
    check-cast p0, Landroid/view/ViewGroup;

    .line 58
    if-eqz p1, :cond_0

    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    invoke-interface {p2, p0}, LbJ;->a(Ljava/lang/Object;)V

    .line 63
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, LbI;->b(Landroid/view/View;Ljava/lang/Class;LbJ;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    :cond_3
    invoke-interface {p2, p0}, LbJ;->a(Ljava/lang/Object;)V

    .line 70
    :cond_4
    return-void
.end method

.method public static c(Landroid/app/Activity;F)I
    .locals 1

    .prologue
    .line 207
    invoke-static {p1}, LbI;->a(F)V

    .line 209
    invoke-static {p0}, LbI;->b(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 212
    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static d(Landroid/app/Activity;F)I
    .locals 3

    .prologue
    const v2, 0x3e99999a    # 0.3f

    .line 225
    invoke-static {v2}, LbI;->a(F)V

    .line 227
    invoke-static {p0}, LbI;->b(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 230
    mul-float/2addr v0, v2

    float-to-int v0, v0

    return v0
.end method
