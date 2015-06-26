.class public LbW;
.super LbS;
.source "SourceFile"


# instance fields
.field private a:LbN;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, LbS;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, LbW;->a:LbN;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, LbW;->b:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, LbS;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, LbW;->a:LbN;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, LbW;->b:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, LbW;->b:Z

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;)LbN;
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, LbW;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-virtual {p0}, LbW;->f()Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LbN;

    .line 98
    invoke-interface {v0}, LbN;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    return-object v0

    .line 102
    :cond_1
    monitor-exit v1

    .line 104
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(LbN;Z)V
    .locals 1

    .prologue
    .line 127
    instance-of v0, p0, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 128
    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method private b(LbN;)V
    .locals 1

    .prologue
    .line 108
    invoke-interface {p1}, LbN;->g()LbR;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, LbW;->d()Landroid/content/Context;

    invoke-interface {v0, p0}, LbR;->a(LbS;)V

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, LbW;->a(LbN;)V

    .line 113
    return-void
.end method

.method private g()LbN;
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, LbW;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_0
    invoke-virtual {p0}, LbW;->f()Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LbN;

    .line 88
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, LbW;->a:LbN;

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "selected_item_id"

    iget-object v1, p0, LbW;->a:LbN;

    invoke-interface {v1}, LbN;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public final a(LbN;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, LbW;->a:LbN;

    if-eq v0, p1, :cond_0

    .line 118
    iget-object v0, p0, LbW;->a:LbN;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LbW;->a(LbN;Z)V

    .line 119
    const/4 v0, 0x1

    invoke-static {p1, v0}, LbW;->a(LbN;Z)V

    .line 120
    iput-object p1, p0, LbW;->a:LbN;

    .line 122
    invoke-virtual {p0}, LbW;->notifyDataSetChanged()V

    .line 124
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string v0, "selected_item_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, v0}, LbW;->a(Ljava/lang/String;)LbN;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, v0}, LbW;->b(LbN;)V

    .line 68
    :cond_0
    iget-object v0, p0, LbW;->a:LbN;

    if-nez v0, :cond_1

    iget-boolean v0, p0, LbW;->b:Z

    if-eqz v0, :cond_1

    .line 69
    invoke-direct {p0}, LbW;->g()LbN;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    invoke-direct {p0, v0}, LbW;->b(LbN;)V

    .line 74
    :cond_1
    return-void
.end method
