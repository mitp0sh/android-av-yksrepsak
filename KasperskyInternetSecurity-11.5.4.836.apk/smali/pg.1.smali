.class final Lpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/FrameLayout;

.field private synthetic b:Landroid/widget/ImageView;

.field private synthetic c:Landroid/view/View;

.field private synthetic d:Lpe;


# direct methods
.method constructor <init>(Lpe;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lpg;->d:Lpe;

    iput-object p2, p0, Lpg;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lpg;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lpg;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lpg;->d:Lpe;

    iget-object v1, p0, Lpg;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lpg;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lpg;->c:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lpe;->a(Lpe;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V

    .line 113
    return-void
.end method
