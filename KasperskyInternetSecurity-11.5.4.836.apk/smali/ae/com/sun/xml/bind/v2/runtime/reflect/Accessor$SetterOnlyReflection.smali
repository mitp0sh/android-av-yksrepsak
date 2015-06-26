.class public Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$SetterOnlyReflection;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;
.source "Accessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetterOnlyReflection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection",
        "<TBeanT;TValueT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "setter"    # Ljava/lang/reflect/Method;

    .prologue
    .line 432
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$SetterOnlyReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$SetterOnlyReflection<TBeanT;TValueT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 433
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)TValueT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$SetterOnlyReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$SetterOnlyReflection<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    new-instance v0, Lae/com/sun/xml/bind/api/AccessorException;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->NO_GETTER:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$SetterOnlyReflection;->setter:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
