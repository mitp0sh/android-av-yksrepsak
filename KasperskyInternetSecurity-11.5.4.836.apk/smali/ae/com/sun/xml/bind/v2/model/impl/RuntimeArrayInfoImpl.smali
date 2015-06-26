.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeArrayInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;
.source "RuntimeArrayInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;"
    }
.end annotation


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Class;)V
    .locals 0
    .param p1, "builder"    # Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p3, "arrayType"    # Ljava/lang/Class;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)V

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic getItemType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeArrayInfoImpl;->getItemType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getItemType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->getItemType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->getType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeArrayInfoImpl;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
