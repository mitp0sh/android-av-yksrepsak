.class public final LhP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, LhP;->a:I

    .line 9
    iput-boolean p2, p0, LhP;->b:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 14
    move-object v0, p1

    check-cast v0, LhP;

    iget v0, v0, LhP;->a:I

    iget v1, p0, LhP;->a:I

    if-ne v0, v1, :cond_0

    check-cast p1, LhP;

    iget-boolean v0, p1, LhP;->b:Z

    iget-boolean v1, p0, LhP;->b:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 20
    iget-boolean v0, p0, LhP;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LhP;->a:I

    add-int/2addr v0, v1

    .line 26
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
