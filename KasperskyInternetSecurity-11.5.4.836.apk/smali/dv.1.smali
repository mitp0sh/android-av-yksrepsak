.class final Ldv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Ldu;


# direct methods
.method constructor <init>(Ldu;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Ldv;->b:Ldu;

    iput-object p2, p0, Ldv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Ldv;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    if-nez p3, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Ldv;->b:Ldu;

    iget-object v0, v0, Ldu;->a:Ldt;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ldt;->b(Ldt;Z)Z

    .line 89
    :cond_0
    iget-object v0, p0, Ldv;->b:Ldu;

    iget-object v0, v0, Ldu;->a:Ldt;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ldt;->a(Ldt;Z)Z

    .line 90
    iget-object v0, p0, Ldv;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
