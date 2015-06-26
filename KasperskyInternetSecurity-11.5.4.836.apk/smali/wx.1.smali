.class public final Lwx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lww;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->d()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 15
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v1

    invoke-virtual {v1}, Lsx;->f()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsx;->a(I)V

    .line 22
    invoke-virtual {v0}, Lsx;->g_()V

    .line 23
    return-void
.end method
