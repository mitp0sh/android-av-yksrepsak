.class Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;
.super Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementDeclaration;
.source "XmlSchemaGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementWithType"
.end annotation


# instance fields
.field private final nillable:Z

.field final synthetic this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

.field private final type:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;ZLae/com/sun/xml/bind/v2/model/core/NonElement;)V
    .locals 0
    .param p2, "nillable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 1436
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace.ElementWithType;"
    .local p3, "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementDeclaration;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)V

    .line 1437
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 1438
    iput-boolean p2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;->nillable:Z

    .line 1439
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1454
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace.ElementWithType;"
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 1458
    :goto_0
    return v1

    .line 1455
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1457
    check-cast v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;

    .line 1458
    .local v0, "that":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace.ElementWithType;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    iget-object v2, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1462
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace.ElementWithType;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;)V
    .locals 4
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "schema"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;

    .prologue
    .line 1442
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace.ElementWithType;"
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelElement;

    move-result-object v1

    invoke-interface {v1, p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelElement;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelElement;

    move-result-object v0

    .line 1443
    .local v0, "e":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelElement;
    iget-boolean v1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;->nillable:Z

    if-eqz v1, :cond_0

    .line 1444
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelElement;->nillable(Z)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;

    .line 1445
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    if-eqz v1, :cond_1

    .line 1446
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    const-string v3, "type"

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$2100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V

    .line 1450
    :goto_0
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelElement;->commit()V

    .line 1451
    return-void

    .line 1448
    :cond_1
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelElement;->complexType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    goto :goto_0
.end method
