.class final Lae/com/sun/xml/bind/v2/model/annotation/XmlElementRefsQuick;
.super Lae/com/sun/xml/bind/v2/model/annotation/Quick;
.source "XmlElementRefsQuick.java"

# interfaces
.implements Lae/javax/xml/bind/annotation/XmlElementRefs;


# instance fields
.field private final core:Lae/javax/xml/bind/annotation/XmlElementRefs;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlElementRefs;)V
    .locals 0
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p2, "core"    # Lae/javax/xml/bind/annotation/XmlElementRefs;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/model/annotation/Quick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 59
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementRefsQuick;->core:Lae/javax/xml/bind/annotation/XmlElementRefs;

    .line 60
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
            "Lae/javax/xml/bind/annotation/XmlElementRefs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const-class v0, Lae/javax/xml/bind/annotation/XmlElementRefs;

    return-object v0
.end method

.method protected getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementRefsQuick;->core:Lae/javax/xml/bind/annotation/XmlElementRefs;

    return-object v0
.end method

.method protected newInstance(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Quick;
    .locals 1
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p2, "core"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 67
    new-instance v0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementRefsQuick;

    check-cast p2, Lae/javax/xml/bind/annotation/XmlElementRefs;

    .end local p2    # "core":Ljava/lang/annotation/Annotation;
    invoke-direct {v0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementRefsQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlElementRefs;)V

    return-object v0
.end method

.method public value()[Lae/javax/xml/bind/annotation/XmlElementRef;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementRefsQuick;->core:Lae/javax/xml/bind/annotation/XmlElementRefs;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlElementRefs;->value()[Lae/javax/xml/bind/annotation/XmlElementRef;

    move-result-object v0

    return-object v0
.end method
