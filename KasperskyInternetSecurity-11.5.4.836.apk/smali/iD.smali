.class public LiD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lix;


# static fields
.field private static final a:Z

.field private static volatile b:LiD;


# instance fields
.field private c:Landroid/app/Activity;

.field private d:LiG;

.field private e:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

.field private f:Z

.field private g:Landroid/os/Vibrator;

.field private h:I

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/List;

.field private k:I

.field private l:LiE;

.field private m:Z

.field private n:Z

.field private o:F

.field private p:I

.field private q:I

.field private r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LiD;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, LiD;->f:Z

    .line 36
    iput v1, p0, LiD;->h:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LiD;->i:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LiD;->j:Ljava/util/List;

    .line 40
    iput v1, p0, LiD;->k:I

    .line 44
    iput-boolean v1, p0, LiD;->m:Z

    .line 45
    iput-boolean v1, p0, LiD;->n:Z

    .line 48
    iput v1, p0, LiD;->p:I

    .line 49
    iput v1, p0, LiD;->q:I

    .line 65
    return-void
.end method

.method public static a()LiD;
    .locals 2

    .prologue
    .line 54
    sget-object v0, LiD;->b:LiD;

    if-nez v0, :cond_1

    .line 55
    const-class v1, LiD;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, LiD;->b:LiD;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, LiD;

    invoke-direct {v0}, LiD;-><init>()V

    sput-object v0, LiD;->b:LiD;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, LiD;->b:LiD;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(III)Lir;
    .locals 6

    .prologue
    .line 154
    sget-boolean v0, LiD;->a:Z

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lir;

    iget-object v1, p0, LiD;->c:Landroid/app/Activity;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lir;-><init>(Landroid/content/Context;IIII)V

    .line 161
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lir;

    iget-object v1, p0, LiD;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lir;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private d(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, LiD;->e:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    sget-object v1, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->Unchanged:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    if-ne v0, v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, LiD;->d:LiG;

    invoke-virtual {v0}, LiG;->b()I

    move-result v0

    iput v0, p0, LiD;->p:I

    .line 207
    iget-object v0, p0, LiD;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 209
    iget-object v1, p0, LiD;->e:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    sget-object v2, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustResize:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    if-ne v1, v2, :cond_2

    .line 211
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 212
    iget-object v2, p0, LiD;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 213
    iget v2, p0, LiD;->p:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 214
    const/16 v0, 0x30

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 215
    iget-object v0, p0, LiD;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v1, p0, LiD;->e:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    sget-object v2, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustPan:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    if-ne v1, v2, :cond_0

    .line 219
    invoke-static {}, LiF;->c()I

    move-result v1

    .line 220
    iget v2, p0, LiD;->p:I

    add-int/2addr v2, p1

    sub-int v0, v2, v0

    add-int/2addr v1, v0

    .line 222
    if-lez v1, :cond_0

    .line 223
    iget-object v0, p0, LiD;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 225
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 226
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LiD;->r:Landroid/view/View;

    .line 232
    iget-object v0, p0, LiD;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, LiD;->o:F

    .line 233
    iget-object v0, p0, LiD;->r:Landroid/view/View;

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 121
    iget-object v0, p0, LiD;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    iget-object v0, p0, LiD;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    invoke-static {}, LiF;->b()Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No available keyboard layouts. At least one keyboard must be specified. Call Settings.addKeyboardLayout()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v1, p0, LiD;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 132
    iget-object v2, p0, LiD;->d:LiG;

    invoke-virtual {v2}, LiG;->a()Lcom/kavsdk/secureinput/widget/KeyboardView;

    move-result-object v2

    .line 134
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 135
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v2}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liu;

    .line 138
    iget-object v4, p0, LiD;->i:Ljava/util/List;

    invoke-virtual {v0}, Liu;->a()I

    move-result v5

    invoke-direct {p0, v5, v3, v1}, LiD;->a(III)Lir;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v0}, Liu;->b()I

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    iget-object v4, p0, LiD;->j:Ljava/util/List;

    invoke-virtual {v0}, Liu;->b()I

    move-result v0

    invoke-direct {p0, v0, v3, v1}, LiD;->a(III)Lir;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, LiD;->j:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_2
    iput-boolean v6, p0, LiD;->n:Z

    .line 149
    iput v6, p0, LiD;->k:I

    .line 150
    return-void
.end method

.method private e(I)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, LiD;->l:LiE;

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, LiD;->l:LiE;

    invoke-interface {v0, p1}, LiE;->a(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, LiD;->e:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    sget-object v1, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->Unchanged:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    if-ne v0, v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, LiD;->e:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    sget-object v1, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustResize:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    if-ne v0, v1, :cond_2

    .line 248
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 249
    iget-object v1, p0, LiD;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 250
    iget-object v1, p0, LiD;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 251
    iget-object v1, p0, LiD;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, LiD;->e:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    sget-object v1, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustPan:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, LiD;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, LiD;->r:Landroid/view/View;

    iget v1, p0, LiD;->o:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, LiD;->r:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 282
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 284
    iget-boolean v0, p0, LiD;->f:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, LiD;->g:Landroid/os/Vibrator;

    iget v1, p0, LiD;->h:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 287
    :cond_0
    return-void
.end method

.method public final a(I[I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x5

    const/4 v1, 0x0

    .line 304
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 306
    const/4 v2, -0x2

    if-ne p1, v2, :cond_1

    .line 308
    iget v0, p0, LiD;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, LiD;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    iput v0, p0, LiD;->k:I

    .line 309
    iput-boolean v1, p0, LiD;->n:Z

    .line 311
    iget-object v1, p0, LiD;->d:LiG;

    iget-object v0, p0, LiD;->i:Ljava/util/List;

    iget v2, p0, LiD;->k:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir;

    invoke-virtual {v1, v0}, LiG;->a(Lir;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 318
    iget-boolean v2, p0, LiD;->n:Z

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v0, p0, LiD;->n:Z

    .line 320
    iget-boolean v0, p0, LiD;->n:Z

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, LiD;->j:Ljava/util/List;

    iget v1, p0, LiD;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir;

    .line 323
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, LiD;->d:LiG;

    invoke-virtual {v1, v0}, LiG;->a(Lir;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 318
    goto :goto_1

    .line 328
    :cond_3
    iget-object v1, p0, LiD;->d:LiG;

    iget-object v0, p0, LiD;->i:Ljava/util/List;

    iget v2, p0, LiD;->k:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir;

    invoke-virtual {v1, v0}, LiG;->a(Lir;)V

    goto :goto_0

    .line 334
    :cond_4
    const/4 v0, -0x3

    if-ne p1, v0, :cond_5

    .line 335
    invoke-virtual {p0}, LiD;->b()V

    goto :goto_0

    .line 339
    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 340
    const/4 v0, -0x4

    invoke-direct {p0, v0}, LiD;->e(I)V

    goto :goto_0

    .line 342
    :cond_6
    if-ne p1, v4, :cond_7

    .line 343
    invoke-direct {p0, v4}, LiD;->e(I)V

    goto :goto_0

    .line 346
    :cond_7
    invoke-direct {p0, p1}, LiD;->e(I)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, LiD;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, LiD;->c:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-boolean v0, p0, LiD;->m:Z

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0}, LiD;->c()V

    .line 78
    :cond_1
    iput-object p1, p0, LiD;->c:Landroid/app/Activity;

    .line 80
    invoke-static {}, LiF;->g()Z

    move-result v0

    iput-boolean v0, p0, LiD;->f:Z

    .line 81
    iget-boolean v0, p0, LiD;->f:Z

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, LiF;->h()I

    move-result v0

    iput v0, p0, LiD;->h:I

    .line 83
    iget-object v0, p0, LiD;->c:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, LiD;->g:Landroid/os/Vibrator;

    .line 86
    :cond_2
    iget v0, p0, LiD;->q:I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const v2, 0x1030054

    const v3, 0x103007f

    const v4, 0x103013e

    invoke-static {v0, v1, v2, v3, v4}, LiV;->a(IIIII)I

    move-result v0

    iput v0, p0, LiD;->q:I

    .line 92
    new-instance v0, LiG;

    iget v1, p0, LiD;->q:I

    new-instance v2, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v2}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    invoke-direct {v0, p1, v1, v2}, LiG;-><init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v0, p0, LiD;->d:LiG;

    .line 94
    sget-boolean v0, LiD;->a:Z

    if-eqz v0, :cond_3

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, LiF;->a(I)V

    .line 106
    invoke-static {}, LiF;->a()Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    move-result-object v0

    sget-object v1, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustPan:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    if-ne v0, v1, :cond_3

    .line 107
    sget-object v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustResize:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    invoke-static {v0}, LiF;->a(Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;)V

    .line 111
    :cond_3
    invoke-static {}, LiF;->a()Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    move-result-object v0

    iput-object v0, p0, LiD;->e:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    .line 113
    invoke-direct {p0}, LiD;->e()V

    .line 115
    iget-object v0, p0, LiD;->d:LiG;

    invoke-virtual {v0, p0}, LiG;->a(Lix;)V

    .line 116
    iget-object v1, p0, LiD;->d:LiG;

    iget-object v0, p0, LiD;->i:Ljava/util/List;

    iget v2, p0, LiD;->k:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir;

    invoke-virtual {v1, v0}, LiG;->a(Lir;)V

    goto :goto_0
.end method

.method public final a(LiE;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, LiD;->l:LiE;

    .line 278
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 352
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 353
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, LiD;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reference to activity can\'t be null. Did you call prepareFor()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-boolean v0, p0, LiD;->m:Z

    if-nez v0, :cond_1

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-direct {p0}, LiD;->f()V

    .line 195
    iget-object v0, p0, LiD;->d:LiG;

    invoke-virtual {v0}, LiG;->hide()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, LiD;->m:Z

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 292
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, LiD;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, LiD;->b()V

    .line 266
    iget-object v0, p0, LiD;->d:LiG;

    invoke-virtual {v0}, LiG;->dismiss()V

    .line 267
    iput-object v1, p0, LiD;->d:LiG;

    .line 268
    iput-object v1, p0, LiD;->c:Landroid/app/Activity;

    .line 270
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, LiD;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reference to activity can\'t be null. Did you call prepareFor()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-boolean v0, p0, LiD;->m:Z

    if-eqz v0, :cond_1

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-direct {p0, p1}, LiD;->d(I)V

    .line 178
    iget-object v0, p0, LiD;->d:LiG;

    invoke-virtual {v0}, LiG;->show()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, LiD;->m:Z

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, LiD;->m:Z

    return v0
.end method
