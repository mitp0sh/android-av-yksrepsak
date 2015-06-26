.class final LsI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, LsI;->a:Landroid/app/Activity;

    iput-object p2, p0, LsI;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, LsI;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, LsI;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 57
    :cond_0
    return-void
.end method
