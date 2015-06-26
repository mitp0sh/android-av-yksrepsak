.class final Lnx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lnv;


# direct methods
.method constructor <init>(Lnv;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lnx;->a:Lnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 73
    const-class v1, Lsj;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v2, p0, Lnx;->a:Lnv;

    invoke-static {v2}, Lnv;->a(Lnv;)I

    move-result v2

    if-nez v2, :cond_0

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lsj;->k(Z)V

    .line 79
    :goto_0
    invoke-virtual {v0}, Lsj;->g_()V

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v0, p0, Lnx;->a:Lnv;

    invoke-static {v0}, Lnv;->b(Lnv;)Lnz;

    move-result-object v0

    iget-object v1, p0, Lnx;->a:Lnv;

    invoke-static {v1}, Lnv;->a(Lnv;)I

    move-result v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lnz;->a(II)V

    .line 82
    return-void

    .line 77
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lsj;->j(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
