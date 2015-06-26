.class public final Lae/com/sun/xml/bind/v2/schemagen/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 138
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 139
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 122
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    .line 123
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static escapeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 65
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const-string v3, "%20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getParentUriPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uriPath"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 83
    .local v0, "idx":I
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static normalizeUriPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uriPath"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    .end local p0    # "uriPath":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 109
    .restart local p0    # "uriPath":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 110
    .local v0, "idx":I
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
