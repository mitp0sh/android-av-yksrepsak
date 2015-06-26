.class public Lcom/amazonaws/services/simpleemail/model/DeleteIdentityResult;
.super Ljava/lang/Object;
.source "DeleteIdentityResult.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_0

    .line 57
    :goto_0
    return v1

    .line 52
    :cond_0
    if-nez p1, :cond_1

    move v1, v2

    goto :goto_0

    .line 54
    :cond_1
    instance-of v3, p1, Lcom/amazonaws/services/simpleemail/model/DeleteIdentityResult;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/DeleteIdentityResult;

    .line 57
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/DeleteIdentityResult;
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 43
    const/16 v1, 0x1f

    .line 44
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 46
    .local v0, "hashCode":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
