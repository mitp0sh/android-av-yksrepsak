.class public final Lae/com/sun/xml/bind/v2/runtime/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lae/com/sun/xml/bind/v2/runtime/Name;",
        ">;"
    }
.end annotation


# instance fields
.field public final isAttribute:Z

.field public final localName:Ljava/lang/String;

.field public final localNameIndex:S

.field public final nsUri:Ljava/lang/String;

.field public final nsUriIndex:S

.field public final qNameIndex:S


# direct methods
.method constructor <init>(IILjava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "qNameIndex"    # I
    .param p2, "nsUriIndex"    # I
    .param p3, "nsUri"    # Ljava/lang/String;
    .param p4, "localIndex"    # I
    .param p5, "localName"    # Ljava/lang/String;
    .param p6, "isAttribute"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    int-to-short v0, p1

    iput-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->qNameIndex:S

    .line 86
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    .line 88
    int-to-short v0, p2

    iput-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUriIndex:S

    .line 89
    int-to-short v0, p4

    iput-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->localNameIndex:S

    .line 90
    iput-boolean p6, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->isAttribute:Z

    .line 91
    return-void
.end method


# virtual methods
.method public compareTo(Lae/com/sun/xml/bind/v2/runtime/Name;)I
    .locals 3
    .param p1, "that"    # Lae/com/sun/xml/bind/v2/runtime/Name;

    .prologue
    .line 109
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "r":I
    if-eqz v0, :cond_0

    .line 111
    .end local v0    # "r":I
    :goto_0
    return v0

    .restart local v0    # "r":I
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/Name;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/Name;->compareTo(Lae/com/sun/xml/bind/v2/runtime/Name;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toQName()Ljavax/xml/namespace/QName;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
