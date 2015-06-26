.class final Lcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcg;


# direct methods
.method private constructor <init>(Lcg;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcj;->a:Lcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcg;B)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcj;-><init>(Lcg;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcj;->a:Lcg;

    invoke-virtual {v0}, Lcg;->c()V

    .line 262
    iget-object v0, p0, Lcj;->a:Lcg;

    invoke-static {v0}, Lcg;->b(Lcg;)LbY;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LbY;->a(Z)V

    .line 263
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method
