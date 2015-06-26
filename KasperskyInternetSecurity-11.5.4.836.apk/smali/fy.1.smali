.class final Lfy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lfw;


# direct methods
.method constructor <init>(Lfw;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lfy;->a:Lfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lfy;->a:Lfw;

    invoke-static {v0}, Lfw;->a(Lfw;)Lfz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lfy;->a:Lfw;

    invoke-static {v0}, Lfw;->a(Lfw;)Lfz;

    move-result-object v0

    invoke-interface {v0}, Lfz;->c_()V

    .line 80
    :cond_0
    return-void
.end method
