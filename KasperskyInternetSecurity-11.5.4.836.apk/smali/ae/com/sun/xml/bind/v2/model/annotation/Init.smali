.class Lae/com/sun/xml/bind/v2/model/annotation/Init;
.super Ljava/lang/Object;
.source "Init.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAll()[Lae/com/sun/xml/bind/v2/model/annotation/Quick;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    const/16 v0, 0xc

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/annotation/Quick;

    const/4 v1, 0x0

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlAttributeQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlAttributeQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlAttribute;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlElement;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementDeclQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementDeclQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlElementDecl;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementRefQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementRefQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlElementRef;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementRefsQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlElementRefsQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlElementRefs;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlEnumQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlEnumQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlEnum;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlRootElementQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlRootElementQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlRootElement;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlSchema;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaTypeQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaTypeQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlSchemaType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlTransientQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlTransientQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlTransient;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlTypeQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lae/com/sun/xml/bind/v2/model/annotation/XmlValueQuick;

    invoke-direct {v2, v3, v3}, Lae/com/sun/xml/bind/v2/model/annotation/XmlValueQuick;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/javax/xml/bind/annotation/XmlValue;)V

    aput-object v2, v0, v1

    return-object v0
.end method
