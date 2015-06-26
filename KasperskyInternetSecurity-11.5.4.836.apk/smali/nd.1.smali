.class public abstract Lnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LsF;


# instance fields
.field private final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lnd;->a:Ljava/lang/Class;

    .line 18
    return-void
.end method

.method private b(Landroid/support/v4/app/Fragment;)Z
    .locals 2

    .prologue
    .line 22
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnd;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lnd;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/support/v4/app/Fragment;)Z
.end method

.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lnd;->b(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    return v0
.end method
