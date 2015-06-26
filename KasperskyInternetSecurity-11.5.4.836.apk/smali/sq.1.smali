.class public abstract Lsq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lsq;->a:I

    .line 12
    iput v0, p0, Lsq;->b:I

    .line 15
    iput p1, p0, Lsq;->a:I

    .line 16
    iput p2, p0, Lsq;->b:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lsq;->a:I

    return v0
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract b(II)LbK;
.end method

.method public final b(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 28
    iget v0, p0, Lsq;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 29
    invoke-virtual {p0, p1, p2}, Lsq;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 31
    :cond_0
    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {p0, p1, p2}, Lsq;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    iget v1, p0, Lsq;->b:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    iget v0, p0, Lsq;->b:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_2
    iget v0, p0, Lsq;->b:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
