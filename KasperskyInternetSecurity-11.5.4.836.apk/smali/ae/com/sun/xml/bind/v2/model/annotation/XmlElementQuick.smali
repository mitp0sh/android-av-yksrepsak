.class final Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;
.super Lae/com/sun/xml/bind/v2/model/annotation/Quick;
.source "XmlElementQuick.java"

# interfaces
.implements Lae/javax/xml/bind/annotation/XmlElement;


# instance fields
.field private final core:Lae/javax/xml/bind/annotation/XmlElement;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlElement;)V
    .locals 0
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p2, "core"    # Lae/javax/xml/bind/annotation/XmlElement;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/model/annotation/Quick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 58
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;->core:Lae/javax/xml/bind/annotation/XmlElement;

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
            "Lae/javax/xml/bind/annotation/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-class v0, Lae/javax/xml/bind/annotation/XmlElement;

    return-object v0
.end method

.method public defaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;->core:Lae/javax/xml/bind/annotation/XmlElement;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlElement;->defaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;->core:Lae/javax/xml/bind/annotation/XmlElement;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;->core:Lae/javax/xml/bind/annotation/XmlElement;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlElement;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;->core:Lae/javax/xml/bind/annotation/XmlElement;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlElement;->namespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Quick;
    .locals 1
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p2, "core"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 66
    new-instance v0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;

    check-cast p2, Lae/javax/xml/bind/annotation/XmlElement;

    .end local p2    # "core":Ljava/lang/annotation/Annotation;
    invoke-direct {v0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlElement;)V

    return-object v0
.end method

.method public nillable()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;->core:Lae/javax/xml/bind/annotation/XmlElement;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlElement;->nillable()Z

    move-result v0

    return v0
.end method

.method public required()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;->core:Lae/javax/xml/bind/annotation/XmlElement;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlElement;->required()Z

    move-result v0

    return v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;->core:Lae/javax/xml/bind/annotation/XmlElement;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method