.class final Lul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lul;->a:Landroid/content/Context;

    iput-object p2, p0, Lul;->b:Ljava/lang/String;

    iput-object p3, p0, Lul;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 202
    const-class v1, Lub;

    monitor-enter v1

    .line 203
    :try_start_0
    new-instance v0, Lub;

    iget-object v2, p0, Lul;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lub;-><init>(Landroid/content/Context;)V

    .line 204
    iget-object v2, p0, Lul;->b:Ljava/lang/String;

    iget-object v3, p0, Lul;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lub;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Lub;->a()V

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
