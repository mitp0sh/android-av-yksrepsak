.class public abstract Lae/javax/xml/bind/JAXBIntrospector;
.super Ljava/lang/Object;
.source "JAXBIntrospector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "jaxbElement"    # Ljava/lang/Object;

    .prologue
    .line 99
    instance-of v0, p0, Lae/javax/xml/bind/JAXBElement;

    if-eqz v0, :cond_0

    .line 100
    check-cast p0, Lae/javax/xml/bind/JAXBElement;

    .end local p0    # "jaxbElement":Ljava/lang/Object;
    invoke-virtual {p0}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 104
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract getElementName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
.end method

.method public abstract isElement(Ljava/lang/Object;)Z
.end method
