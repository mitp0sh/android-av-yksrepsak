.class final Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$7;
.super Ljava/lang/Object;
.source "JAXBContextImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljavax/xml/namespace/QName;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1052
    check-cast p1, Ljavax/xml/namespace/QName;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljavax/xml/namespace/QName;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$7;->compare(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)I

    move-result v0

    return v0
.end method

.method public compare(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)I
    .locals 3
    .param p1, "lhs"    # Ljavax/xml/namespace/QName;
    .param p2, "rhs"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 1054
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1055
    .local v0, "r":I
    if-eqz v0, :cond_0

    .line 1057
    .end local v0    # "r":I
    :goto_0
    return v0

    .restart local v0    # "r":I
    :cond_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
