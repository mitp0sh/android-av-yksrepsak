.class Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;
.source "RuntimeElementInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RuntimePropertyImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)V

    return-void
.end method


# virtual methods
.method public elementOnlyContent()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->adapterType:Ljava/lang/Class;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->access$000(Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->JAXB_ELEMENT_VALUE:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->JAXB_ELEMENT_VALUE:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->defaultType:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->adapterType:Ljava/lang/Class;
    invoke-static {v2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->access$000(Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->adapt(Ljava/lang/Class;Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    goto :goto_0
.end method

.method public getIndividualType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;->this$0:Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->getContentType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;->getType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 97
    const-class v0, Ljava/util/Collection;

    return-object v0
.end method

.method public bridge synthetic getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;->getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    .locals 0

    .prologue
    .line 122
    return-object p0
.end method

.method public bridge synthetic getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;->getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1

    .prologue
    .line 126
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->createTransducer(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;)Lae/com/sun/xml/bind/v2/runtime/Transducer;

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
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ref()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;->ref()Ljava/util/List;

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
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;->ref()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
