.class public Lae/com/sun/xml/bind/v2/runtime/reflect/opt/MethodAccessor_Short;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "MethodAccessor_Short.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Ljava/lang/Short;

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    .line 58
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "bean":Ljava/lang/Object;
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->get_short()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "bean":Ljava/lang/Object;
    if-nez p2, :cond_0

    sget-short v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_short:S

    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->set_short(S)V

    .line 66
    return-void

    .line 65
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0
.end method
