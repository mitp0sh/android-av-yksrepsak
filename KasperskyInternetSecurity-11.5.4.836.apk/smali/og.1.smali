.class public abstract Log;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 13
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lsj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->getPasswordHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lsj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 17
    :cond_1
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->k(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
