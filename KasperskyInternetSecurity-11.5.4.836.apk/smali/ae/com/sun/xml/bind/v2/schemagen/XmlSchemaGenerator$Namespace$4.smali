.class Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;
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

.field final synthetic val$e:Lae/com/sun/xml/bind/v2/model/core/Element;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/Element;)V
    .locals 0

    .prologue
    .line 1264
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.4;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->val$e:Lae/com/sun/xml/bind/v2/model/core/Element;

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Term;-><init>()V

    return-void
.end method


# virtual methods
.method protected write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V
    .locals 8
    .param p1, "parent"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;
    .param p2, "isOptional"    # Z
    .param p3, "repeated"    # Z

    .prologue
    .line 1266
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.4;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;->element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v1

    .line 1268
    .local v1, "eref":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    const/4 v2, 0x0

    .line 1270
    .local v2, "local":Z
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->val$e:Lae/com/sun/xml/bind/v2/model/core/Element;

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/Element;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 1271
    .local v0, "en":Ljavax/xml/namespace/QName;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->val$e:Lae/com/sun/xml/bind/v2/model/core/Element;

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/Element;->getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1273
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iget-object v6, v6, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1274
    .local v3, "qualified":Z
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1275
    .local v4, "unqualified":Z
    if-nez v3, :cond_0

    if-eqz v4, :cond_2

    .line 1279
    :cond_0
    if-eqz v4, :cond_4

    .line 1280
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;
    invoke-static {v5}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$1900(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-result-object v5

    iget-boolean v5, v5, Lae/com/sun/xml/bind/v2/schemagen/Form;->isEffectivelyQualified:Z

    if-eqz v5, :cond_1

    .line 1281
    const-string v5, "unqualified"

    invoke-interface {v1, v5}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->form(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    .line 1287
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1288
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    .line 1291
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->val$e:Lae/com/sun/xml/bind/v2/model/core/Element;

    instance-of v5, v5, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    if-eqz v5, :cond_5

    .line 1292
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->val$e:Lae/com/sun/xml/bind/v2/model/core/Element;

    check-cast v5, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    const-string v7, "type"

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V
    invoke-static {v6, v1, v5, v7}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$2100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V

    .line 1298
    .end local v3    # "qualified":Z
    .end local v4    # "unqualified":Z
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1299
    invoke-interface {v1, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->ref(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    .line 1300
    :cond_3
    invoke-virtual {p0, v1, p2, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->writeOccurs(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;ZZ)V

    .line 1301
    return-void

    .line 1283
    .restart local v3    # "qualified":Z
    .restart local v4    # "unqualified":Z
    :cond_4
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;
    invoke-static {v5}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$1900(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-result-object v5

    iget-boolean v5, v5, Lae/com/sun/xml/bind/v2/schemagen/Form;->isEffectivelyQualified:Z

    if-nez v5, :cond_1

    .line 1284
    const-string v5, "qualified"

    invoke-interface {v1, v5}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->form(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    goto :goto_0

    .line 1294
    :cond_5
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;->val$e:Lae/com/sun/xml/bind/v2/model/core/Element;

    check-cast v5, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;->getContentType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v5

    const-string v7, "type"

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V
    invoke-static {v6, v1, v5, v7}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$2100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V

    goto :goto_1
.end method
