.class final Lph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Landroid/widget/ImageView;

.field private synthetic c:Lpe;


# direct methods
.method constructor <init>(Lpe;ZLandroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lph;->c:Lpe;

    iput-boolean p2, p0, Lph;->a:Z

    iput-object p3, p0, Lph;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lph;->c:Lpe;

    iget-boolean v1, p0, Lph;->a:Z

    iget-object v2, p0, Lph;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lpe;->a(Lpe;ZLandroid/widget/ImageView;)V

    .line 150
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method
