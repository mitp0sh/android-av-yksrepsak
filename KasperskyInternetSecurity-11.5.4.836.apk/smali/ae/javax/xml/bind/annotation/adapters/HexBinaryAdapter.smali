.class public final Lae/javax/xml/bind/annotation/adapters/HexBinaryAdapter;
.super Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
.source "HexBinaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    return-void
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
    .line 54
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/javax/xml/bind/annotation/adapters/HexBinaryAdapter;->marshal([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public marshal([B)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 61
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverter;->printHexBinary([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 54
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/javax/xml/bind/annotation/adapters/HexBinaryAdapter;->unmarshal(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Ljava/lang/String;)[B
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 56
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverter;->parseHexBinary(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method
