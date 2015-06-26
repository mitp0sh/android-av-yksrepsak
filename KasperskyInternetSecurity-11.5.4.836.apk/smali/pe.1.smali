.class public final Lpe;
.super LbK;
.source "SourceFile"

# interfaces
.implements Lpv;


# instance fields
.field private a:Z


# direct methods
.method protected constructor <init>(Lps;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    const-string v0, "default-issue"

    new-instance v1, Lpk;

    invoke-direct {v1, p1, v3}, Lpk;-><init>(Lps;B)V

    const v2, 0x7f030050

    invoke-direct {p0, v0, v1, v2, v3}, LbK;-><init>(Ljava/lang/String;Ljava/lang/Object;IZ)V

    .line 28
    iput-boolean v3, p0, Lpe;->a:Z

    .line 32
    return-void
.end method

.method private a(Landroid/view/View;ZLandroid/widget/ImageView;I)Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lpe;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpk;

    invoke-static {v0, p2}, Lpk;->a(Lpk;Z)Z

    .line 139
    new-instance v0, Lpm;

    invoke-direct {v0, p1, p2, p4}, Lpm;-><init>(Landroid/view/View;ZI)V

    .line 140
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lpm;->setDuration(J)V

    .line 141
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lpm;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 142
    new-instance v1, Lph;

    invoke-direct {v1, p0, p2, p3}, Lph;-><init>(Lpe;ZLandroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lpm;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 157
    return-object v0
.end method

.method static synthetic a(Lpe;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lpe;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lpk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lpk;->a(Lpk;)Lps;

    move-result-object v0

    invoke-interface {v0}, Lps;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lps;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    new-instance v0, Lpf;

    invoke-direct {v0, p0, p2}, Lpf;-><init>(Lpe;Lps;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private a(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lpe;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpk;

    invoke-static {v0}, Lpk;->b(Lpk;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, p1, v0, p2, v1}, Lpe;->a(Landroid/view/View;ZLandroid/widget/ImageView;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    invoke-virtual {p0}, Lpe;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpk;

    invoke-static {v0}, Lpk;->a(Lpk;)Lps;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Lps;)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, p1, v0, p2, v1}, Lpe;->a(Landroid/view/View;ZLandroid/widget/ImageView;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private static a(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method static synthetic a(Lpe;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lpe;->a(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lpe;ZLandroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p1, p2}, Lpe;->a(ZLandroid/widget/ImageView;)V

    return-void
.end method

.method private a(Lpk;Landroid/content/Context;LbX;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-static {p1}, Lpk;->a(Lpk;)Lps;

    move-result-object v7

    .line 48
    invoke-virtual {p3}, LbX;->b()Landroid/view/View;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v7}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/issues/IssueType;->getSeverity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 51
    const v0, 0x7f0b00ec

    invoke-virtual {p3, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    invoke-interface {v7}, Lps;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v1

    const-string v2, "Roboto-Light"

    invoke-virtual {v1, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    const v0, 0x7f0b00ea

    invoke-virtual {p3, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f0b00ed

    invoke-virtual {p3, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 59
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 60
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    const v0, 0x7f0b00eb

    invoke-virtual {p3, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v4

    .line 64
    invoke-static {p1}, Lpk;->a(Lpk;)Lps;

    move-result-object v0

    invoke-interface {v0}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/issues/IssueType;->canBeIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p2, v7, v2}, Lpe;->a(Landroid/content/Context;Lps;Landroid/widget/ImageView;)V

    .line 75
    :goto_0
    const v0, 0x7f0b00e9

    invoke-virtual {p3, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    invoke-interface {v7}, Lps;->l()I

    move-result v1

    .line 77
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 78
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :goto_1
    const v0, 0x7f0b00ee

    invoke-virtual {p3, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    iget-boolean v1, p0, Lpe;->a:Z

    if-eqz v1, :cond_3

    move v1, v6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 86
    return-void

    .line 67
    :cond_0
    invoke-interface {v7, p2}, Lps;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    invoke-static {v2}, Lpe;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    .line 71
    invoke-direct/range {v0 .. v5}, Lpe;->a(Lpk;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 85
    :cond_3
    const/16 v1, 0x8

    goto :goto_2
.end method

.method private a(Lpk;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-static {p1}, Lpk;->b(Lpk;)Z

    move-result v0

    invoke-static {v0, p2}, Lpe;->a(ZLandroid/widget/ImageView;)V

    .line 102
    invoke-static {p1}, Lpk;->b(Lpk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 108
    :goto_0
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    new-instance v0, Lpg;

    invoke-direct {v0, p0, p3, p2, p4}, Lpg;-><init>(Lpe;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void

    .line 105
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lpu;)V
    .locals 2

    .prologue
    .line 213
    sget-object v1, Lpj;->a:[I

    invoke-virtual {p1}, Lpu;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/issues/IssueEventType;

    invoke-virtual {v0}, Lcom/kms/issues/IssueEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 215
    :pswitch_0
    invoke-virtual {p1}, Lpu;->a()Lps;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lpe;->i()Lps;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lpe;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpk;

    invoke-static {v0, v1}, Lpk;->a(Lpk;Lps;)Lpk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(ZLandroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    if-nez p0, :cond_0

    .line 163
    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static b(Lpk;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lpk;->a(Lpk;)Lps;

    move-result-object v0

    invoke-interface {v0}, Lps;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lpk;

    invoke-static {p1}, Lpe;->b(Lpk;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lpk;

    invoke-static {p1}, Lpe;->a(Lpk;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpe;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "open-state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lpe;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpk;

    invoke-static {v0}, Lpk;->b(Lpk;)Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lpk;

    invoke-direct {p0, p1, p2, p3}, Lpe;->a(Lpk;Landroid/content/Context;LbX;)V

    return-void
.end method

.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lpu;

    invoke-direct {p0, p1}, Lpe;->a(Lpu;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lpe;->a:Z

    .line 227
    invoke-virtual {p0}, Lpe;->c()V

    .line 228
    return-void
.end method

.method public final b(Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 181
    .line 183
    if-eqz p1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpe;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "open-state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 185
    invoke-virtual {p0}, Lpe;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpk;

    invoke-static {v0}, Lpk;->b(Lpk;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 186
    invoke-virtual {p0}, Lpe;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpk;

    invoke-static {v0, v2}, Lpk;->a(Lpk;Z)Z

    .line 187
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final g()LbR;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lpi;

    invoke-direct {v0, p0}, Lpi;-><init>(Lpe;)V

    return-object v0
.end method

.method public final h()LbR;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Lps;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lpe;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpk;

    invoke-static {v0}, Lpk;->a(Lpk;)Lps;

    move-result-object v0

    return-object v0
.end method
