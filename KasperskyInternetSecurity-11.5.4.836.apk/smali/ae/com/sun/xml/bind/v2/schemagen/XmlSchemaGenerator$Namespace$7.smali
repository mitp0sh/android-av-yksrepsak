.class Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;
.super Lae/com/sun/xml/bind/v2/schemagen/Tree$Term;
.source "XmlSchemaGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->handleMapProp(Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

.field final synthetic val$mp:Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;)V
    .locals 0

    .prologue
    .line 1348
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.7;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;->val$mp:Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;

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
    .line 1350
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.7;"
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;->val$mp:Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;

    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 1352
    .local v1, "ename":Ljavax/xml/namespace/QName;
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;->element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v0

    .line 1353
    .local v0, "e":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;
    invoke-static {v4}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$1900(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/Form;->writeForm(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;Ljavax/xml/namespace/QName;)V

    .line 1354
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;->val$mp:Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;

    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;->isCollectionNillable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1355
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->nillable(Z)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;

    .line 1357
    :cond_0
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v0

    .line 1358
    invoke-virtual {p0, v0, p2, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;->writeOccurs(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;ZZ)V

    .line 1359
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->complexType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    move-result-object v2

    .line 1363
    .local v2, "p":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->sequence()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;

    move-result-object v4

    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;->element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v0

    .line 1364
    const-string v4, "entry"

    invoke-interface {v0, v4}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->minOccurs(I)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;

    move-result-object v4

    const-string v5, "unbounded"

    invoke-interface {v4, v5}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;->maxOccurs(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;

    .line 1366
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->complexType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    move-result-object v4

    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->sequence()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;

    move-result-object v3

    .line 1367
    .local v3, "seq":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    const-string v5, "key"

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;->val$mp:Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;

    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;->getKeyType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v6

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeKeyOrValue(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/core/NonElement;)V
    invoke-static {v4, v3, v5, v6}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$2300(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/core/NonElement;)V

    .line 1368
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    const-string v5, "value"

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;->val$mp:Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;

    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;->getValueType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v6

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeKeyOrValue(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/core/NonElement;)V
    invoke-static {v4, v3, v5, v6}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$2300(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/core/NonElement;)V

    .line 1369
    return-void
.end method
