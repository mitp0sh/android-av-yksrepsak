.class public LjD;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/kms/ActivityLifecycleEventType;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2, p3}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, LjD;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public final b()LjE;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kms/ActivityLifecycleEventType;->OnActivityResult:Lcom/kms/ActivityLifecycleEventType;

    invoke-virtual {p0, v0}, LjD;->a(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, LjD;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LjE;

    return-object v0
.end method
