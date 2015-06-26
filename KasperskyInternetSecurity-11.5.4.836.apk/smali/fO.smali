.class public final LfO;
.super LfN;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, LfN;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/kms/kmsshared/Utils;->f()I

    move-result v0

    .line 12
    if-nez v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method
