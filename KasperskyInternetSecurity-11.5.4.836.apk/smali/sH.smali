.class final LsH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v4/app/Fragment;

.field private synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, LsH;->a:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, LsH;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LsH;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, LsH;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 31
    :cond_0
    return-void
.end method
