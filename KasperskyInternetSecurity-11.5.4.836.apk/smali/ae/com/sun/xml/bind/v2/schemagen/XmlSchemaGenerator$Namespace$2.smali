.class Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;
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

.field final synthetic val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/TypeRef;)V
    .locals 0

    .prologue
    .line 1069
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.2;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Term;-><init>()V

    return-void
.end method


# virtual methods
.method protected write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V
    .locals 11
    .param p1, "parent"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;
    .param p2, "isOptional"    # Z
    .param p3, "repeated"    # Z

    .prologue
    .line 1071
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.2;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;->element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v1

    .line 1073
    .local v1, "e":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v7

    .line 1075
    .local v7, "tn":Ljavax/xml/namespace/QName;
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    move-result-object v4

    .line 1076
    .local v4, "propInfo":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    if-nez v4, :cond_2

    const/4 v3, 0x0

    .line 1078
    .local v3, "parentInfo":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    :goto_0
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->canBeDirectElementRef(Lae/com/sun/xml/bind/v2/model/core/TypeRef;Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/core/TypeInfo;)Z
    invoke-static {v8, v9, v7, v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$2000(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/TypeRef;Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/core/TypeInfo;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1079
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v8

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->isSimpleType()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v8

    instance-of v8, v8, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iget-object v8, v8, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->collisionChecker:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;
    invoke-static {v8}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1600(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    move-result-object v9

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v8

    check-cast v8, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    invoke-virtual {v9, v8}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->findDuplicate(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1080
    new-instance v8, Ljavax/xml/namespace/QName;

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iget-object v9, v9, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->ref(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    .line 1107
    :goto_1
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->isNillable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1108
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->nillable(Z)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;

    .line 1110
    :cond_0
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getDefaultValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1111
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getDefaultValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->_default(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/FixedOrDefault;

    .line 1112
    :cond_1
    invoke-virtual {p0, v1, p2, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->writeOccurs(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;ZZ)V

    .line 1113
    return-void

    .line 1076
    .end local v3    # "parentInfo":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    :cond_2
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->parent()Lae/com/sun/xml/bind/v2/model/core/TypeInfo;

    move-result-object v3

    goto :goto_0

    .line 1083
    .restart local v3    # "parentInfo":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    :cond_3
    const/4 v2, 0x0

    .line 1084
    .local v2, "elemName":Ljavax/xml/namespace/QName;
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v8

    instance-of v8, v8, Lae/com/sun/xml/bind/v2/model/core/Element;

    if-eqz v8, :cond_4

    .line 1085
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v6

    check-cast v6, Lae/com/sun/xml/bind/v2/model/core/Element;

    .line 1086
    .local v6, "te":Lae/com/sun/xml/bind/v2/model/core/Element;
    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/core/Element;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v2

    .line 1089
    .end local v6    # "te":Lae/com/sun/xml/bind/v2/model/core/Element;
    :cond_4
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->ref()Ljava/util/Collection;

    move-result-object v5

    .line 1090
    .local v5, "refs":Ljava/util/Collection;
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v2, :cond_6

    .line 1091
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 1092
    .local v0, "cImpl":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1093
    new-instance v8, Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->ref(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    goto :goto_1

    .line 1095
    :cond_5
    new-instance v8, Ljavax/xml/namespace/QName;

    const-string v9, ""

    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->ref(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    goto :goto_1

    .line 1098
    .end local v0    # "cImpl":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    :cond_6
    invoke-interface {v1, v7}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->ref(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    goto/16 :goto_1

    .line 1102
    .end local v2    # "elemName":Ljavax/xml/namespace/QName;
    .end local v5    # "refs":Ljava/util/Collection;
    :cond_7
    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    .line 1103
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->val$t:Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    const-string v10, "type"

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;Ljava/lang/String;)V
    invoke-static {v8, v1, v9, v10}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$1800(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;Ljava/lang/String;)V

    .line 1104
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;
    invoke-static {v8}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$1900(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-result-object v8

    invoke-virtual {v8, v1, v7}, Lae/com/sun/xml/bind/v2/schemagen/Form;->writeForm(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;Ljavax/xml/namespace/QName;)V

    goto/16 :goto_1
.end method
