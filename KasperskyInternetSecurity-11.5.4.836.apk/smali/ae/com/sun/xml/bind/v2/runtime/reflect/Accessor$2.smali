.class final Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$2;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "Accessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
        "<",
        "Lae/javax/xml/bind/JAXBElement;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 461
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public get(Lae/javax/xml/bind/JAXBElement;)Ljava/lang/Object;
    .locals 1
    .param p1, "jaxbElement"    # Lae/javax/xml/bind/JAXBElement;

    .prologue
    .line 463
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 461
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$2;->get(Lae/javax/xml/bind/JAXBElement;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lae/javax/xml/bind/JAXBElement;Ljava/lang/Object;)V
    .locals 0
    .param p1, "jaxbElement"    # Lae/javax/xml/bind/JAXBElement;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 467
    invoke-virtual {p1, p2}, Lae/javax/xml/bind/JAXBElement;->setValue(Ljava/lang/Object;)V

    .line 468
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 461
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$2;->set(Lae/javax/xml/bind/JAXBElement;Ljava/lang/Object;)V

    return-void
.end method
