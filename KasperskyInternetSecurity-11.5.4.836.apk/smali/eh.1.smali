.class public abstract Leh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec;


# instance fields
.field private a:Len;

.field private b:Lef;

.field private c:Leb;

.field private d:Z

.field protected final f:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;


# direct methods
.method protected constructor <init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Leh;->f:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Leh;->d:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(I)V
    .locals 2

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Leh;->a:Len;

    iget-object v1, p0, Leh;->b:Lef;

    invoke-interface {v1, p1}, Lef;->a(I)Lee;

    move-result-object v1

    invoke-virtual {v0, v1}, Len;->a(Lee;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Leb;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Leh;->c:Leb;

    .line 76
    return-void
.end method

.method public final a(Lef;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Leh;->b:Lef;

    .line 106
    return-void
.end method

.method public final a(Len;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Leh;->a:Len;

    .line 96
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Leh;->d:Z

    .line 80
    return-void
.end method

.method public abstract c()Z
.end method

.method protected abstract d()Ljava/util/concurrent/atomic/AtomicBoolean;
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Leh;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Leh;->a(I)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Leh;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Leh;->a(I)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Leh;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {p0}, Leh;->a()V

    goto :goto_0

    .line 50
    :cond_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Leh;->a(I)V

    goto :goto_0
.end method

.method public final l()Leb;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Leh;->c:Leb;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, LdX;

    invoke-direct {v0}, LdX;-><init>()V

    iput-object v0, p0, Leh;->c:Leb;

    .line 71
    :cond_0
    iget-object v0, p0, Leh;->c:Leb;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Leh;->d:Z

    return v0
.end method

.method public final n()Len;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Leh;->a:Len;

    return-object v0
.end method

.method public final o()Lef;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Leh;->b:Lef;

    return-object v0
.end method

.method protected final p()V
    .locals 2

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Leh;->a:Len;

    iget-object v1, p0, Leh;->b:Lef;

    invoke-interface {v1}, Lef;->a()Lee;

    move-result-object v1

    invoke-virtual {v0, v1}, Len;->a(Lee;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final q()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 130
    invoke-virtual {p0}, Leh;->l()Leb;

    move-result-object v0

    invoke-interface {v0}, Leb;->a()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v1

    .line 132
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v1, v3}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v2, 0x7f070171

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {v1, v3, v0}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 137
    invoke-virtual {v1}, Lse;->g_()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {v1, v3, v0}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 141
    invoke-virtual {v1}, Lse;->g_()V

    goto :goto_0
.end method
