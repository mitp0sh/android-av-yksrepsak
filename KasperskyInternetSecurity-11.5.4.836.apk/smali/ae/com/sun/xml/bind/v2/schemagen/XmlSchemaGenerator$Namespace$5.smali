.class Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$5;
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

.field final synthetic val$wc:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/WildcardMode;)V
    .locals 0

    .prologue
    .line 1307
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$5;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.5;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$5;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$5;->val$wc:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Term;-><init>()V

    return-void
.end method


# virtual methods
.method protected write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V
    .locals 3
    .param p1, "parent"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;
    .param p2, "isOptional"    # Z
    .param p3, "repeated"    # Z

    .prologue
    .line 1309
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$5;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace.5;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;->any()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Any;

    move-result-object v0

    .line 1310
    .local v0, "any":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Any;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$5;->val$wc:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getProcessContentsModeName(Lae/com/sun/xml/bind/v2/model/core/WildcardMode;)Ljava/lang/String;
    invoke-static {v2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$2200(Lae/com/sun/xml/bind/v2/model/core/WildcardMode;)Ljava/lang/String;

    move-result-object v1

    .line 1311
    .local v1, "pcmode":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Any;->processContents(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Wildcard;

    .line 1312
    :cond_0
    const-string v2, "##other"

    invoke-interface {v0, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Any;->namespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Wildcard;

    .line 1313
    invoke-virtual {p0, v0, p2, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$5;->writeOccurs(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;ZZ)V

    .line 1314
    return-void
.end method
