.class public final LiF;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:Landroid/graphics/Paint$Style;

.field private static o:Z

.field private static p:I

.field private static final q:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    const/16 v1, 0xa

    .line 26
    sget-object v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustPan:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    sput-object v0, LiF;->a:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    .line 27
    const/4 v0, 0x5

    sput v0, LiF;->b:I

    .line 29
    const/high16 v0, -0x1000000

    sput v0, LiF;->c:I

    .line 31
    sput v2, LiF;->d:I

    .line 32
    const/16 v0, 0x23

    sput v0, LiF;->e:I

    .line 33
    sput v2, LiF;->f:I

    .line 34
    const/16 v0, 0x19

    sput v0, LiF;->g:I

    .line 36
    sput v3, LiF;->h:I

    .line 37
    sput v3, LiF;->i:I

    .line 38
    sput v1, LiF;->j:I

    .line 39
    sput v1, LiF;->k:I

    .line 41
    sput v1, LiF;->l:I

    .line 42
    const v0, -0xfc899e

    sput v0, LiF;->m:I

    .line 43
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    sput-object v0, LiF;->n:Landroid/graphics/Paint$Style;

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, LiF;->o:Z

    .line 46
    const/16 v0, 0x32

    sput v0, LiF;->p:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LiF;->q:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 125
    sget v0, LiF;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 127
    sget v0, LiF;->d:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 131
    :cond_0
    sget v0, LiF;->l:I

    .line 133
    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x2

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x3

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x4

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x5

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x6

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x7

    int-to-float v0, v0

    aput v0, v1, v2

    .line 136
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 137
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget v2, LiF;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, LiF;->n:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method static a()Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;
    .locals 1

    .prologue
    .line 61
    sget-object v0, LiF;->a:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    return-object v0
.end method

.method static a(I)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    sput v0, LiF;->h:I

    .line 208
    return-void
.end method

.method public static a(Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;)V
    .locals 0

    .prologue
    .line 57
    sput-object p0, LiF;->a:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    .line 58
    return-void
.end method

.method static b()Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    sget-object v0, LiF;->q:Ljava/util/List;

    return-object v0
.end method

.method static c()I
    .locals 1

    .prologue
    .line 78
    sget v0, LiF;->b:I

    return v0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 154
    sget v0, LiF;->e:I

    return v0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 166
    sget v0, LiF;->f:I

    return v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 179
    sget v0, LiF;->g:I

    return v0
.end method

.method static g()Z
    .locals 1

    .prologue
    .line 191
    sget-boolean v0, LiF;->o:Z

    return v0
.end method

.method static h()I
    .locals 1

    .prologue
    .line 203
    sget v0, LiF;->p:I

    return v0
.end method

.method static i()I
    .locals 1

    .prologue
    .line 211
    sget v0, LiF;->h:I

    return v0
.end method

.method static j()I
    .locals 1

    .prologue
    .line 215
    sget v0, LiF;->i:I

    return v0
.end method

.method static k()I
    .locals 1

    .prologue
    .line 219
    sget v0, LiF;->j:I

    return v0
.end method

.method static l()I
    .locals 1

    .prologue
    .line 223
    sget v0, LiF;->k:I

    return v0
.end method

.method public static m()I
    .locals 1

    .prologue
    .line 231
    sget v0, LiF;->c:I

    return v0
.end method

.method public static n()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method
