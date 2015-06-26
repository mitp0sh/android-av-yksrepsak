.class final Lpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:Landroid/view/animation/Animation$AnimationListener;

.field private synthetic b:Lpm;


# direct methods
.method private constructor <init>(Lpm;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lpn;->b:Lpm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lpm;B)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lpn;-><init>(Lpm;)V

    return-void
.end method

.method static synthetic a(Lpn;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lpn;->a:Landroid/view/animation/Animation$AnimationListener;

    return-object p1
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lpn;->b:Lpm;

    invoke-static {v0}, Lpm;->a(Lpm;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lpn;->b:Lpm;

    invoke-static {v0}, Lpm;->b(Lpm;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_0
    iget-object v0, p0, Lpn;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lpn;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 97
    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lpn;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lpn;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 104
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lpn;->b:Lpm;

    invoke-static {v0}, Lpm;->a(Lpm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lpn;->b:Lpm;

    invoke-static {v0}, Lpm;->b(Lpm;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lpn;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lpn;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 87
    :cond_1
    return-void
.end method
