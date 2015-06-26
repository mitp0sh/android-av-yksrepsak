.class Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;
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

.field final synthetic val$choice:Lae/com/sun/xml/bind/v2/schemagen/Tree;

.field final synthetic val$ename:Ljavax/xml/namespace/QName;

.field final synthetic val$ep:Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;Lae/com/sun/xml/bind/v2/schemagen/Tree;)V
    .locals 0

    .prologue
    .line 1124
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.3;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$ename:Ljavax/xml/namespace/QName;

    iput-object p3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$ep:Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    iput-object p4, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$choice:Lae/com/sun/xml/bind/v2/schemagen/Tree;

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Term;-><init>()V

    return-void
.end method


# virtual methods
.method protected write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V
    .locals 5
    .param p1, "parent"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;
    .param p2, "isOptional"    # Z
    .param p3, "repeated"    # Z

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.3;"
    const/4 v2, 0x1

    .line 1126
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;->element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v0

    .line 1127
    .local v0, "e":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$ename:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1128
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$ename:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iget-object v4, v4, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1131
    new-instance v2, Ljavax/xml/namespace/QName;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$ename:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$ename:Ljavax/xml/namespace/QName;

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->ref(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    .line 1145
    :goto_0
    return-void

    .line 1135
    :cond_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$ename:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    .line 1136
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$1900(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-result-object v3

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$ename:Ljavax/xml/namespace/QName;

    invoke-virtual {v3, v0, v4}, Lae/com/sun/xml/bind/v2/schemagen/Form;->writeForm(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;Ljavax/xml/namespace/QName;)V

    .line 1138
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$ep:Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->isCollectionNillable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1139
    invoke-interface {v0, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->nillable(Z)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;

    .line 1141
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$ep:Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->isCollectionRequired()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v2, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->writeOccurs(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;ZZ)V

    .line 1143
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->complexType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    move-result-object v1

    .line 1144
    .local v1, "p":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;->val$choice:Lae/com/sun/xml/bind/v2/schemagen/Tree;

    invoke-virtual {v2, v1}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeDefParticle;)V

    goto :goto_0

    .line 1141
    .end local v1    # "p":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
