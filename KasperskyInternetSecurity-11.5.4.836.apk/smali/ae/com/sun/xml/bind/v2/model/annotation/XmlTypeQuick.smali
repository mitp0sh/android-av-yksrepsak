.class final Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;
.super Lae/com/sun/xml/bind/v2/model/annotation/Quick;
.source "XmlTypeQuick.java"

# interfaces
.implements Lae/javax/xml/bind/annotation/XmlType;


# instance fields
.field private final core:Lae/javax/xml/bind/annotation/XmlType;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlType;)V
    .locals 0
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p2, "core"    # Lae/javax/xml/bind/annotation/XmlType;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/model/annotation/Quick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 58
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;->core:Lae/javax/xml/bind/annotation/XmlType;

    .line 59
    return-void
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lae/javax/xml/bind/annotation/XmlType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-class v0, Lae/javax/xml/bind/annotation/XmlType;

    return-object v0
.end method

.method public factoryClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;->core:Lae/javax/xml/bind/annotation/XmlType;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlType;->factoryClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public factoryMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;->core:Lae/javax/xml/bind/annotation/XmlType;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlType;->factoryMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;->core:Lae/javax/xml/bind/annotation/XmlType;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;->core:Lae/javax/xml/bind/annotation/XmlType;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;->core:Lae/javax/xml/bind/annotation/XmlType;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlType;->namespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Quick;
    .locals 1
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p2, "core"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 66
    new-instance v0, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;

    check-cast p2, Lae/javax/xml/bind/annotation/XmlType;

    .end local p2    # "core":Ljava/lang/annotation/Annotation;
    invoke-direct {v0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlType;)V

    return-object v0
.end method

.method public propOrder()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;->core:Lae/javax/xml/bind/annotation/XmlType;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlType;->propOrder()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
