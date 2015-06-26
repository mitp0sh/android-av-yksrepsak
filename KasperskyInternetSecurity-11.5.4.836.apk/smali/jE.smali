.class public final LjE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, LjE;->a:I

    .line 15
    iput p2, p0, LjE;->b:I

    .line 16
    return-void
.end method

.method public static a(II)LjE;
    .locals 1

    .prologue
    .line 19
    new-instance v0, LjE;

    invoke-direct {v0, p0, p1}, LjE;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LjE;->a:I

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 31
    iget v0, p0, LjE;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
