.class abstract enum Lae/com/sun/xml/bind/v2/schemagen/Form;
.super Ljava/lang/Enum;
.source "Form.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/schemagen/Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/schemagen/Form;

.field public static final enum QUALIFIED:Lae/com/sun/xml/bind/v2/schemagen/Form;

.field public static final enum UNQUALIFIED:Lae/com/sun/xml/bind/v2/schemagen/Form;

.field public static final enum UNSET:Lae/com/sun/xml/bind/v2/schemagen/Form;


# instance fields
.field public final isEffectivelyQualified:Z

.field private final xnf:Lae/javax/xml/bind/annotation/XmlNsForm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/Form$1;

    const-string v1, "QUALIFIED"

    sget-object v2, Lae/javax/xml/bind/annotation/XmlNsForm;->QUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

    invoke-direct {v0, v1, v3, v2, v4}, Lae/com/sun/xml/bind/v2/schemagen/Form$1;-><init>(Ljava/lang/String;ILae/javax/xml/bind/annotation/XmlNsForm;Z)V

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/Form;->QUALIFIED:Lae/com/sun/xml/bind/v2/schemagen/Form;

    .line 63
    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/Form$2;

    const-string v1, "UNQUALIFIED"

    sget-object v2, Lae/javax/xml/bind/annotation/XmlNsForm;->UNQUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

    invoke-direct {v0, v1, v4, v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/Form$2;-><init>(Ljava/lang/String;ILae/javax/xml/bind/annotation/XmlNsForm;Z)V

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/Form;->UNQUALIFIED:Lae/com/sun/xml/bind/v2/schemagen/Form;

    .line 70
    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/Form$3;

    const-string v1, "UNSET"

    sget-object v2, Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;

    invoke-direct {v0, v1, v5, v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/Form$3;-><init>(Ljava/lang/String;ILae/javax/xml/bind/annotation/XmlNsForm;Z)V

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/Form;->UNSET:Lae/com/sun/xml/bind/v2/schemagen/Form;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/schemagen/Form;

    sget-object v1, Lae/com/sun/xml/bind/v2/schemagen/Form;->QUALIFIED:Lae/com/sun/xml/bind/v2/schemagen/Form;

    aput-object v1, v0, v3

    sget-object v1, Lae/com/sun/xml/bind/v2/schemagen/Form;->UNQUALIFIED:Lae/com/sun/xml/bind/v2/schemagen/Form;

    aput-object v1, v0, v4

    sget-object v1, Lae/com/sun/xml/bind/v2/schemagen/Form;->UNSET:Lae/com/sun/xml/bind/v2/schemagen/Form;

    aput-object v1, v0, v5

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/Form;->$VALUES:[Lae/com/sun/xml/bind/v2/schemagen/Form;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILae/javax/xml/bind/annotation/XmlNsForm;Z)V
    .locals 0
    .param p3, "xnf"    # Lae/javax/xml/bind/annotation/XmlNsForm;
    .param p4, "effectivelyQualified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/annotation/XmlNsForm;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/schemagen/Form;->xnf:Lae/javax/xml/bind/annotation/XmlNsForm;

    .line 87
    iput-boolean p4, p0, Lae/com/sun/xml/bind/v2/schemagen/Form;->isEffectivelyQualified:Z

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILae/javax/xml/bind/annotation/XmlNsForm;ZLae/com/sun/xml/bind/v2/schemagen/Form$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lae/javax/xml/bind/annotation/XmlNsForm;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lae/com/sun/xml/bind/v2/schemagen/Form$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/schemagen/Form;-><init>(Ljava/lang/String;ILae/javax/xml/bind/annotation/XmlNsForm;Z)V

    return-void
.end method

.method private _writeForm(Lcom/sun/xml/txw2/TypedXmlWriter;Ljavax/xml/namespace/QName;)V
    .locals 3
    .param p1, "e"    # Lcom/sun/xml/txw2/TypedXmlWriter;
    .param p2, "tagName"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 108
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 110
    .local v0, "qualified":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lae/com/sun/xml/bind/v2/schemagen/Form;->QUALIFIED:Lae/com/sun/xml/bind/v2/schemagen/Form;

    if-eq p0, v1, :cond_2

    .line 111
    const-string v1, "form"

    const-string v2, "qualified"

    invoke-interface {p1, v1, v2}, Lcom/sun/xml/txw2/TypedXmlWriter;->_attribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_0
    :goto_1
    return-void

    .line 108
    .end local v0    # "qualified":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    .restart local v0    # "qualified":Z
    :cond_2
    if-nez v0, :cond_0

    sget-object v1, Lae/com/sun/xml/bind/v2/schemagen/Form;->QUALIFIED:Lae/com/sun/xml/bind/v2/schemagen/Form;

    if-ne p0, v1, :cond_0

    .line 114
    const-string v1, "form"

    const-string v2, "unqualified"

    invoke-interface {p1, v1, v2}, Lcom/sun/xml/txw2/TypedXmlWriter;->_attribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Lae/javax/xml/bind/annotation/XmlNsForm;)Lae/com/sun/xml/bind/v2/schemagen/Form;
    .locals 5
    .param p0, "xnf"    # Lae/javax/xml/bind/annotation/XmlNsForm;

    .prologue
    .line 121
    invoke-static {}, Lae/com/sun/xml/bind/v2/schemagen/Form;->values()[Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-result-object v0

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/schemagen/Form;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 122
    .local v3, "v":Lae/com/sun/xml/bind/v2/schemagen/Form;
    iget-object v4, v3, Lae/com/sun/xml/bind/v2/schemagen/Form;->xnf:Lae/javax/xml/bind/annotation/XmlNsForm;

    if-ne v4, p0, :cond_0

    .line 123
    return-object v3

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v3    # "v":Lae/com/sun/xml/bind/v2/schemagen/Form;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/Form;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lae/com/sun/xml/bind/v2/schemagen/Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/schemagen/Form;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/schemagen/Form;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/Form;->$VALUES:[Lae/com/sun/xml/bind/v2/schemagen/Form;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/schemagen/Form;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/schemagen/Form;

    return-object v0
.end method


# virtual methods
.method abstract declare(Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;)V
.end method

.method public writeForm(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "a"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;
    .param p2, "tagName"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/schemagen/Form;->_writeForm(Lcom/sun/xml/txw2/TypedXmlWriter;Ljavax/xml/namespace/QName;)V

    .line 105
    return-void
.end method

.method public writeForm(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "e"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    .param p2, "tagName"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/schemagen/Form;->_writeForm(Lcom/sun/xml/txw2/TypedXmlWriter;Ljavax/xml/namespace/QName;)V

    .line 101
    return-void
.end method
