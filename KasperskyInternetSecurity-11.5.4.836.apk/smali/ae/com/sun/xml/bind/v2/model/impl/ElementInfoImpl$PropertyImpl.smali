.class public Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;
.super Ljava/lang/Object;
.source "ElementInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;
.implements Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;
.implements Lae/com/sun/xml/bind/v2/model/core/TypeRef;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PropertyImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo",
        "<TT;TC;>;",
        "Lae/com/sun/xml/bind/v2/model/core/TypeRef",
        "<TT;TC;>;",
        "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)V
    .locals 0

    .prologue
    .line 135
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    const-string v0, "JAXBElement#value"

    return-object v0
.end method

.method public getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$400(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$200(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Lae/javax/xml/bind/annotation/XmlElementDecl;

    move-result-object v1

    invoke-interface {v1}, Lae/javax/xml/bind/annotation/XmlElementDecl;->defaultValue()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "v":Ljava/lang/String;
    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 178
    .end local v0    # "v":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getExpectedMimeType()Ljavax/activation/MimeType;
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->expectedMimeType:Ljavax/activation/MimeType;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$600(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Ljavax/activation/MimeType;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    const-string v0, "value"

    return-object v0
.end method

.method public getSchemaType()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 225
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->schemaType:Ljavax/xml/namespace/QName;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$700(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    return-object p0
.end method

.method public getTagName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->tagName:Ljavax/xml/namespace/QName;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$100(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->contentType:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$000(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/TypeRef",
            "<TT;TC;>;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXmlName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->tagName:Ljavax/xml/namespace/QName;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$100(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->method:Ljava/lang/Object;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$900(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public id()Lae/com/sun/xml/bind/v2/model/core/ID;
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->id:Lae/com/sun/xml/bind/v2/model/core/ID;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$500(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v0

    return-object v0
.end method

.method public inlineBinaryData()Z
    .locals 1

    .prologue
    .line 229
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->inlineBinary:Z
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$800(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Z

    move-result v0

    return v0
.end method

.method public isCollection()Z
    .locals 1

    .prologue
    .line 194
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->isCollection:Z
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$300(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Z

    move-result v0

    return v0
.end method

.method public isCollectionNillable()Z
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    const/4 v0, 0x1

    return v0
.end method

.method public isCollectionRequired()Z
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    const/4 v0, 0x0

    return v0
.end method

.method public isNillable()Z
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    const/4 v0, 0x1

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    const/4 v0, 0x1

    return v0
.end method

.method public isValueList()Z
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->isCollection:Z
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$300(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Z

    move-result v0

    return v0
.end method

.method public kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 209
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method public bridge synthetic parent()Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->parent()Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    return-object v0
.end method

.method public readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->method:Ljava/lang/Object;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$900(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    invoke-interface {v0, p1, v1, v2}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ref()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->ref()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ref()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>.PropertyImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->contentType:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->access$000(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
