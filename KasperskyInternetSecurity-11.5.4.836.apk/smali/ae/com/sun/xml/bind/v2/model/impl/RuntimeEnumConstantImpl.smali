.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumConstantImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;
.source "RuntimeEnumConstantImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;Ljava/lang/String;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;)V
    .locals 0
    .param p1, "owner"    # Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lexical"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p4, "next":Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;Ljava/lang/String;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;)V

    .line 55
    return-void
.end method
