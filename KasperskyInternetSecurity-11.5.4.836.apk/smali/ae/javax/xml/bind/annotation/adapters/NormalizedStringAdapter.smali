.class public final Lae/javax/xml/bind/annotation/adapters/NormalizedStringAdapter;
.super Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
.source "NormalizedStringAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    return-void
.end method

.method protected static isWhiteSpaceExceptSpace(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 102
    const/16 v1, 0x20

    if-lt p0, v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x9

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa

    if-eq p0, v1, :cond_2

    const/16 v1, 0xd

    if-ne p0, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic marshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/javax/xml/bind/annotation/adapters/NormalizedStringAdapter;->marshal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 91
    return-object p1
.end method

.method public bridge synthetic unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/javax/xml/bind/annotation/adapters/NormalizedStringAdapter;->unmarshal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    .line 61
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 82
    .end local p1    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 63
    .restart local p1    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    move v2, v1

    .line 66
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lae/javax/xml/bind/annotation/adapters/NormalizedStringAdapter;->isWhiteSpaceExceptSpace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 69
    :cond_2
    if-ltz v2, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 77
    .local v0, "buf":[C
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-char v4, v0, v2

    .line 78
    :goto_2
    if-ltz v1, :cond_4

    .line 79
    aget-char v3, v0, v1

    invoke-static {v3}, Lae/javax/xml/bind/annotation/adapters/NormalizedStringAdapter;->isWhiteSpaceExceptSpace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    aput-char v4, v0, v1

    .line 78
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/String;
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method
