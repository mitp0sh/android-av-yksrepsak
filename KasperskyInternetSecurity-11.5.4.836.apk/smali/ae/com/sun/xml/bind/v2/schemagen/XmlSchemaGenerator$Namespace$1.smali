.class Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;
.super Lae/com/sun/xml/bind/v2/schemagen/Tree$Term;
.source "XmlSchemaGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->handleElementProp(Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

.field final synthetic val$ep:Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;)V
    .locals 0

    .prologue
    .line 1052
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;->val$ep:Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Term;-><init>()V

    return-void
.end method


# virtual methods
.method protected write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V
    .locals 7
    .param p1, "parent"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;
    .param p2, "isOptional"    # Z
    .param p3, "repeated"    # Z

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.1;"
    const/4 v4, 0x0

    .line 1054
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;->val$ep:Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    .line 1055
    .local v2, "t":Lae/com/sun/xml/bind/v2/model/core/TypeRef;, "Lae/com/sun/xml/bind/v2/model/core/TypeRef<TT;TC;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;->element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v0

    .line 1056
    .local v0, "e":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->block()V

    .line 1057
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v3

    .line 1058
    .local v3, "tn":Ljavax/xml/namespace/QName;
    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    .line 1059
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->simpleType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;

    move-result-object v5

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;->list()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/List;

    move-result-object v1

    .line 1060
    .local v1, "lst":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/List;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    const-string v6, "itemType"

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;Ljava/lang/String;)V
    invoke-static {v5, v1, v2, v6}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$1800(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;Ljava/lang/String;)V

    .line 1061
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;
    invoke-static {v5}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$1900(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lae/com/sun/xml/bind/v2/schemagen/Form;->writeForm(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;Ljavax/xml/namespace/QName;)V

    .line 1062
    if-nez p2, :cond_0

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;->val$ep:Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->isRequired()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    invoke-virtual {p0, v0, v4, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;->writeOccurs(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;ZZ)V

    .line 1063
    return-void
.end method
