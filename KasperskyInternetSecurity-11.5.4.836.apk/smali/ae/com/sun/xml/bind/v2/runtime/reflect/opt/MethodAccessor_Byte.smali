.class public Lae/com/sun/xml/bind/v2/runtime/reflect/opt/MethodAccessor_Byte;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "MethodAccessor_Byte.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Ljava/lang/Byte;

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    .line 56
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "bean":Ljava/lang/Object;
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->get_byte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "bean":Ljava/lang/Object;
    if-nez p2, :cond_0

    sget-byte v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_byte:B

    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->set_byte(B)V

    .line 64
    return-void

    .line 63
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_0
.end method
