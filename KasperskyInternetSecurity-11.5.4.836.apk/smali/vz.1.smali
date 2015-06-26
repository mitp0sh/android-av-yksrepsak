.class public final Lvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LvA;


# instance fields
.field private a:Lte;


# direct methods
.method public constructor <init>(Lte;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lvz;->a:Lte;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/os/Handler;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lvz;->a:Lte;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lvz;->a:Lte;

    invoke-virtual {v0}, Lte;->a()V

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final b(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
