.class public final Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;
.source "Accessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadOnlyFieldReflection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection",
        "<TBeanT;TValueT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 298
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection<TBeanT;TValueT;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;-><init>(Ljava/lang/reflect/Field;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Z)V
    .locals 0
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "supressAccessorWarnings"    # Z

    .prologue
    .line 295
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection<TBeanT;TValueT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 296
    return-void
.end method


# virtual methods
.method public optimize(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 0
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TValueT;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection<TBeanT;TValueT;>;"
    return-object p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;TValueT;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "value":Ljava/lang/Object;, "TValueT;"
    return-void
.end method
