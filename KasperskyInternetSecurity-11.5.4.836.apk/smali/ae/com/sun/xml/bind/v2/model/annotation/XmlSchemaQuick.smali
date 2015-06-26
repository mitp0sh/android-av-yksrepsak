.class final Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;
.super Lae/com/sun/xml/bind/v2/model/annotation/Quick;
.source "XmlSchemaQuick.java"

# interfaces
.implements Lae/javax/xml/bind/annotation/XmlSchema;


# instance fields
.field private final core:Lae/javax/xml/bind/annotation/XmlSchema;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlSchema;)V
    .locals 0
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p2, "core"    # Lae/javax/xml/bind/annotation/XmlSchema;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/model/annotation/Quick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 60
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;->core:Lae/javax/xml/bind/annotation/XmlSchema;

    .line 61
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
            "Lae/javax/xml/bind/annotation/XmlSchema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v0, Lae/javax/xml/bind/annotation/XmlSchema;

    return-object v0
.end method

.method public attributeFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;->core:Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlSchema;->attributeFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;

    move-result-object v0

    return-object v0
.end method

.method public elementFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;->core:Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlSchema;->elementFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;

    move-result-object v0

    return-object v0
.end method

.method protected getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;->core:Lae/javax/xml/bind/annotation/XmlSchema;

    return-object v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;->core:Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlSchema;->location()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;->core:Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlSchema;->namespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Quick;
    .locals 1
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p2, "core"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 68
    new-instance v0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;

    check-cast p2, Lae/javax/xml/bind/annotation/XmlSchema;

    .end local p2    # "core":Ljava/lang/annotation/Annotation;
    invoke-direct {v0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlSchema;)V

    return-object v0
.end method

.method public xmlns()[Lae/javax/xml/bind/annotation/XmlNs;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;->core:Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlSchema;->xmlns()[Lae/javax/xml/bind/annotation/XmlNs;

    move-result-object v0

    return-object v0
.end method
