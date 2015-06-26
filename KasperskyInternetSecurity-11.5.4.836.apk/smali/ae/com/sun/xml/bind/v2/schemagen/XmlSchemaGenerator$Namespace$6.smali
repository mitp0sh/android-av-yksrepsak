.class Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;
.super Lae/com/sun/xml/bind/v2/schemagen/Tree$Term;
.source "XmlSchemaGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->handleReferenceProp(Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

.field final synthetic val$choice:Lae/com/sun/xml/bind/v2/schemagen/Tree;

.field final synthetic val$ename:Ljavax/xml/namespace/QName;

.field final synthetic val$rp:Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;Lae/com/sun/xml/bind/v2/schemagen/Tree;)V
    .locals 0

    .prologue
    .line 1324
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.6;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;->val$ename:Ljavax/xml/namespace/QName;

    iput-object p3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;->val$rp:Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;

    iput-object p4, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;->val$choice:Lae/com/sun/xml/bind/v2/schemagen/Tree;

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
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.6;"
    const/4 v4, 0x1

    .line 1326
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;->element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;->val$ename:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v0

    .line 1327
    .local v0, "e":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;
    invoke-static {v2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$1900(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;->val$ename:Ljavax/xml/namespace/QName;

    invoke-virtual {v2, v0, v3}, Lae/com/sun/xml/bind/v2/schemagen/Form;->writeForm(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;Ljavax/xml/namespace/QName;)V

    .line 1328
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;->val$rp:Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;->isCollectionNillable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1329
    invoke-interface {v0, v4}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->nillable(Z)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;

    .line 1330
    :cond_0
    invoke-virtual {p0, v0, v4, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;->writeOccurs(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;ZZ)V

    .line 1332
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->complexType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    move-result-object v1

    .line 1333
    .local v1, "p":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;->val$choice:Lae/com/sun/xml/bind/v2/schemagen/Tree;

    invoke-virtual {v2, v1}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeDefParticle;)V

    .line 1334
    return-void
.end method
